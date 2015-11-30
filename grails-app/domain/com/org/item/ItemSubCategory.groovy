package com.org.item

import com.uma.Person

class ItemSubCategory {
    static mapping = {
        table("T02010")
    }

    String subCatName
    String subCatDesc
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
        subCatDesc nullable: true
        remarks nullable: true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true
    }
}