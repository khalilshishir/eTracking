
<%@ page import="com.org.customer.CustomerGroup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerGroup.label', default: 'CustomerGroup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Group <small>Show Customer Group .</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Customer Group </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${customerGroupInstance?.custGroupName}">
							<span id="customerGroupName-label" class="property-label"><g:message code="customerGroup.customerGroupName.label" default="Customer Group Name :" /></span>

							<span class="property-value" aria-labelledby="customerGroupName-label"><g:fieldValue bean="${customerGroupInstance}" field="custGroupName"/></span>
							<br>
						</g:if>

						<g:if test="${customerGroupInstance?.companyName}">
							<span id="companyName-label" class="property-label"><g:message code="person.companyName.label" default="Company Name :" /></span>

							<span class="property-value" aria-labelledby="customerType-label"><g:fieldValue bean="${customerGroupInstance}" field="companyName"/></span>
							<br>
						</g:if>

						<g:if test="${customerGroupInstance?.customerType}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Customer Type :" /></span>

							<span class="property-value" aria-labelledby="username-label">${customerGroupInstance?.customerType==1 ? "Person":"Company"} </span>
							<br>
						</g:if>
						<g:if test="${customerGroupInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${customerGroupInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:customerGroupInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${customerGroupInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${customerGroupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
