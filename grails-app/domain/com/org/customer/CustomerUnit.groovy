package com.org.customer

import com.org.settings.ProjectInformation
import com.uma.Person

class CustomerUnit {
    static  mapping = {
        table("T02006")
    }

        String unitName
        int unitLevel
        CustomerUnit unitRef
        CustomerCompany customerCompany
        ProjectInformation project

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
        project nullable: true
        customerCompany nullable: true
        unitRef nullable: true
        unitLevel nullable: true
        searchKey nullable: true
        remarks nullable: true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true
    }
}
