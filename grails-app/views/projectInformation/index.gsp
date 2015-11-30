
<%@ page import="com.org.settings.ProjectInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projectInformation.label', default: 'ProjectInformation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Project Information <small>All the Project Information  That is created.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create New Project </i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
							<thead style="background-image: linear-gradient(to bottom, #8cce9f, rgba(138, 202, 50, 0.3));">
							<tr>
								<td>Project Name</td>
								<td>Company Name</td>
								<td>Location</td>
								<td>postal code</td>
								<td>Address</td>
								<td>Search Key</td>
								<td>Remarks</td>


							</tr>
							</thead>
							<tbody>
							<g:each in="${projectInformationInstanceList}" status="i" var="projectInformationInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${projectInformationInstance.id}">${fieldValue(bean: projectInformationInstance, field: 'projectName')}</g:link></td>
									<td class="text-center">${projectInformationInstance?.company.companyName}  </td>
									<td class="text-center">${projectInformationInstance?. geoLoc.description}  </td>
									<td class="text-center">${projectInformationInstance?. postalCode}  </td>
									<td class="text-center">${projectInformationInstance?. address1}  </td>
									<td class="text-center">${projectInformationInstance?.searchKey}  </td>
									<td class="text-center">${projectInformationInstance?.remarks}  </td>

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