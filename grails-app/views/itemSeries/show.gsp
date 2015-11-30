
<%@ page import="com.org.item.ItemSeries" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemSeries.label', default: 'ItemSeries')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Item Series <small>Show Item Series.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Item Series </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${itemSeriesInstance?.seriesName}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Series Name :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemSeriesInstance}" field="seriesName"/></span>
							<br>
						</g:if>
						<g:if test="${itemSeriesInstance?.seriesDesc}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Description :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemSeriesInstance}" field="seriesDesc"/></span>
							<br>
						</g:if>

						<g:if test="${itemSeriesInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${itemSeriesInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${itemSeriesInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${itemSeriesInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:itemSeriesInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${itemSeriesInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${itemSeriesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
