
<%@ page import="com.org.customer.CustomerCountry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerCountry.label', default: 'CustomerCountry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Country <small>Show Customer Country .</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Customer Country </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>



						<g:if test="${customerCountryInstance?.countryCode}">
							<span id="countryCode-label" class="property-label"><g:message code="person.countryCode.label" default="Country Code :" /></span>

							<span class="property-value" aria-labelledby="countryCode-label">${customerCountryInstance?.countryCode} </span>
							<br>
						</g:if>
						<g:if test="${customerCountryInstance?.countryName}">
							<span id="countryName-label" class="property-label"><g:message code="person.countryName.label" default="Country Name :" /></span>

							<span class="property-value" aria-labelledby="countryName-label">${customerCountryInstance?.countryName} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:customerGroupInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${customerCountryInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${customerCountryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
