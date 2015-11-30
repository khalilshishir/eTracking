
<%@ page import="com.org.customer.CustomerInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerInformation.label', default: 'CustomerInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Information <small>All the Customer Information  That is created.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create New Information Group </i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
							<thead style="background-image: linear-gradient(to bottom, #8cce9f, rgba(138, 202, 50, 0.3));">
							<tr>
								<td>Customer Code</td>
								<td>Customer Name</td>
								<td>Company Name</td>
								<td>Contact Person</td>
								<td>JobTitle</td>
								<td>Address</td>
								<td>Project</td>
								<td>Search Key</td>
								<td>Remarks</td>
								<td>Status</td>


							</tr>
							</thead>
							<tbody>
							<g:each in="${customerInformationInstanceList}" status="i" var="customerInformationInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${customerInformationInstance.id}">${fieldValue(bean: customerInformationInstance, field: 'custCode')}</g:link></td>
									<td class="text-center">${customerInformationInstance?.custName}  </td>
									<td class="text-center">${customerInformationInstance?.company?.companyName}  </td>
									<td class="text-center">${customerInformationInstance?. contactPerson}  </td>
									<td class="text-center">${customerInformationInstance?. jobTitle}  </td>
									<td class="text-center">${customerInformationInstance?. address1}  </td>
									<td class="text-center">${customerInformationInstance?. project?.projectName}  </td>
									<td class="text-center">${customerInformationInstance?.searchKey}  </td>
									<td class="text-center">${customerInformationInstance?.remarks}  </td>
									%{--<td class="text-center">${customerInformationInstance?.isActive ? "Active":"Inactive"}  </td>--}%

									<td class="text-center">
										<g:if test="${customerInformationInstance?.searchKey}">

									<a  class="fa fa-check-square btn btn-block" href="#" onclick="return confirm('${message(default: 'Are you sure?')}');"  ></a>

										</g:if>
										<g:else>
											<a  class="fa fa-check-square btn btn-block" href="#" onclick="return confirm('${message(default: 'Are you sure?')}');" ></a>
										</g:else>
									</td>

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