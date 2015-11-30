
<%@ page import="com.org.customer.CustomerCountry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerCountry.label', default: 'CustomerCountry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Country <small>All the Customer Country That is created.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create New Customer Country </i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
							<thead style="background-image: linear-gradient(to bottom, #8cce9f, rgba(138, 202, 50, 0.3));">
							<tr>
								<td>Country Code</td>
								<td>Country Name</td>
							</tr>
							</thead>
							<tbody>
							<g:each in="${customerCountryInstanceList}" status="i" var="customerCountryInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${customerCountryInstance.id}">${fieldValue(bean: customerCountryInstance, field: 'countryCode')}</g:link></td>
									<td class="text-center">${customerCountryInstance?.countryName}  </td>

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
