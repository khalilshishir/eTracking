package com.org.employee

import com.uma.Person

class Designation {

    static mapping = {
        table("T02025")
    }

    String desigName
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