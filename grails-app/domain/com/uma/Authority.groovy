package com.uma

class Authority {

	String authority

    String name
    static mapping = {
        table('AUTHORITY')
        cache true
        version(false)
    }

	static constraints = {
		authority blank: false, unique: true
	}
}
