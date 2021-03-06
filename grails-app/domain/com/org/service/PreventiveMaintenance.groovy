package com.org.service

import com.uma.Person

class PreventiveMaintenance {
  static mapping = {
    table("T02020")
  }

  ServiceTypeDetails serviceTypeDetails
  String startDate
  String endDate
  boolean serviceTypeStatus
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
    searchKey nullable:true
    remarks nullable:true
    updateUser nullable: true
    updateDate nullable: true
    updateMachine nullable: true
    updateIp nullable: true
  }
}