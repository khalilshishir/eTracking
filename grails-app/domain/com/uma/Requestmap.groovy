package com.uma

class Requestmap {

	String url
	String configAttribute

    String featureName
    String moduleName

    static mapping = {
        cache true
        table('REQUEST_MAP')
        version(false)
    }

	static constraints = {
		url blank: false, unique: true
		configAttribute blank: false
        featureName nullable: true, blank: true
        moduleName nullable: true, blank: true

    }
}
