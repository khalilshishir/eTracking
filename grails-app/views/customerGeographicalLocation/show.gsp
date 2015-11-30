
<%@ page import="com.org.customer.CustomerGeographicalLocation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerGeographicalLocation.label', default: 'CustomerGeographicalLocation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Zone <small>Show Customer Zone .</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Customer Zone </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${customerGeographicalLocationInstance?.divCode}">
							<span id="divCode-label" class="property-label"><g:message code="person.divCode.label" default="Division Code :" /></span>

							<span class="property-value" aria-labelledby="distCode-label"><g:fieldValue bean="${customerGeographicalLocationInstance}" field="divCode"/></span>
							<br>
						</g:if>
						<g:if test="${customerGeographicalLocationInstance?.distCode}">
							<span id="thanaCode-label" class="property-label"><g:message code="person.thanaCode.label" default="District Code :" /></span>

							<span class="property-value" aria-labelledby="distCode-label"><g:fieldValue bean="${customerGeographicalLocationInstance}" field="distCode"/></span>
							<br>
						</g:if>
						<g:if test="${customerGeographicalLocationInstance?.thanaCode}">
							<span id="thanaCode-label" class="property-label"><g:message code="person.thanaCode.label" default="thana Code :" /></span>

							<span class="property-value" aria-labelledby="thanaCode-label"><g:fieldValue bean="${customerGeographicalLocationInstance}" field="thanaCode"/></span>
							<br>
						</g:if>
						<g:if test="${customerGeographicalLocationInstance?.description}">
							<span id="description-label" class="property-label"><g:message code="person.thanaCode.label" default="Description :" /></span>

							<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${customerGeographicalLocationInstance}" field="description"/></span>
							<br>
						</g:if>

						<g:if test="${customerGeographicalLocationInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${customerGeographicalLocationInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${customerGeographicalLocationInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${customerGeographicalLocationInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:customerGeographicalLocationInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${customerGeographicalLocationInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${customerGeographicalLocationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
