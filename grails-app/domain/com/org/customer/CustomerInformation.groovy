package com.org.customer

import com.org.settings.ProjectInformation
import com.uma.Person

class CustomerInformation {
    static  mapping = {
        table("T02007")
    }
    String custCode
    String custName
    CustomerCompany company
    String contactPerson
    String jobTitle
    String address1
    String address2
    String postalCode
    String divCode
    String disCode
    String thanaCode
    String geoLoc
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
    boolean isActive=Boolean.TRUE
    Date inactiveDate

    ProjectInformation project
    CustomerZone zone
    CustomerUnit unit

    String flex1
    String flex2
    String flex3
    String flex4

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
        company nullable: true
         jobTitle nullable: true
         address1 nullable: true
         address2 nullable: true
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
        country nullable: true
        searchKey nullable: true
        custGroup nullable: true
        remarks nullable: true
        inactiveDate nullable: true
        flex1 nullable: true
        flex2 nullable: true
        flex3 nullable: true
        flex4 nullable: true

        project nullable: true
        zone nullable: true
        unit nullable: true

        searchKey nullable: true
        remarks nullable: true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true
    }
}
