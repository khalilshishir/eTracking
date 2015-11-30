package com.org.settings

import com.uma.Person

class Lookup {
    static mapping = {
        table("T2001")
    }

    String caseKeyword
    int caseReturnVal
    String caseDesc

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
        searchKey nullable: true
        remarks nullable: true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true
    }
}
