import com.uma.Authority
import com.uma.Person
import com.uma.PersonAuthority
import com.uma.Requestmap

import javax.sql.DataSource

class BootStrap {
    DataSource dataSource
    private Person adminUser
    private Person adminUser2
    def springSecurityService
//    private Role role1
//    private AppUserRole appUserRole1


    def init = { servletContext ->
        insertRole()
        insetUser()
        insertUserRole()
        createRequestMap()

//        insertToDivision()

    }
/*   void insertToDivision(){
    if(!Division.findById(01)){
        new Division(id: 01, divId: '03',DIV_NAME: "Barishal",DIV_NAME_BN: '????',CREATED_BY: 1,CREATED_DATE: new Date(),UPDATED_BY: 1,UPDATED_DATE: new Date()).save(flush: true)
    }

    }*/





    def insertRole() {
        Authority auth1=new Authority(authority: 'ROLE_DEFAULT',name: 'Default role')
        Authority auth2=new Authority(authority: 'ROLE_ADMIN',name: 'Admin')
        Authority auth3=new Authority(authority: 'ROLE_PROJECT_DIRECTOR',name: 'project Director')
        Authority auth4=new Authority(authority: 'ROLE_DIRECTOR',name: 'Director')
        Authority auth5=new Authority(authority: 'ROLE_PROJECT_MANAGER',name: 'project Manager')
        Authority auth6=new Authority(authority: 'ROLE_ACCOUNTANT',name: 'Accountant')
        auth1.save(flush: true)
        auth2.save(flush: true)
        auth3.save(flush: true)
        auth4.save(flush: true)
        auth5.save(flush: true)
        auth6.save(flush: true)

    }

    def insetUser() {
        adminUser = new Person(accountExpired: false, accountLocked: false, enabled: true, name: 'M.Khalil',email: 'admin@yahoo.com',mobile: '01930270050', password: 'admin', passwordExpired: false, username: 'admin',lastLoginTime: new Date())
        adminUser.save(flush: true)

    }

    def insertUserRole() {
        Authority adminRole = Authority.findByAuthority('ROLE_ADMIN')
        Person admin = Person.findByUsername('admin')

        PersonAuthority userRole1=new PersonAuthority(person: admin, authority: adminRole)
        userRole1.save(flush: true);


    }


    def createRequestMap() {


        //.......................................for index page.................................
        Requestmap requestMapLogin1 = new Requestmap( url: '/index', configAttribute: 'permitAll');
        Requestmap requestMapLogin2 = new Requestmap( url: '/index.gsp', configAttribute: 'permitAll');
        Requestmap requestMapLogin3 = new Requestmap( url: '/', configAttribute: 'IS_AUTHENTICATED_FULLY');

        //.......................................for Login/out page.................................
        Requestmap requestMapLogin4 = new Requestmap( url: '/logout/**', configAttribute: 'permitAll',);
        Requestmap requestMapLogin5 = new Requestmap( url: '/logout', configAttribute: 'permitAll',);
        Requestmap requestMapLogin6 = new Requestmap( url: '/logout.*', configAttribute: 'permitAll',);
        Requestmap requestMapLogin7 = new Requestmap( url: '/login/**', configAttribute: 'permitAll');
        Requestmap requestMapLogin8 = new Requestmap( url: '/login', configAttribute: 'permitAll');
        Requestmap requestMapLogin9 = new Requestmap( url: '/login.*', configAttribute: 'permitAll');

        //.......................................for user  page.................................
        Requestmap requestMapLogin10 = new Requestmap( url: '/person/**', configAttribute: 'ROLE_ADMIN', featureName: 'all about user');
//        Requestmap requestMapLogin11= new Requestmap( url: '/personAuthority*', configAttribute: 'ROLE_ADMIN', featureName: 'all about role assign');
        Requestmap requestMapLogin12= new Requestmap( url: '/authority/**', configAttribute: 'ROLE_ADMIN', featureName: 'all about role');
        Requestmap requestMapLogin13 = new Requestmap( url: '/requestMap/**', configAttribute: 'ROLE_ADMIN', featureName: 'all about role right mapping');
//        Requestmap requestMapLogin14 = new Requestmap( url: '/requestmap', configAttribute: 'ROLE_ADMIN', featureName: 'all about role right mapping');
//        Requestmap requestMapLogin15 = new Requestmap( url: '/requestmap/*', configAttribute: 'ROLE_ADMIN', featureName: 'all about role right mapping');
//        Requestmap requestMapLogin16 = new Requestmap( url: '/requestmap/*/*', configAttribute: 'ROLE_ADMIN', featureName: 'all about role right mapping');

        //..........................................role for Application.............................

        Requestmap requestMapLogin100 = new Requestmap( url: '/customerGroup/create', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Group Create',moduleName: 'CUST');
        Requestmap requestMapLogin10001 = new Requestmap( url: '/customerGroup/edit', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Group Edit',moduleName: 'CUST');
        Requestmap requestMapLogin10002= new Requestmap( url: '/customerGroup/update', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Group Update',moduleName: 'CUST');
        Requestmap requestMapLogin10003= new Requestmap( url: '/customerGroup/delete', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Group Delete',moduleName: 'CUST');
        Requestmap requestMapLogin10004= new Requestmap( url: '/customerGroup/index', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Group list',moduleName: 'CUST');
        Requestmap requestMapLogin10005= new Requestmap( url: '/customerGroup/show', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Group show',moduleName: 'CUST');

        Requestmap requestMapLogin101= new Requestmap( url: '/customerCompany/**', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Company',moduleName: 'CUST');
        Requestmap requestMapLogin102 = new Requestmap( url: '/customerCountry/**', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Country',moduleName: 'CUST');
        Requestmap requestMapLogin103 = new Requestmap( url: '/customerInformation/**', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Information',moduleName: 'CUST');
        Requestmap requestMapLogin104 = new Requestmap( url: '/customerUnit/**', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Unit',moduleName: 'CUST');
        Requestmap requestMapLogin105 = new Requestmap( url: '/customerZone/**', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Zone',moduleName: 'CUST');
        Requestmap requestMapLogin106 = new Requestmap( url: '/customerGeographicalLocation/**', configAttribute: 'ROLE_ADMIN', featureName: 'Customer Geographical Location',moduleName: 'CUST');

        //            ....................................for default....................................//
        Requestmap requestMapLogin17 = new Requestmap(url: '/timeline', configAttribute: 'permitAll')
        Requestmap requestMapLogin18 = new Requestmap( url: '/post/followAjax', configAttribute: 'permitAll')
        Requestmap requestMapLogin19 = new Requestmap( url: '/post/addPostAjax', configAttribute: 'IS_AUTHENTICATED_FULLY')
        Requestmap requestMapLogin20 = new Requestmap( url: '*', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY')
        Requestmap requestMapLogin21 = new Requestmap( url: '/**', configAttribute: 'IS_AUTHENTICATED_FULLY')
        Requestmap requestMapLogin22 = new Requestmap( url: '/**/images/**', configAttribute: 'permitAll')
        Requestmap requestMapLogin23 = new Requestmap( url: '/**/css/**', configAttribute: 'permitAll')
        Requestmap requestMapLogin24 = new Requestmap( url: '/**/js/**', configAttribute: 'permitAll')
        Requestmap requestMapLogin25 = new Requestmap( url: '/assets/**', configAttribute: 'permitAll')
        Requestmap requestMapLogin26 = new Requestmap( url: '/**/favicon.ico', configAttribute: 'permitAll')



        requestMapLogin1.save(flush: true);
        requestMapLogin2.save(flush: true);
        requestMapLogin3.save(flush: true);
        requestMapLogin4.save(flush: true);
        requestMapLogin5.save(flush: true);
        requestMapLogin6.save(flush: true);
        requestMapLogin7.save(flush: true);
        requestMapLogin8.save(flush: true);
        requestMapLogin9.save(flush: true);
        requestMapLogin10.save(flush: true);
        requestMapLogin12.save(flush: true);
        requestMapLogin13.save(flush: true);
        requestMapLogin17.save(flush: true);
        requestMapLogin18.save(flush: true);
        requestMapLogin19.save(flush: true);
        requestMapLogin20.save(flush: true);
        requestMapLogin21.save(flush: true);
        requestMapLogin22.save(flush: true);
        requestMapLogin23.save(flush: true);
        requestMapLogin24.save(flush: true);
        requestMapLogin25.save(flush: true);
        requestMapLogin26.save(flush: true);



        requestMapLogin100.save(flush: true);
        requestMapLogin10001.save(flush: true);
        requestMapLogin10002.save(flush: true);
        requestMapLogin10003.save(flush: true);
        requestMapLogin10004.save(flush: true);
        requestMapLogin10005.save(flush: true);

        requestMapLogin101.save(flush: true);
        requestMapLogin102.save(flush: true);
        requestMapLogin103.save(flush: true);
        requestMapLogin104.save(flush: true);
        requestMapLogin105.save(flush: true);
        requestMapLogin106.save(flush: true);
        springSecurityService.clearCachedRequestmaps();
    }


}