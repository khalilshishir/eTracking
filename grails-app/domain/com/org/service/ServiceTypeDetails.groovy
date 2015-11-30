package com.org.service

import com.uma.Person

class ServiceTypeDetails {
  static mapping = {
    table("T02019")
  }

  ServiceItemDetails serviceItemDetails
  ServiceType serviceType
  Date startDate
  Date endDate
  String amcAgreementNo
  String slaAgreementNo
  String pmScheduleNo
  boolean serviceTypeStatus=Boolean.TRUE

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