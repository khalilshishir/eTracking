package com.org.service

import com.org.item.ItemInfo
import com.uma.Person

class ServiceItemDetails {
  static mapping = {
    table("T02018")
  }


  ServiceItemMaster serviceItemMaster
  ItemInfo item
  String serialNo
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