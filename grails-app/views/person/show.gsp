
<%@ page import="com.uma.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Role List <small>All the Users That is created.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create New User</i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'list')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${personInstance?.username}">
					<span id="username-label" class="property-label"><g:message code="person.username.label" default="Username :" /></span>

						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${personInstance}" field="username"/></span>
                            <br>
				</g:if>

                        <g:if test="${personInstance?.name}">
					<span id="username-label" class="property-label"><g:message code="person.username.label" default="Name :" /></span>

						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${personInstance}" field="name"/></span>
                            <br>
				</g:if>

                        <g:if test="${personInstance?.email}">
					<span id="username-label" class="property-label"><g:message code="person.username.label" default="Email :" /></span>

						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${personInstance}" field="email"/></span>
                            <br>
				</g:if>
			

				<g:if test="${personInstance?.accountExpired}">
					<span id="accountExpired-label" class="property-label"><g:message code="person.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${personInstance?.accountExpired}" /></span>
                    <br>
				</g:if>

			
				<g:if test="${personInstance?.accountLocked}">
					<span id="accountLocked-label" class="property-label"><g:message code="person.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${personInstance?.accountLocked}" /></span>
					<br>
				</g:if>
			
				<g:if test="${personInstance?.enabled}">
					<span id="enabled-label" class="property-label"><g:message code="person.enabled.label" default="Enabled :" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${personInstance?.enabled}" /></span>
					<br>
				</g:if>
			
				<g:if test="${personInstance?.passwordExpired}">
					<span id="passwordExpired-label" class="property-label"><g:message code="person.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${personInstance?.passwordExpired}" /></span>
					
				</g:if>
                        <g:if test="${userRole}">
                                <span id="role-label" class="property-label"><g:message code="user.role.label"
                                                                                        default="Role :"/></span>
                                <span class="property-value" aria-labelledby="role-label">${userRole}</span>

                        </g:if>
						<div class="hr-line-dashed"></div>

						<g:form>
                        <fieldset class="buttons">
                            <g:hiddenField name="id" value="${personInstance?.id}" />

                            <g:link class="edit btn btn-primary btn-sm" action="edit" id="${personInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
