
<%@ page import="com.uma.PersonAuthority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personAuthority.label', default: 'User Role')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

    <div id="show-personAuthority" class="content scaffold-show" role="main">
        %{--<h1><g:message code="default.show.label" args="[entityName]" /></h1>--}%
        <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title"><g:message code="default.list.label" default="Role" args="[entityName]" />
                <p align="right" style="color:#666; font-size: 15px;  margin-top: -9px; float:right;">
                    <a style="color:#666; font-size: 15px;" class="btn btn-default btn-small" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>

                    <a style="color:#666; font-size: 15px;"  class="btn btn-default btn-small" href="${g.createLink(action: 'list')}"> User Role List</a>


                    <a style="color:#666; font-size: 15px;" class="btn btn-default btn-small" href="${g.createLink(action: 'create')}">Create User Role</a>
                </p>
            </h3>
        </div>
            <g:if test="${flash.message}">
                <script>
                    $(document).ready(function(){
                        $.bootstrapGrowl("${flash.message}", {
                            ele: 'body', // which element to append to
                            type: 'info', // (null, 'info', 'danger', 'success')
                            offset: {from: 'top', amount: 20}, // 'top', or 'bottom'
                            align: 'right', // ('left', 'right', or 'center')
                            width: 400, // (integer, or 'auto')
                            delay: 4000, // Time while the message will be displayed. It's not equivalent to the *demo* timeOut!
                            allow_dismiss: true, // If true then will display a cross to close the popup.
                            stackup_spacing: 10 // spacing between consecutively stacked growls.

                        });


                    });
                </script>
            </g:if>

            <div class="panel-body">
			<ol class="property-list personAuthority">
			
				<g:if test="${personAuthorityInstance?.authority}">
				<li class="fieldcontain">
					<span id="authority-label" class="property-label"><g:message code="personAuthority.authority.label" default="Authority" /></span>
					
						<span class="property-value" aria-labelledby="authority-label"><g:link controller="authority" action="show" id="${personAuthorityInstance?.authority?.id}">${personAuthorityInstance?.authority?.name}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${personAuthorityInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="personAuthority.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${personAuthorityInstance?.person?.id}">${personAuthorityInstance?.person?.username}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">

                    <a class="btn btn-warning btn-table" href="${g.createLink(controller: 'personAuthority', action: 'edit', params: [personId: personAuthorityInstance?.person?.id,authId: personAuthorityInstance?.authority?.id])}"
                       title="Edit">Edit</a>
                    <a class="btn btn-warning btn-table" onclick="return confirm('Are you sure delete user role ?')" href="${g.createLink(controller: 'personAuthority', action: 'delete', params: [personId: personAuthorityInstance?.person?.id,authId: personAuthorityInstance?.authority?.id])}"
                       title="Delete">Delete</a>
                </fieldset>
			</g:form>
                </div>
        </div>
		</div>
	</body>
</html>
