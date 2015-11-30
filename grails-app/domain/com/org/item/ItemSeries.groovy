package com.org.item

import com.uma.Person

class ItemSeries {
    static mapping = {
        table("T02011")
    }

    String seriesName
    String seriesDesc
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
        seriesDesc nullable: true
        remarks nullable: true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true
    }
}