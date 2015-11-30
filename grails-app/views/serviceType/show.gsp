
<%@ page import="com.org.service.ServiceType" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'serviceType.label', default: 'ServiceType')}" />
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

						<g:if test="${serviceTypeInstance?.serviceTypeIndicator}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Service Type Indicator:" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${serviceTypeInstance}" field="serviceTypeIndicator"/></span>
							<br>
						</g:if>
						<g:if test="${serviceTypeInstance?.serviceTypeDescription}">
							<span id="unitName-label" class="property-label"><g:message code="person.unitName.label" default="Service Type Description :" /></span>

							<span class="property-value" aria-labelledby="unitName-label"><g:fieldValue bean="${serviceTypeInstance}" field="serviceTypeDescription"/></span>
							<br>
						</g:if>

						<g:if test="${serviceTypeInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${serviceTypeInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${serviceTypeInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${serviceTypeInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:serviceTypeInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${serviceTypeInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${serviceTypeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
