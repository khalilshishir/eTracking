
<%@ page import="com.org.settings.Lookup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lookup.label', default: 'Lookup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Item Brand <small>Show Item Brand.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Item Brand </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${lookupInstance?.caseKeyword}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Case Keyword :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${lookupInstance}" field="caseKeyword"/></span>
							<br>
						</g:if>
						<g:if test="${lookupInstance?.caseReturnVal}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Return Value :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${lookupInstance}" field="caseReturnVal"/></span>
							<br>
						</g:if>
						<g:if test="${lookupInstance?.caseDesc}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Case Description :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${lookupInstance}" field="caseDesc"/></span>
							<br>
						</g:if>

						<g:if test="${lookupInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${lookupInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${lookupInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${lookupInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:lookupInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${lookupInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${lookupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
