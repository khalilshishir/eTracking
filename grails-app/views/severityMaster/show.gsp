
<%@ page import="com.org.issue.SeverityMaster" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'severityMaster.label', default: 'SeverityMaster')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-severityMaster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-severityMaster" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list severityMaster">
			
				<g:if test="${severityMasterInstance?.searchKey}">
				<li class="fieldcontain">
					<span id="searchKey-label" class="property-label"><g:message code="severityMaster.searchKey.label" default="Search Key" /></span>
					
						<span class="property-value" aria-labelledby="searchKey-label"><g:fieldValue bean="${severityMasterInstance}" field="searchKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="severityMaster.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${severityMasterInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.updateUser}">
				<li class="fieldcontain">
					<span id="updateUser-label" class="property-label"><g:message code="severityMaster.updateUser.label" default="Update User" /></span>
					
						<span class="property-value" aria-labelledby="updateUser-label"><g:link controller="person" action="show" id="${severityMasterInstance?.updateUser?.id}">${severityMasterInstance?.updateUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="severityMaster.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${severityMasterInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.updateMachine}">
				<li class="fieldcontain">
					<span id="updateMachine-label" class="property-label"><g:message code="severityMaster.updateMachine.label" default="Update Machine" /></span>
					
						<span class="property-value" aria-labelledby="updateMachine-label"><g:fieldValue bean="${severityMasterInstance}" field="updateMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.updateIp}">
				<li class="fieldcontain">
					<span id="updateIp-label" class="property-label"><g:message code="severityMaster.updateIp.label" default="Update Ip" /></span>
					
						<span class="property-value" aria-labelledby="updateIp-label"><g:fieldValue bean="${severityMasterInstance}" field="updateIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.company}">
				<li class="fieldcontain">
					<span id="company-label" class="property-label"><g:message code="severityMaster.company.label" default="Company" /></span>
					
						<span class="property-value" aria-labelledby="company-label"><g:link controller="customerCompany" action="show" id="${severityMasterInstance?.company?.id}">${severityMasterInstance?.company?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.effectDateFrom}">
				<li class="fieldcontain">
					<span id="effectDateFrom-label" class="property-label"><g:message code="severityMaster.effectDateFrom.label" default="Effect Date From" /></span>
					
						<span class="property-value" aria-labelledby="effectDateFrom-label"><g:formatDate date="${severityMasterInstance?.effectDateFrom}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.effectDateTo}">
				<li class="fieldcontain">
					<span id="effectDateTo-label" class="property-label"><g:message code="severityMaster.effectDateTo.label" default="Effect Date To" /></span>
					
						<span class="property-value" aria-labelledby="effectDateTo-label"><g:formatDate date="${severityMasterInstance?.effectDateTo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.insertDate}">
				<li class="fieldcontain">
					<span id="insertDate-label" class="property-label"><g:message code="severityMaster.insertDate.label" default="Insert Date" /></span>
					
						<span class="property-value" aria-labelledby="insertDate-label"><g:formatDate date="${severityMasterInstance?.insertDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.insertIp}">
				<li class="fieldcontain">
					<span id="insertIp-label" class="property-label"><g:message code="severityMaster.insertIp.label" default="Insert Ip" /></span>
					
						<span class="property-value" aria-labelledby="insertIp-label"><g:fieldValue bean="${severityMasterInstance}" field="insertIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.insertMachine}">
				<li class="fieldcontain">
					<span id="insertMachine-label" class="property-label"><g:message code="severityMaster.insertMachine.label" default="Insert Machine" /></span>
					
						<span class="property-value" aria-labelledby="insertMachine-label"><g:fieldValue bean="${severityMasterInstance}" field="insertMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.insertUser}">
				<li class="fieldcontain">
					<span id="insertUser-label" class="property-label"><g:message code="severityMaster.insertUser.label" default="Insert User" /></span>
					
						<span class="property-value" aria-labelledby="insertUser-label"><g:link controller="person" action="show" id="${severityMasterInstance?.insertUser?.id}">${severityMasterInstance?.insertUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="severityMaster.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="projectInformation" action="show" id="${severityMasterInstance?.project?.id}">${severityMasterInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.severityCode}">
				<li class="fieldcontain">
					<span id="severityCode-label" class="property-label"><g:message code="severityMaster.severityCode.label" default="Severity Code" /></span>
					
						<span class="property-value" aria-labelledby="severityCode-label"><g:fieldValue bean="${severityMasterInstance}" field="severityCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.severityDetails}">
				<li class="fieldcontain">
					<span id="severityDetails-label" class="property-label"><g:message code="severityMaster.severityDetails.label" default="Severity Details" /></span>
					
						<g:each in="${severityMasterInstance.severityDetails}" var="s">
						<span class="property-value" aria-labelledby="severityDetails-label"><g:link controller="severityDetails" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${severityMasterInstance?.severityStatus}">
				<li class="fieldcontain">
					<span id="severityStatus-label" class="property-label"><g:message code="severityMaster.severityStatus.label" default="Severity Status" /></span>
					
						<span class="property-value" aria-labelledby="severityStatus-label"><g:formatBoolean boolean="${severityMasterInstance?.severityStatus}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:severityMasterInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${severityMasterInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
