package com.org.customer

import com.uma.Person

class CustomerCompany {
    static  mapping = {
        table("T02004")
    }
    String companyCode
    String companyName
    String contactPerson
    String jobTitle
    String address
    String address2
    String postalCode
    CustomerGeographicalLocation geoLoc
    String divCode
    String distCode
    String thanaCode
    String phoneNo
    String extension
    String mobileNo
    String faxNo
    String email
    String website
    CustomerCountry country
    String searchKey
    CustomerGroup custGroup
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
        contactPerson nullable: true
         jobTitle nullable: true
         address nullable: true
         address2 nullable: true
         postalCode nullable: true
         divCode nullable: true
         distCode nullable: true
         thanaCode nullable: true
         phoneNo nullable: true
         extension nullable: true
         mobileNo nullable: true
         faxNo nullable: true
         email email: true,nullable: true
         website nullable: true
         searchKey nullable: true
         remarks nullable: true

        geoLoc nullable: true
        country nullable: true
        custGroup nullable: true


        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true

    }
}
