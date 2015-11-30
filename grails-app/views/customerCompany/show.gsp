
<%@ page import="com.org.customer.CustomerCompany" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerCompany.label', default: 'CustomerCompany')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Company <small>Show Customer Company .</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Customer Company </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${customerCompanyInstance?.companyCode}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Company Code :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="companyCode"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.companyName}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Company Name :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="companyName"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.contactPerson}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Contact Person :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="contactPerson"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.jobTitle}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Job Title :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="jobTitle"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.address}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Address:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="address"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.address2}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Address2:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="address2"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.postalCode}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Postal Code :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="postalCode"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.geoLoc}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Location:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="geoLoc.description"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.phoneNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Phone No :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="phoneNo"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.extension}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Extension :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="extension"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.mobileNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Mobile No:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="mobileNo"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.faxNo}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Fax No :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="faxNo"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.email}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Email:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="email"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.website}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Website:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="website"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.country}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Country:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="country.countryName"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.searchKey}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Search Key:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="searchKey"/></span>
							<br>
						</g:if>
						<g:if test="${customerCompanyInstance?.custGroup}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Customer Group:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerCompanyInstance}" field="custGroup.custGroupName"/></span>
							<br>
						</g:if>

						<g:if test="${customerCompanyInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${customerCompanyInstance?.remarks} </span>
							<br>
						</g:if>
						<div class="hr-line-dashed"></div>
						<g:form url="[resource:customerCompanyInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${customerCompanyInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${customerCompanyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
