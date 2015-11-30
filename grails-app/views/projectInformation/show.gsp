
<%@ page import="com.org.settings.ProjectInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projectInformation.label', default: 'ProjectInformation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Project Information <small>Show Project Information .</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Project Information </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>


						<g:if test="${projectInformationInstance?.projectName}">
							<span id="custName-label" class="property-label"><g:message code="person.projectName.label" default="Project Name :" /></span>

							<span class="property-value" aria-labelledby="custName-label"><g:fieldValue bean="${projectInformationInstance}" field="projectName"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.company}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Company Name :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="company.companyName"/></span>
							<br>
						</g:if>

						<g:if test="${projectInformationInstance?.address1}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Address:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="address1"/></span>
							<br>
						</g:if>

						<g:if test="${projectInformationInstance?.postalCode}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Postal Code :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="postalCode"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.geoLoc}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Location:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="geoLoc.description"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.phoneNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Phone No :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="phoneNo"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.extension}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Extension :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="extension"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.mobileNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Mobile No:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="mobileNo"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.faxNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Fax No :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="faxNo"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.email}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Email:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="email"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.website}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Website:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="website"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.country}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Country:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="country.countryName"/></span>
							<br>
						</g:if>
						<g:if test="${projectInformationInstance?.searchKey}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Search Key:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${projectInformationInstance}" field="searchKey"/></span>
							<br>
						</g:if>


						<g:if test="${projectInformationInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${projectInformationInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:projectInformationInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${projectInformationInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${projectInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
								<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</fieldset>
						</g:form>



					</div>
				</div>
			</div>
		</div>
	</div>

	</body>
</html>
