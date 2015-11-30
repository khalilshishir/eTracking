
<%@ page import="com.uma.Authority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'authority.label', default: 'Role')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Role List <small>All the role That is created.</small></h5>

                    <div class="ibox-tools">

                        <a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
                            <i class="fa fa-pencil"> Create New Role</i>
                        </a>

                    </div>
                    <div class="ibox-content">
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <div class="hr-line-dashed"></div>

                            <g:if test="${authorityInstance?.name}">
                                    <span id="name-label" class="property-label"><g:message code="authority.name.label" default="Name :" /></span>

                                    <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${authorityInstance}" field="name"/></span>

                            </g:if>
                        <div class="hr-line-dashed"></div>

                        <g:form>
                            <fieldset class="buttons">
                                <g:hiddenField name="id" value="${authorityInstance?.id}" />
                                <g:link class="edit btn btn-primary btn-sm" action="edit" id="${authorityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                <g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </fieldset>
                        </g:form>



                    </div>
                </div>
            </div>
        </div>
    </div>

	</body>
</html>
