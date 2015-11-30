
<%@ page import="com.org.customer.CustomerCompany" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerCompany.label', default: 'CustomerCompany')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Unit <small>All the Customer Unit  That is created.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create New Unit Group </i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
							<thead style="background-image: linear-gradient(to bottom, #8cce9f, rgba(138, 202, 50, 0.3));">
							<tr>
								<td>Company Code</td>
								<td>Company Name</td>
								<td>Contact Person</td>
								<td>JobTitle</td>
								<td>Address</td>
								<td>Search Key</td>
								<td>Remarks</td>


							</tr>
							</thead>
							<tbody>
							<g:each in="${customerCompanyInstanceList}" status="i" var="customerCompanyInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${customerCompanyInstance.id}">${fieldValue(bean: customerCompanyInstance, field: 'companyCode')}</g:link></td>
									<td class="text-center">${customerCompanyInstance?.companyName}  </td>
									<td class="text-center">${customerCompanyInstance?. contactPerson}  </td>
									<td class="text-center">${customerCompanyInstance?. jobTitle}  </td>
									<td class="text-center">${customerCompanyInstance?. address}  </td>
									<td class="text-center">${customerCompanyInstance?.searchKey}  </td>
									<td class="text-center">${customerCompanyInstance?.remarks}  </td>

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
