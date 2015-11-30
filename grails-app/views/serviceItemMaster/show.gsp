
<%@ page import="com.org.service.ServiceItemMaster" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceItemMaster.label', default: 'ServiceItemMaster')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-serviceItemMaster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-serviceItemMaster" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list serviceItemMaster">
			
				<g:if test="${serviceItemMasterInstance?.searchKey}">
				<li class="fieldcontain">
					<span id="searchKey-label" class="property-label"><g:message code="serviceItemMaster.searchKey.label" default="Search Key" /></span>
					
						<span class="property-value" aria-labelledby="searchKey-label"><g:fieldValue bean="${serviceItemMasterInstance}" field="searchKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="serviceItemMaster.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${serviceItemMasterInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.updateUser}">
				<li class="fieldcontain">
					<span id="updateUser-label" class="property-label"><g:message code="serviceItemMaster.updateUser.label" default="Update User" /></span>
					
						<span class="property-value" aria-labelledby="updateUser-label"><g:link controller="person" action="show" id="${serviceItemMasterInstance?.updateUser?.id}">${serviceItemMasterInstance?.updateUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="serviceItemMaster.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${serviceItemMasterInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.updateMachine}">
				<li class="fieldcontain">
					<span id="updateMachine-label" class="property-label"><g:message code="serviceItemMaster.updateMachine.label" default="Update Machine" /></span>
					
						<span class="property-value" aria-labelledby="updateMachine-label"><g:fieldValue bean="${serviceItemMasterInstance}" field="updateMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.updateIp}">
				<li class="fieldcontain">
					<span id="updateIp-label" class="property-label"><g:message code="serviceItemMaster.updateIp.label" default="Update Ip" /></span>
					
						<span class="property-value" aria-labelledby="updateIp-label"><g:fieldValue bean="${serviceItemMasterInstance}" field="updateIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="serviceItemMaster.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="customerCompany" action="show" id="${serviceItemMasterInstance?.company?.id}">${serviceItemMasterInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.customer}">
				<li class="fieldcontain">
					<span id="customer-label" class="property-label"><g:message code="serviceItemMaster.customer.label" default="Customer" /></span>
					
						<span class="property-value" aria-labelledby="customer-label"><g:link controller="customerInformation" action="show" id="${serviceItemMasterInstance?.customer?.id}">${serviceItemMasterInstance?.customer?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.insertDate}">
				<li class="fieldcontain">
					<span id="insertDate-label" class="property-label"><g:message code="serviceItemMaster.insertDate.label" default="Insert Date" /></span>
					
						<span class="property-value" aria-labelledby="insertDate-label"><g:formatDate date="${serviceItemMasterInstance?.insertDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.insertIp}">
				<li class="fieldcontain">
					<span id="insertIp-label" class="property-label"><g:message code="serviceItemMaster.insertIp.label" default="Insert Ip" /></span>
					
						<span class="property-value" aria-labelledby="insertIp-label"><g:fieldValue bean="${serviceItemMasterInstance}" field="insertIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.insertMachine}">
				<li class="fieldcontain">
					<span id="insertMachine-label" class="property-label"><g:message code="serviceItemMaster.insertMachine.label" default="Insert Machine" /></span>
					
						<span class="property-value" aria-labelledby="insertMachine-label"><g:fieldValue bean="${serviceItemMasterInstance}" field="insertMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.insertUser}">
				<li class="fieldcontain">
					<span id="insertUser-label" class="property-label"><g:message code="serviceItemMaster.insertUser.label" default="Insert User" /></span>
					
						<span class="property-value" aria-labelledby="insertUser-label"><g:link controller="person" action="show" id="${serviceItemMasterInstance?.insertUser?.id}">${serviceItemMasterInstance?.insertUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${serviceItemMasterInstance?.serviceItemDetails}">
				<li class="fieldcontain">
					<span id="serviceItemDetails-label" class="property-label"><g:message code="serviceItemMaster.serviceItemDetails.label" default="Service Item Details" /></span>
					
						<g:each in="${serviceItemMasterInstance.serviceItemDetails}" var="s">
						<span class="property-value" aria-labelledby="serviceItemDetails-label"><g:link controller="serviceItemDetails" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:serviceItemMasterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${serviceItemMasterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
