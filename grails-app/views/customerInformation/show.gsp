
<%@ page import="com.org.customer.CustomerInformation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerInformation.label', default: 'CustomerInformation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Information <small>Show Customer Information .</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Customer Information </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${customerInformationInstance?.custCode}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Customer Code :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="custCode"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.custName}">
							<span id="custName-label" class="property-label"><g:message code="person.unitName.label" default="Customer Name :" /></span>

							<span class="property-value" aria-labelledby="custName-label"><g:fieldValue bean="${customerInformationInstance}" field="custName"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.company}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Company Name :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="company.companyName"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.contactPerson}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Contact Person :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="contactPerson"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.jobTitle}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Job Title :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="jobTitle"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.address1}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Address:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="address1"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.address2}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Address2:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="address2"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.postalCode}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Postal Code :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="postalCode"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.geoLoc}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Location:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="geoLoc.description"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.phoneNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Phone No :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="phoneNo"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.extension}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Extension :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="extension"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.mobileNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Mobile No:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="mobileNo"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.faxNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Fax No :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="faxNo"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.email}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Email:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="email"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.website}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Website:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="website"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.country}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Country:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="country.countryName"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.project}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Project:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="project.projectName"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.searchKey}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Search Key:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="searchKey"/></span>
							<br>
						</g:if>
						<g:if test="${customerInformationInstance?.custGroup}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Customer Group:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerInformationInstance}" field="custGroup.custGroupName"/></span>
							<br>
						</g:if>

						<g:if test="${customerInformationInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${customerInformationInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:customerInformationInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${customerInformationInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${customerInformationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
