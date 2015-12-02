package com.org.issue

import com.uma.Person

class SeverityDetails {


    static mapping = {
        table("T02024")
    }
    IssueAreaCategory issueAreaCat
    IssueArea issueArea
    int severityLevel
    SeverityMaster severity

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