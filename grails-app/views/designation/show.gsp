
<%@ page import="com.org.employee.Designation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'designation.label', default: 'Designation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-designation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-designation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list designation">
			
				<g:if test="${designationInstance?.searchKey}">
				<li class="fieldcontain">
					<span id="searchKey-label" class="property-label"><g:message code="designation.searchKey.label" default="Search Key" /></span>
					
						<span class="property-value" aria-labelledby="searchKey-label"><g:fieldValue bean="${designationInstance}" field="searchKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="designation.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${designationInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.updateUser}">
				<li class="fieldcontain">
					<span id="updateUser-label" class="property-label"><g:message code="designation.updateUser.label" default="Update User" /></span>
					
						<span class="property-value" aria-labelledby="updateUser-label"><g:link controller="person" action="show" id="${designationInstance?.updateUser?.id}">${designationInstance?.updateUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="designation.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${designationInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.updateMachine}">
				<li class="fieldcontain">
					<span id="updateMachine-label" class="property-label"><g:message code="designation.updateMachine.label" default="Update Machine" /></span>
					
						<span class="property-value" aria-labelledby="updateMachine-label"><g:fieldValue bean="${designationInstance}" field="updateMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.updateIp}">
				<li class="fieldcontain">
					<span id="updateIp-label" class="property-label"><g:message code="designation.updateIp.label" default="Update Ip" /></span>
					
						<span class="property-value" aria-labelledby="updateIp-label"><g:fieldValue bean="${designationInstance}" field="updateIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.desigName}">
				<li class="fieldcontain">
					<span id="desigName-label" class="property-label"><g:message code="designation.desigName.label" default="Desig Name" /></span>
					
						<span class="property-value" aria-labelledby="desigName-label"><g:fieldValue bean="${designationInstance}" field="desigName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.insertDate}">
				<li class="fieldcontain">
					<span id="insertDate-label" class="property-label"><g:message code="designation.insertDate.label" default="Insert Date" /></span>
					
						<span class="property-value" aria-labelledby="insertDate-label"><g:formatDate date="${designationInstance?.insertDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.insertIp}">
				<li class="fieldcontain">
					<span id="insertIp-label" class="property-label"><g:message code="designation.insertIp.label" default="Insert Ip" /></span>
					
						<span class="property-value" aria-labelledby="insertIp-label"><g:fieldValue bean="${designationInstance}" field="insertIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.insertMachine}">
				<li class="fieldcontain">
					<span id="insertMachine-label" class="property-label"><g:message code="designation.insertMachine.label" default="Insert Machine" /></span>
					
						<span class="property-value" aria-labelledby="insertMachine-label"><g:fieldValue bean="${designationInstance}" field="insertMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${designationInstance?.insertUser}">
				<li class="fieldcontain">
					<span id="insertUser-label" class="property-label"><g:message code="designation.insertUser.label" default="Insert User" /></span>
					
						<span class="property-value" aria-labelledby="insertUser-label"><g:link controller="person" action="show" id="${designationInstance?.insertUser?.id}">${designationInstance?.insertUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:designationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${designationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
