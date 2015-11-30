package com.org.item

import com.uma.Person

class ItemBrand {
    static mapping = {
        table("T02008")
    }

    String brandName
    String brandDesc
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
        brandDesc nullable: true
        searchKey nullable: true
        remarks nullable: true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true

    }
}
