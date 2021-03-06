
<%@ page import="com.org.item.ItemSubCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemSubCategory.label', default: 'ItemSubCategory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Item Sub Category <small>Show Item Sub Category.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Item Sub Category </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${itemSubCategoryInstance?.subCatName}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Sub Category Name :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemSubCategoryInstance}" field="subCatName"/></span>
							<br>
						</g:if>
						<g:if test="${itemSubCategoryInstance?.subCatDesc}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Description :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${itemSubCategoryInstance}" field="subCatDesc"/></span>
							<br>
						</g:if>

						<g:if test="${itemSubCategoryInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${itemSubCategoryInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${itemSubCategoryInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${itemSubCategoryInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:itemSubCategoryInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${itemSubCategoryInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${itemSubCategoryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
