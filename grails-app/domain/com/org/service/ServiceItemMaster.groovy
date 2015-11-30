package com.org.service

import com.org.customer.CustomerCompany
import com.org.customer.CustomerInformation
import com.uma.Person

class ServiceItemMaster {
  static mapping = {
    table("T02017")
    serviceItemDetails cascade: 'all'

  }

  CustomerCompany company
  CustomerInformation customer
  String searchKey
  String remarks
  static hasMany = [serviceItemDetails: ServiceItemDetails]

  Person insertUser
  Date insertDate = new Date()
  String insertMachine
  String insertIp
  Person updateUser
  Date updateDate
  String updateMachine
  String updateIp


  static constraints = {
    searchKey nullable:true
    remarks nullable:true
    updateUser nullable: true
    updateDate nullable: true
    updateMachine nullable: true
    updateIp nullable: true
  }
}