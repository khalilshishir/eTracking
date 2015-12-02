package com.org.issue

import com.org.customer.CustomerCompany
import com.org.settings.ProjectInformation
import com.uma.Person

class SeverityMaster {

    static mapping = {
        table("T02023")
        severityDetails cascade: 'all'

    }

    String severityCode
    CustomerCompany company
    ProjectInformation project
    Date effectDateFrom
    Date effectDateTo
    boolean severityStatus=Boolean.TRUE
    static hasMany = [severityDetails: SeverityDetails]

    String searchKey
    String remarks
    Person insertUser
    Date insertDate = new Date()
    String insertMachine
    String insertIp
    Person updateUser
    Date updateDate
    String updateMachine
    String updateIp

    static constraints = {
        searchKey nullable:true
        remarks nullable:true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true
    }
}