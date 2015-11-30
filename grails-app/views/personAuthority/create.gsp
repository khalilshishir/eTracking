<%@ page import="com.uma.PersonAuthority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personAuthority.label', default: 'User Role')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

    <div id="create-authority" class="content scaffold-create" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.create.label" args="[entityName]" />
                    <p  align="right" style="color:#666; font-size: 15px;  margin-top: -9px;float:right;">
                        <a style="color:#666; font-size: 15px;" class="btn btn-default btn-small" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>

                        <a style="color:#666; font-size: 15px;"  class="btn btn-default btn-small" href="${g.createLink(controller: 'personAuthority',action: 'list')}">User Role List</a>
                    </p>
                </h3>
                <g:if test="${flash.message}">
                    <div  class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${personAuthorityInstance}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${personAuthorityInstance}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
            </div>


            <div class="panel-body">

                <g:form action="save" >
                    <fieldset class="form">

                        <g:render template="form"/>

                    </fieldset>
                    <fieldset class="buttons">
                        <g:submitButton name="create" class="btn btn-primary btn-sm save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>
    </div>
    </body>
</html>
