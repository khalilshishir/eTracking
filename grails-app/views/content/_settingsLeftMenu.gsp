<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li class="nav-header">

                <div class="dropdown profile-element"> <span>
                    <img alt="image" class="img-circle" src="${resource(dir: 'img', file: 'user.png')}" />
                </span>
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Amelia Smith</strong>
                        </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                    <ul class="dropdown-menu animated fadeInRight m-t-xs">
                        <li><a href="#"><i class="fa fa-user"></i>  Profile</a></li>
                        <li><a href="#"><i class="fa fa-mobile"></i> Contacts</a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i> Mailbox</a></li>
                        <li class="divider"></li>
                        <li><a href="${g.createLink(controller: 'logout')}"><i class="fa fa-power-off"></i> Logout</a></li>
                    </ul>
                </div>
                <div class="logo-element">
                    IN+
                </div>

            </li>
                <li class="nav-has-child-level">
                    <a href="#"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span><span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                            <li class="${params.controller == 'login' && params.action == 'auth' ? 'active' : ''}">
                                <a href="${g.createLink(controller: 'login', action: 'auth')}">Super Admin Dashboard</a>
                            </li>
                     </ul>
                </li>

            %{--<sec:access controller="menu" action="bailyCalender">--}%
                <li class="nav-has-child-level">
                    <a href="#"><i class="fa fa-users"></i> <span class="nav-label">User Management</span><span
                            class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <sec:access controller="person" action="create">
                            <li class="${params.controller == 'person' && params.action == 'create' ||params.controller == 'person' && params.action == 'list'|| params.controller == 'person' && params.action == 'show'|| params.controller == 'person' && params.action == 'edit' ? 'active' : ''}">
                                <a href="${g.createLink(controller: 'person', action: 'create')}"><i class="fa fa-user"></i> Create User</a>
                            </li>
                        </sec:access>
                        <sec:access controller="authority" action="create">
                            <li class="${params.controller == 'authority' && params.action == 'create' || params.controller == 'authority' && params.action == 'list' || params.controller == 'authority' && params.action == 'show'|| params.controller == 'authority' && params.action == 'edit' ? 'active' : ''}">
                                <a href="${g.createLink(controller: 'authority', action: 'create')}"><i class="fa fa-flask"></i> Create Role</a>
                            </li>
                        </sec:access>
                        <sec:access controller="requestmap" action="index">
                            <li class="${params.controller == 'requestmap' && params.action == 'index' ? 'active' : ''}">
                                <a href="${g.createLink(controller: 'requestmap', action: 'index')}"><i class="fa fa-sitemap"></i> Role Right Mapping</a>
                            </li>
                        </sec:access>

                    </ul>
                </li>
            %{--</sec:access>--}%
            <li class="nav-has-child-level">
                <a href="#"><i class="fa fa-users"></i> <span class="nav-label">Settings</span><span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <sec:access controller="lookup" action="create">
                        <li class="${params.controller == 'lookup' && params.action == 'create' ||params.controller == 'lookup' && params.action == 'index'|| params.controller == 'lookup' && params.action == 'show'|| params.controller == 'lookup' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'lookup', action: 'create')}"><i class="fa fa-user"></i>LookUp</a>
                        </li>
                    </sec:access>
                    <sec:access controller="projectInformation" action="create">
                        <li class="${params.controller == 'projectInformation' && params.action == 'create' ||params.controller == 'projectInformation' && params.action == 'index'|| params.controller == 'projectInformation' && params.action == 'show'|| params.controller == 'projectInformation' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'projectInformation', action: 'create')}"><i class="fa fa-user"></i>Project Information</a>
                        </li>
                    </sec:access>


                </ul>
            </li>
            <li class="nav-has-child-level">
                <a href="#"><i class="fa fa-users"></i> <span class="nav-label">Customer Mgt</span><span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <sec:access controller="customerGeographicalLocation" action="create">
                        <li class="${params.controller == 'customerGeographicalLocation' && params.action == 'create' ||params.controller == 'customerGeographicalLocation' && params.action == 'index'|| params.controller == 'customerGeographicalLocation' && params.action == 'show'|| params.controller == 'customerGeographicalLocation' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'customerGeographicalLocation', action: 'create')}"><i class="fa fa-user"></i>Location</a>
                        </li>
                    </sec:access>
                    <sec:access controller="customerGroup" action="create">
                        <li class="${params.controller == 'customerGroup' && params.action == 'create' ||params.controller == 'customerGroup' && params.action == 'index'|| params.controller == 'customerGroup' && params.action == 'show'|| params.controller == 'customerGroup' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'customerGroup', action: 'create')}"><i class="fa fa-user"></i>Group</a>
                        </li>
                    </sec:access>
                    <sec:access controller="customerCountry" action="create">
                        <li class="${params.controller == 'customerCountry' && params.action == 'create' || params.controller == 'customerCountry' && params.action == 'index' || params.controller == 'customerCountry' && params.action == 'show'|| params.controller == 'customerCountry' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'customerCountry', action: 'create')}"><i class="fa fa-flask"></i>Country</a>
                        </li>
                    </sec:access>
                    <sec:access controller="customerUnit" action="index">
                        <li class="${params.controller == 'customerUnit' && params.action == 'create' ||params.controller == 'customerUnit' && params.action == 'index'|| params.controller == 'customerUnit' && params.action == 'show'|| params.controller == 'customerUnit' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'customerUnit', action: 'create')}"><i class="fa fa-sitemap"></i>Unit</a>
                        </li>
                    </sec:access>
                    <sec:access controller="customerZone" action="index">
                        <li class="${params.controller == 'customerZone' && params.action == 'create' ||params.controller == 'customerZone' && params.action == 'index'|| params.controller == 'customerZone' && params.action == 'show'|| params.controller == 'customerZone' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'customerZone', action: 'create')}"><i class="fa fa-sitemap"></i>Zone</a>
                        </li>
                    </sec:access>
                    <sec:access controller="customerCompany" action="index">
                        <li class="${params.controller == 'customerCompany' && params.action == 'create' ||params.controller == 'customerCompany' && params.action == 'index'|| params.controller == 'customerCompany' && params.action == 'show'|| params.controller == 'customerCompany' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'customerCompany', action: 'create')}"><i class="fa fa-sitemap"></i>Company</a>
                        </li>
                    </sec:access>
                    <sec:access controller="customerInformation" action="index">
                        <li class="${params.controller == 'customerInformation' && params.action == 'create' ||params.controller == 'customerInformation' && params.action == 'index'|| params.controller == 'customerInformation' && params.action == 'show'|| params.controller == 'customerInformation' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'customerInformation', action: 'create')}"><i class="fa fa-sitemap"></i>Customer Info</a>
                        </li>
                    </sec:access>

                </ul>
            </li>
      <li class="nav-has-child-level">
                <a href="#"><i class="fa fa-users"></i> <span class="nav-label">Item Mgt</span><span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <sec:access controller="itemBrand" action="create">
                        <li class="${params.controller == 'itemBrand' && params.action == 'create' ||params.controller == 'itemBrand' && params.action == 'index'|| params.controller == 'itemBrand' && params.action == 'show'|| params.controller == 'itemBrand' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'itemBrand', action: 'create')}"><i class="fa fa-user"></i>Brand</a>
                        </li>
                    </sec:access>
                    <sec:access controller="itemSeries" action="create">
                        <li class="${params.controller == 'itemSeries' && params.action == 'create' ||params.controller == 'itemSeries' && params.action == 'index'|| params.controller == 'itemSeries' && params.action == 'show'|| params.controller == 'itemSeries' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'itemSeries', action: 'create')}"><i class="fa fa-user"></i>Series</a>
                        </li>
                    </sec:access>
                    <sec:access controller="itemCategory" action="create">
                        <li class="${params.controller == 'itemCategory' && params.action == 'create' || params.controller == 'itemCategory' && params.action == 'index' || params.controller == 'itemCategory' && params.action == 'show'|| params.controller == 'itemCategory' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'itemCategory', action: 'create')}"><i class="fa fa-flask"></i>Category</a>
                        </li>
                    </sec:access>
                    <sec:access controller="itemSubCategory" action="index">
                        <li class="${params.controller == 'itemSubCategory' && params.action == 'create' ||params.controller == 'itemSubCategory' && params.action == 'index'|| params.controller == 'itemSubCategory' && params.action == 'show'|| params.controller == 'itemSubCategory' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'itemSubCategory', action: 'create')}"><i class="fa fa-sitemap"></i>Sub Category</a>
                        </li>
                    </sec:access>
                    <sec:access controller="itemInfo" action="index">
                        <li class="${params.controller == 'itemInfo' && params.action == 'create' ||params.controller == 'itemInfo' && params.action == 'index'|| params.controller == 'itemInfo' && params.action == 'show'|| params.controller == 'itemInfo' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'itemInfo', action: 'create')}"><i class="fa fa-sitemap"></i>Item Info</a>
                        </li>
                    </sec:access>


                </ul>
            </li>
         <li class="nav-has-child-level">
                <a href="#"><i class="fa fa-users"></i> <span class="nav-label">Service Mgt</span><span
                        class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <sec:access controller="serviceType" action="create">
                        <li class="${params.controller == 'serviceType' && params.action == 'create' ||params.controller == 'serviceType' && params.action == 'index'|| params.controller == 'serviceType' && params.action == 'show'|| params.controller == 'serviceType' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'serviceType', action: 'create')}"><i class="fa fa-user"></i>Service Type</a>
                        </li>
                    </sec:access>
                    <sec:access controller="serviceItemMaster" action="create">
                        <li class="${params.controller == 'serviceItemMaster' && params.action == 'create' ||params.controller == 'serviceItemMaster' && params.action == 'index'|| params.controller == 'serviceItemMaster' && params.action == 'show'|| params.controller == 'serviceItemMaster' && params.action == 'edit' ? 'active' : ''}">
                            <a href="${g.createLink(controller: 'serviceItemMaster', action: 'create')}"><i class="fa fa-user"></i>Service Item Master</a>
                        </li>
                    </sec:access>


                </ul>
            </li>
        </ul>

    </div>
</nav>

<script>
    jQuery(function ($) {
        $('ul#side-menu >li >ul.nav-second-level >li.active:first').closest('li.nav-has-child-level').addClass('active');
        $('ul#side-menu >li >ul.nav-second-level >li.active:first').closest('ul.nav-second-level').addClass('in');
    });
</script>

