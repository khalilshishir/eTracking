package com.org.issue

import com.uma.Person

class IssueAreaCategory {
    static mapping = {
        table("T02021")
    }

    String issueAreaCatName
    String issueAreaDesc
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
