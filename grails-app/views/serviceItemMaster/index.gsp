
<%@ page import="com.org.service.ServiceItemMaster" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceItemMaster.label', default: 'ServiceItemMaster')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-serviceItemMaster" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-serviceItemMaster" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="searchKey" title="${message(code: 'serviceItemMaster.searchKey.label', default: 'Search Key')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'serviceItemMaster.remarks.label', default: 'Remarks')}" />
					
						<th><g:message code="serviceItemMaster.updateUser.label" default="Update User" /></th>
					
						<g:sortableColumn property="updateDate" title="${message(code: 'serviceItemMaster.updateDate.label', default: 'Update Date')}" />
					
						<g:sortableColumn property="updateMachine" title="${message(code: 'serviceItemMaster.updateMachine.label', default: 'Update Machine')}" />
					
						<g:sortableColumn property="updateIp" title="${message(code: 'serviceItemMaster.updateIp.label', default: 'Update Ip')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${serviceItemMasterInstanceList}" status="i" var="serviceItemMasterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serviceItemMasterInstance.id}">${fieldValue(bean: serviceItemMasterInstance, field: "searchKey")}</g:link></td>
					
						<td>${fieldValue(bean: serviceItemMasterInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: serviceItemMasterInstance, field: "updateUser")}</td>
					
						<td><g:formatDate date="${serviceItemMasterInstance.updateDate}" /></td>
					
						<td>${fieldValue(bean: serviceItemMasterInstance, field: "updateMachine")}</td>
					
						<td>${fieldValue(bean: serviceItemMasterInstance, field: "updateIp")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serviceItemMasterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
