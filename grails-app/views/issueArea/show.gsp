
<%@ page import="com.org.issue.IssueArea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'issueArea.label', default: 'IssueArea')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-issueArea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-issueArea" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list issueArea">
			
				<g:if test="${issueAreaInstance?.searchKey}">
				<li class="fieldcontain">
					<span id="searchKey-label" class="property-label"><g:message code="issueArea.searchKey.label" default="Search Key" /></span>
					
						<span class="property-value" aria-labelledby="searchKey-label"><g:fieldValue bean="${issueAreaInstance}" field="searchKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="issueArea.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${issueAreaInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.updateUser}">
				<li class="fieldcontain">
					<span id="updateUser-label" class="property-label"><g:message code="issueArea.updateUser.label" default="Update User" /></span>
					
						<span class="property-value" aria-labelledby="updateUser-label"><g:link controller="person" action="show" id="${issueAreaInstance?.updateUser?.id}">${issueAreaInstance?.updateUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="issueArea.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${issueAreaInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.updateMachine}">
				<li class="fieldcontain">
					<span id="updateMachine-label" class="property-label"><g:message code="issueArea.updateMachine.label" default="Update Machine" /></span>
					
						<span class="property-value" aria-labelledby="updateMachine-label"><g:fieldValue bean="${issueAreaInstance}" field="updateMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.updateIp}">
				<li class="fieldcontain">
					<span id="updateIp-label" class="property-label"><g:message code="issueArea.updateIp.label" default="Update Ip" /></span>
					
						<span class="property-value" aria-labelledby="updateIp-label"><g:fieldValue bean="${issueAreaInstance}" field="updateIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.insertDate}">
				<li class="fieldcontain">
					<span id="insertDate-label" class="property-label"><g:message code="issueArea.insertDate.label" default="Insert Date" /></span>
					
						<span class="property-value" aria-labelledby="insertDate-label"><g:formatDate date="${issueAreaInstance?.insertDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.insertIp}">
				<li class="fieldcontain">
					<span id="insertIp-label" class="property-label"><g:message code="issueArea.insertIp.label" default="Insert Ip" /></span>
					
						<span class="property-value" aria-labelledby="insertIp-label"><g:fieldValue bean="${issueAreaInstance}" field="insertIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.insertMachine}">
				<li class="fieldcontain">
					<span id="insertMachine-label" class="property-label"><g:message code="issueArea.insertMachine.label" default="Insert Machine" /></span>
					
						<span class="property-value" aria-labelledby="insertMachine-label"><g:fieldValue bean="${issueAreaInstance}" field="insertMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.insertUser}">
				<li class="fieldcontain">
					<span id="insertUser-label" class="property-label"><g:message code="issueArea.insertUser.label" default="Insert User" /></span>
					
						<span class="property-value" aria-labelledby="insertUser-label"><g:link controller="person" action="show" id="${issueAreaInstance?.insertUser?.id}">${issueAreaInstance?.insertUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.issueAreaCat}">
				<li class="fieldcontain">
					<span id="issueAreaCat-label" class="property-label"><g:message code="issueArea.issueAreaCat.label" default="Issue Area Cat" /></span>
					
						<span class="property-value" aria-labelledby="issueAreaCat-label"><g:link controller="issueAreaCategory" action="show" id="${issueAreaInstance?.issueAreaCat?.id}">${issueAreaInstance?.issueAreaCat?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaInstance?.issueAreaName}">
				<li class="fieldcontain">
					<span id="issueAreaName-label" class="property-label"><g:message code="issueArea.issueAreaName.label" default="Issue Area Name" /></span>
					
						<span class="property-value" aria-labelledby="issueAreaName-label"><g:fieldValue bean="${issueAreaInstance}" field="issueAreaName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:issueAreaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${issueAreaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
