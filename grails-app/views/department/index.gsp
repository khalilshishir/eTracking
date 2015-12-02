
<%@ page import="com.org.employee.Department" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'department.label', default: 'Department')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-department" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-department" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="searchKey" title="${message(code: 'department.searchKey.label', default: 'Search Key')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'department.remarks.label', default: 'Remarks')}" />
					
						<th><g:message code="department.updateUser.label" default="Update User" /></th>
					
						<g:sortableColumn property="updateDate" title="${message(code: 'department.updateDate.label', default: 'Update Date')}" />
					
						<g:sortableColumn property="updateMachine" title="${message(code: 'department.updateMachine.label', default: 'Update Machine')}" />
					
						<g:sortableColumn property="updateIp" title="${message(code: 'department.updateIp.label', default: 'Update Ip')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${departmentInstanceList}" status="i" var="departmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${departmentInstance.id}">${fieldValue(bean: departmentInstance, field: "searchKey")}</g:link></td>
					
						<td>${fieldValue(bean: departmentInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: departmentInstance, field: "updateUser")}</td>
					
						<td><g:formatDate date="${departmentInstance.updateDate}" /></td>
					
						<td>${fieldValue(bean: departmentInstance, field: "updateMachine")}</td>
					
						<td>${fieldValue(bean: departmentInstance, field: "updateIp")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${departmentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
