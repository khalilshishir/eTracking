package com.org.item

import com.uma.Person

class ItemInfo {
    static mapping = {
        table("T02014")
    }
    String itemNo
    String itemDesc1
    String itemDesc2
    ItemBrand brand
    int itemType
    ItemCategory cat
    ItemSubCategory itemSubCat
    ItemSeries series
    boolean itemStatus=Boolean.TRUE
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
        series nullable: true
        itemSubCat nullable: true
        itemType nullable: true
        cat nullable: true
        brand nullable: true
        itemDesc1 nullable: true
        itemDesc2 nullable: true
    }
}