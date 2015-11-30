<%@ page import="com.uma.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Edit User <small>All the User That is created.</small></h5>

                    <div class="ibox-tools">

                        <a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
                            <i class="fa fa-pencil"> Create New User</i>
                        </a>

                    </div>
                    <div class="ibox-content">
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>

                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <g:hasErrors bean="${personInstance}">
                            <ul class="errors" role="alert">
                                <g:eachError bean="${authorityInstance}" var="error">
                                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                                </g:eachError>
                            </ul>
                        </g:hasErrors>

                        <g:form method="post" >
                        <g:hiddenField name="id" value="${personInstance?.id}" />
                        <g:hiddenField name="version" value="${personInstance?.version}" />
                        <fieldset class="form">
                            <g:render template="form"/>
                        </fieldset>
                            <div class="hr-line-dashed"></div>

                            <fieldset class="buttons">
                            <g:actionSubmit class="save btn btn-primary btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                            <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </fieldset>
                    </g:form>
                </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
