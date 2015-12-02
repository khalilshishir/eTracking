
<%@ page import="com.org.issue.IssueAreaCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'issueAreaCategory.label', default: 'IssueAreaCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-issueAreaCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-issueAreaCategory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="searchKey" title="${message(code: 'issueAreaCategory.searchKey.label', default: 'Search Key')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'issueAreaCategory.remarks.label', default: 'Remarks')}" />
					
						<th><g:message code="issueAreaCategory.updateUser.label" default="Update User" /></th>
					
						<g:sortableColumn property="updateDate" title="${message(code: 'issueAreaCategory.updateDate.label', default: 'Update Date')}" />
					
						<g:sortableColumn property="updateMachine" title="${message(code: 'issueAreaCategory.updateMachine.label', default: 'Update Machine')}" />
					
						<g:sortableColumn property="updateIp" title="${message(code: 'issueAreaCategory.updateIp.label', default: 'Update Ip')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${issueAreaCategoryInstanceList}" status="i" var="issueAreaCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${issueAreaCategoryInstance.id}">${fieldValue(bean: issueAreaCategoryInstance, field: "searchKey")}</g:link></td>
					
						<td>${fieldValue(bean: issueAreaCategoryInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: issueAreaCategoryInstance, field: "updateUser")}</td>
					
						<td><g:formatDate date="${issueAreaCategoryInstance.updateDate}" /></td>
					
						<td>${fieldValue(bean: issueAreaCategoryInstance, field: "updateMachine")}</td>
					
						<td>${fieldValue(bean: issueAreaCategoryInstance, field: "updateIp")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${issueAreaCategoryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
