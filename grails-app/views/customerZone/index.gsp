
<%@ page import="com.org.customer.CustomerZone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerZone.label', default: 'CustomerZone')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Zone <small>All the Customer Zone  That is created.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create New Zone Group </i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
							<thead style="background-image: linear-gradient(to bottom, #8cce9f, rgba(138, 202, 50, 0.3));">
							<tr>
								<td>Customer Zone Name</td>
								<td>Search Key</td>
								<td>Remarks</td>


							</tr>
							</thead>
							<tbody>
							<g:each in="${customerZoneInstanceList}" status="i" var="customerZoneInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${customerZoneInstance.id}">${fieldValue(bean: customerZoneInstance, field: 'zoneName')}</g:link></td>
									<td class="text-center">${customerZoneInstance?.searchKey}  </td>
									<td class="text-center">${customerZoneInstance?.remarks}  </td>

								</tr>
							</g:each>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	</body>
</html>
