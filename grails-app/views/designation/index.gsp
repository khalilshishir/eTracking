
<%@ page import="com.org.employee.Designation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'designation.label', default: 'Designation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-designation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-designation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="searchKey" title="${message(code: 'designation.searchKey.label', default: 'Search Key')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'designation.remarks.label', default: 'Remarks')}" />
					
						<th><g:message code="designation.updateUser.label" default="Update User" /></th>
					
						<g:sortableColumn property="updateDate" title="${message(code: 'designation.updateDate.label', default: 'Update Date')}" />
					
						<g:sortableColumn property="updateMachine" title="${message(code: 'designation.updateMachine.label', default: 'Update Machine')}" />
					
						<g:sortableColumn property="updateIp" title="${message(code: 'designation.updateIp.label', default: 'Update Ip')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${designationInstanceList}" status="i" var="designationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${designationInstance.id}">${fieldValue(bean: designationInstance, field: "searchKey")}</g:link></td>
					
						<td>${fieldValue(bean: designationInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: designationInstance, field: "updateUser")}</td>
					
						<td><g:formatDate date="${designationInstance.updateDate}" /></td>
					
						<td>${fieldValue(bean: designationInstance, field: "updateMachine")}</td>
					
						<td>${fieldValue(bean: designationInstance, field: "updateIp")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${designationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
