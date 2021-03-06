package com.org.customer

import com.uma.Person

class CustomerGroup {
                    static mapping = {
                        table("T02001")
                    }

                    String custGroupName
                    String companyName
                    String remarks
                    int customerType

                    Person insertUser
                    Date insertDate = new Date()
                    String insertMachine
                    String insertIp
                    Person updateUser
                    Date updateDate
                    String updateMachine
                    String updateIp


                    static constraints = {
                        customerType nullable:true
                        remarks nullable:true
                        updateUser nullable: true
                        updateDate nullable: true
                        updateMachine nullable: true
                        updateIp nullable: true
                    }
}
