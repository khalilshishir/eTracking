package com.org.customer

import com.uma.Person

class CustomerCountry {
    static  mapping = {
        table("T02002")
    }

    String countryCode
    String countryName


    Person insertUser
    Date insertDate = new Date()
    String insertMachine
    String insertIp
    Person updateUser
    Date updateDate
    String updateMachine
    String updateIp

    static constraints = {
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true

    }
}
