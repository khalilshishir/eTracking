package com.uma



class Person {

	transient springSecurityService

	String username
	String name
	String email
	String mobile
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired


	static constraints = {
		username blank: false, unique: true
		password blank: false
		email(email: true)
		mobile(nullable: true)
	}

    static mapping = {
        table('PERSON')
        password column: '`password`'
        version(false)
    }


	Set<Authority> getAuthorities() {
		PersonAuthority.findAllByPerson(this).collect { it.authority } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
    String toString(){
        return username
    }
}
