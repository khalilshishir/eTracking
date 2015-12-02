
<%@ page import="com.org.issue.IssueArea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'issueArea.label', default: 'IssueArea')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-issueArea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-issueArea" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="searchKey" title="${message(code: 'issueArea.searchKey.label', default: 'Search Key')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'issueArea.remarks.label', default: 'Remarks')}" />
					
						<th><g:message code="issueArea.updateUser.label" default="Update User" /></th>
					
						<g:sortableColumn property="updateDate" title="${message(code: 'issueArea.updateDate.label', default: 'Update Date')}" />
					
						<g:sortableColumn property="updateMachine" title="${message(code: 'issueArea.updateMachine.label', default: 'Update Machine')}" />
					
						<g:sortableColumn property="updateIp" title="${message(code: 'issueArea.updateIp.label', default: 'Update Ip')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${issueAreaInstanceList}" status="i" var="issueAreaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${issueAreaInstance.id}">${fieldValue(bean: issueAreaInstance, field: "searchKey")}</g:link></td>
					
						<td>${fieldValue(bean: issueAreaInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: issueAreaInstance, field: "updateUser")}</td>
					
						<td><g:formatDate date="${issueAreaInstance.updateDate}" /></td>
					
						<td>${fieldValue(bean: issueAreaInstance, field: "updateMachine")}</td>
					
						<td>${fieldValue(bean: issueAreaInstance, field: "updateIp")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${issueAreaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
