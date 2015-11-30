<%@ page import="com.uma.PersonAuthority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personAuthority.label', default: 'User Role')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
<body>

<div id="edit-personAuthority" class="content scaffold-edit" role="main">
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
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${personAuthorityInstance}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${personAuthorityInstance}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </g:hasErrors>



        <div class="panel-body">

            <g:form method="post" >
                <g:hiddenField name="id" value="${personAuthorityInstance?.id}" />
                <g:hiddenField name="version" value="${personAuthorityInstance?.version}" />
                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>

                    <g:actionSubmit class="save btn btn-primary btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    <a class="btn btn-danger btn-table" onclick="return confirm('Are you sure delete user role ?')" href="${g.createLink(controller: 'personAuthority', action: 'delete', params: [personId: personAuthorityInstance?.person?.id,authId: personAuthorityInstance?.authority?.id])}"
                       title="Delete">Delete</a>

            </g:form>
        </div>
    </div>
</div>
</body>
</html>

