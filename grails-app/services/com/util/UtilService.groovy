package com.util

import org.springframework.transaction.annotation.Transactional
import groovy.sql.Sql
import org.springframework.jdbc.datasource.TransactionAwareDataSourceProxy

class UtilService {
    TransactionAwareDataSourceProxy dataSource

    @Transactional(readOnly = true)
    public void getDivisions() {
        try {
            String query = """SELECT * FROM t02003  where  length(geo_code)=2"""

            Sql db = new Sql(dataSource)
            db.executeUpdate(query)

        } catch (Exception ex) {
            log.error(ex.getMessage())
        }
    }
}
