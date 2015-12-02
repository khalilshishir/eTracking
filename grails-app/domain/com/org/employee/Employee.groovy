package com.org.employee

import com.uma.Person

class Employee {

    static  mapping = {
        table("T02027")
    }
    String empCode
    String empFirstName
    String empLastName
    String empMiddleName
    String empSurName
    String address
    Department dept
    Designation desig
    Employee reportEmp
    String empImage
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

    String searchKey
    String remarks
    boolean isActive=Boolean.TRUE
    Date inactiveDate

    Person insertUser
    Date insertDate = new Date()
    String insertMachine
    String insertIp
    Person updateUser
    Date updateDate
    String updateMachine
    String updateIp

    static constraints = {

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
        inactiveDate nullable: true
        empFirstName nullable: true
        empLastName nullable: true
        empMiddleName nullable: true
        empSurName nullable: true

        address nullable: true
        reportEmp nullable: true
        empImage nullable: true

        searchKey nullable: true
        remarks nullable: true
        updateUser nullable: true
        updateDate nullable: true
        updateMachine nullable: true
        updateIp nullable: true
    }
}
