
<%@ page import="com.org.issue.IssueAreaCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'issueAreaCategory.label', default: 'IssueAreaCategory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-issueAreaCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-issueAreaCategory" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list issueAreaCategory">
			
				<g:if test="${issueAreaCategoryInstance?.searchKey}">
				<li class="fieldcontain">
					<span id="searchKey-label" class="property-label"><g:message code="issueAreaCategory.searchKey.label" default="Search Key" /></span>
					
						<span class="property-value" aria-labelledby="searchKey-label"><g:fieldValue bean="${issueAreaCategoryInstance}" field="searchKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="issueAreaCategory.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${issueAreaCategoryInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.updateUser}">
				<li class="fieldcontain">
					<span id="updateUser-label" class="property-label"><g:message code="issueAreaCategory.updateUser.label" default="Update User" /></span>
					
						<span class="property-value" aria-labelledby="updateUser-label"><g:link controller="person" action="show" id="${issueAreaCategoryInstance?.updateUser?.id}">${issueAreaCategoryInstance?.updateUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="issueAreaCategory.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${issueAreaCategoryInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.updateMachine}">
				<li class="fieldcontain">
					<span id="updateMachine-label" class="property-label"><g:message code="issueAreaCategory.updateMachine.label" default="Update Machine" /></span>
					
						<span class="property-value" aria-labelledby="updateMachine-label"><g:fieldValue bean="${issueAreaCategoryInstance}" field="updateMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.updateIp}">
				<li class="fieldcontain">
					<span id="updateIp-label" class="property-label"><g:message code="issueAreaCategory.updateIp.label" default="Update Ip" /></span>
					
						<span class="property-value" aria-labelledby="updateIp-label"><g:fieldValue bean="${issueAreaCategoryInstance}" field="updateIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.insertDate}">
				<li class="fieldcontain">
					<span id="insertDate-label" class="property-label"><g:message code="issueAreaCategory.insertDate.label" default="Insert Date" /></span>
					
						<span class="property-value" aria-labelledby="insertDate-label"><g:formatDate date="${issueAreaCategoryInstance?.insertDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.insertIp}">
				<li class="fieldcontain">
					<span id="insertIp-label" class="property-label"><g:message code="issueAreaCategory.insertIp.label" default="Insert Ip" /></span>
					
						<span class="property-value" aria-labelledby="insertIp-label"><g:fieldValue bean="${issueAreaCategoryInstance}" field="insertIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.insertMachine}">
				<li class="fieldcontain">
					<span id="insertMachine-label" class="property-label"><g:message code="issueAreaCategory.insertMachine.label" default="Insert Machine" /></span>
					
						<span class="property-value" aria-labelledby="insertMachine-label"><g:fieldValue bean="${issueAreaCategoryInstance}" field="insertMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.insertUser}">
				<li class="fieldcontain">
					<span id="insertUser-label" class="property-label"><g:message code="issueAreaCategory.insertUser.label" default="Insert User" /></span>
					
						<span class="property-value" aria-labelledby="insertUser-label"><g:link controller="person" action="show" id="${issueAreaCategoryInstance?.insertUser?.id}">${issueAreaCategoryInstance?.insertUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.issueAreaCatName}">
				<li class="fieldcontain">
					<span id="issueAreaCatName-label" class="property-label"><g:message code="issueAreaCategory.issueAreaCatName.label" default="Issue Area Cat Name" /></span>
					
						<span class="property-value" aria-labelledby="issueAreaCatName-label"><g:fieldValue bean="${issueAreaCategoryInstance}" field="issueAreaCatName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${issueAreaCategoryInstance?.issueAreaDesc}">
				<li class="fieldcontain">
					<span id="issueAreaDesc-label" class="property-label"><g:message code="issueAreaCategory.issueAreaDesc.label" default="Issue Area Desc" /></span>
					
						<span class="property-value" aria-labelledby="issueAreaDesc-label"><g:fieldValue bean="${issueAreaCategoryInstance}" field="issueAreaDesc"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:issueAreaCategoryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${issueAreaCategoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
