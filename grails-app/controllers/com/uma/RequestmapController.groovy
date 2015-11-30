package com.uma

import groovy.sql.GroovyRowResult
import groovy.sql.Sql
import com.uma.*

import javax.sql.DataSource

class RequestmapController{
    DataSource dataSource
    public static final int REQUEST_MAP_ROOT = -2
    public static final int REQUEST_MAP_LOGOUT = -3
    public static final String EMPTY_SPACE = ''
    public static final String COMA = ","
    public static final String UNDERSCORE = "_"

    def springSecurityService


    def index() {
        render(view:'index')
//        def id=RequestMap.get(session["rollId"])
//        params.role=id
    }

    def list(){
        def roleInstance=Authority.read(params.roleId)
//        session["rollId"]=params.roleId
        if(roleInstance){
            def assignedFeature=getAssignedFeatureByRole(roleInstance.authority)
            def availableFeature=getAvailableFeatureByRole(roleInstance.authority)
            render(view:'index',model: [assignedFeature:assignedFeature,availableFeature:availableFeature,role:params.roleId])

        }else{
            render(view:'index',model: [msg:'Select a role'])

        }
    }

    def update(){
        println(params)
        def roleInstance=Authority.read(params.roleId)
        if(roleInstance){
            List<Long> requestMapIds = []
            if (params.assignedFeatureIds.toString().length() > 0) {
                List<String> lstTemp = params.assignedFeatureIds.split(UNDERSCORE)
                for (int i = 0; i < lstTemp.size(); i++) {
                    requestMapIds << lstTemp[i].toLong()
                }
            }
            updateRequestMap(requestMapIds, roleInstance.authority)
            springSecurityService.clearCachedRequestmaps();
            def assignedFeature=getAssignedFeatureByRole(roleInstance.authority)
            def availableFeature=getAvailableFeatureByRole(roleInstance.authority)
            render(view:'index',model: [assignedFeature:assignedFeature,availableFeature:availableFeature,role:params.roleId])

        }else{
            render(view:'index',model: [msg:'Select a role'])

        }

    }
    public List<GroovyRowResult> getAssignedFeatureByRole(String roleAuthority) {
        Sql sql = new Sql(dataSource)

        String query = """
        SELECT id , feature_name
        FROM request_map
            WHERE

            config_attribute LIKE '%,${roleAuthority},%'
            OR
            config_attribute LIKE '${roleAuthority},%'
            OR
            config_attribute LIKE '%,${roleAuthority}'
            OR
            config_attribute =  '${roleAuthority}'

    """

        List<GroovyRowResult> lstAssignedFeatures = sql.rows(query)
        return lstAssignedFeatures
    }
    public List<GroovyRowResult> getAvailableFeatureByRole(String roleAuthority) {
        Sql sql = new Sql(dataSource)

        String query = """
            SELECT id, feature_name
            FROM request_map
            WHERE id NOT IN (
                SELECT id
                FROM request_map
                WHERE
                config_attribute LIKE '%,${roleAuthority},%'
                OR
                config_attribute LIKE '${roleAuthority},%'
                OR
                config_attribute LIKE '%,${roleAuthority}'
                OR
                config_attribute =  '${roleAuthority}'
            )
            AND feature_name IS NOT NULL
            """

        List<GroovyRowResult> lstAvailableFeatures = sql.rows(query)
        return lstAvailableFeatures
    }

    /// for update
    public boolean updateRequestMap(def lstAssignedFeatures, def roleAuthority) {

        Sql sql = new Sql(dataSource)
        String query = """
        SELECT id
        FROM request_map
            WHERE

            config_attribute LIKE '%,${roleAuthority},%'
            OR
            config_attribute LIKE '${roleAuthority},%'
            OR
            config_attribute LIKE '%,${roleAuthority}'
            OR
            config_attribute =  '${roleAuthority}'

    """

        // First get the current assigned role
        List<GroovyRowResult> result = sql.rows(query)

        List<Long> lstOldFeatures = []
        for (int i = 0; i < result.size(); i++) {
            lstOldFeatures << result[i].id
        }

        // Find the common elements
        List lstCommonFeatures = lstOldFeatures.intersect(lstAssignedFeatures)

        List<Long> lstToRemove = (List<Long>) lstOldFeatures.clone()
        // Get the IDs of requestMap where current ROLE has lost the RIGHT
        lstToRemove.removeAll(lstCommonFeatures)      // i.e. ToBeRemoved=(Existing Feature) - (Common Features)
        // Get the IDs of requestMap where current ROLE has gain the RIGHT
        List<Long> lstToAdd = (List<Long>) lstAssignedFeatures.clone()
        lstToAdd.removeAll(lstCommonFeatures)        // i.e. ToBeAdded=(All assigned Feature) - (Common Features)

        // If something to add then execute sql
        if (lstToAdd.size() > 0) {
            def idsForAdd = buildCommaSeparatedStringOfIds(lstToAdd)
            String queryToAdd = """
        UPDATE request_map
        SET config_attribute =
            CASE WHEN config_attribute IS NULL THEN '${roleAuthority}'
            WHEN config_attribute ='' THEN '${roleAuthority}'
            ELSE CONCAT(config_attribute,',${roleAuthority}')
            END
        WHERE id IN (${idsForAdd})
        """
            sql.executeUpdate(queryToAdd)

        }

        // If something to remove then execute sql
        if (lstToRemove.size() > 0) {
            def idsForRemove = buildCommaSeparatedStringOfIds(lstToRemove)
            String queryToRemove = """
        UPDATE request_map
        SET config_attribute =
            CASE WHEN config_attribute LIKE '%${roleAuthority},%' THEN
                REPLACE(config_attribute, '${roleAuthority},' , '')
            WHEN config_attribute LIKE '%,${roleAuthority}%' THEN
                REPLACE(config_attribute, ',${roleAuthority}' , '')
            ELSE NULL
            END
        WHERE id IN (${idsForRemove})
        """
            sql.executeUpdate(queryToRemove)
        }
        return true
    }
    def buildCommaSeparatedStringOfIds(def lst) {
        String strIds = EMPTY_SPACE
        for (int i = 0; i < lst.size(); i++) {
            strIds = strIds + lst[i].toString()
            if ((i + 1) < lst.size()) strIds = strIds + COMA
        }
        return strIds
    }

}
