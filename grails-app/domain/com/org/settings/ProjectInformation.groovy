package com.org.settings

import com.org.customer.CustomerCompany
import com.org.customer.CustomerCountry
import com.org.customer.CustomerGeographicalLocation
import com.uma.Person

class ProjectInformation {
    static mapping = {
        table("T02015")
    }
    String projectName

    CustomerCompany company
    String address1
    String postalCode
    CustomerGeographicalLocation geoLoc
    String divCode
    String disCode
    String thanaCode
    String phoneNo
    String extension
    String mobileNo
    String faxNo
    String email
    String website
    CustomerCountry country
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
        company nullable: true
        address1 nullable: true
        postalCode nullable: true
        geoLoc nullable: true
        divCode nullable: true
        disCode nullable: true
        thanaCode nullable: true
        phoneNo nullable: true
        extension nullable: true
        mobileNo nullable: true
        faxNo nullable: true
        email nullable: true
        website nullable: true
        searchKey nullable: true
        remarks nullable: true

        searchKey nullable: true
        remarks nullable: true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true
    }
}
