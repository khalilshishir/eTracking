package com.org.service

import com.uma.Person

class ServiceType {
  static mapping = {
    table("T02016")
  }

  String serviceTypeIndicator
  String serviceTypeDescription
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