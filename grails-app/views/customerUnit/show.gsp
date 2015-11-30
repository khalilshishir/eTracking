
<%@ page import="com.org.customer.CustomerUnit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerUnit.label', default: 'CustomerUnit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Unit <small>Show Customer Unit .</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Customer Unit </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${customerUnitInstance?.unitName}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Unit Name :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerUnitInstance}" field="unitName"/></span>
							<br>
						</g:if>
						<g:if test="${customerUnitInstance?.unitLevel}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Unit Level :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerUnitInstance}" field="unitLevel"/></span>
							<br>
						</g:if>
						<g:if test="${customerUnitInstance?.unitRef}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Unit Ref. :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerUnitInstance}" field="unitRef.unitName"/></span>
							<br>
						</g:if>
						<g:if test="${customerUnitInstance?.customerCompany}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Company :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerUnitInstance}" field="customerCompany.companyName"/></span>
							<br>
						</g:if>
						<g:if test="${customerUnitInstance?.project}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Project :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${customerUnitInstance}" field="project.projectName"/></span>
							<br>
						</g:if>

						<g:if test="${customerUnitInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${customerUnitInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${customerUnitInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${customerUnitInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:customerUnitInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${customerUnitInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${customerUnitInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
