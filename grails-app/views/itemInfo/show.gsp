
<%@ page import="com.org.item.ItemInfo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemInfo.label', default: 'ItemInfo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Item Info <small>Show Item Info.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Item Info </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${itemInfoInstance?.itemNo}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Item No :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemInfoInstance}" field="itemNo"/></span>
							<br>
						</g:if>
						<g:if test="${itemInfoInstance?.itemDesc1}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Description 1 :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemInfoInstance}" field="itemDesc1"/></span>
							<br>
						</g:if>
						<g:if test="${itemInfoInstance?.itemDesc2}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Description 2:" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemInfoInstance}" field="itemDesc2"/></span>
							<br>
						</g:if>
						<g:if test="${itemInfoInstance?.brand}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Brand:" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemInfoInstance}" field="brand.brandName"/></span>
							<br>
						</g:if>
						<g:if test="${itemInfoInstance?.cat}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Category:" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemInfoInstance}" field="cat.catName"/></span>
							<br>
						</g:if>
						<g:if test="${itemInfoInstance?.itemSubCat}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Sub Category:" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemInfoInstance}" field="itemSubCat.subCatName"/></span>
							<br>
						</g:if>
						<g:if test="${itemInfoInstance?.series}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Series:" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemInfoInstance}" field="series.seriesName"/></span>
							<br>
						</g:if>

						<g:if test="${itemInfoInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${itemInfoInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${itemInfoInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${itemInfoInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:itemInfoInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${itemInfoInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${itemInfoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
