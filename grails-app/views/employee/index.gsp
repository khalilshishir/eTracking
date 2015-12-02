
<%@ page import="com.org.employee.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="postalCode" title="${message(code: 'employee.postalCode.label', default: 'Postal Code')}" />
					
						<g:sortableColumn property="geoLoc" title="${message(code: 'employee.geoLoc.label', default: 'Geo Loc')}" />
					
						<g:sortableColumn property="divCode" title="${message(code: 'employee.divCode.label', default: 'Div Code')}" />
					
						<g:sortableColumn property="disCode" title="${message(code: 'employee.disCode.label', default: 'Dis Code')}" />
					
						<g:sortableColumn property="thanaCode" title="${message(code: 'employee.thanaCode.label', default: 'Thana Code')}" />
					
						<g:sortableColumn property="phoneNo" title="${message(code: 'employee.phoneNo.label', default: 'Phone No')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "postalCode")}</g:link></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "geoLoc")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "divCode")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "disCode")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "thanaCode")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "phoneNo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
