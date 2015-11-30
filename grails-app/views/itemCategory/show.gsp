
<%@ page import="com.org.item.ItemCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemCategory.label', default: 'ItemCategory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Item Category <small>Show Item Category.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Item Category </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${itemCategoryInstance?.catName}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Category Name :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemCategoryInstance}" field="catName"/></span>
							<br>
						</g:if>
						<g:if test="${itemCategoryInstance?.catDesc}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Description :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemCategoryInstance}" field="catDesc"/></span>
							<br>
						</g:if>

						<g:if test="${itemCategoryInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${itemCategoryInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${itemCategoryInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${itemCategoryInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:itemCategoryInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${itemCategoryInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${itemCategoryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
