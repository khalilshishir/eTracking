
<%@ page import="com.org.item.ItemSubCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemSubCategory.label', default: 'ItemSubCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Item Sub Category <small>All the Item Sub Category That is created.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create New Item Sub Category</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>
						<table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
							<thead style="background-image: linear-gradient(to bottom, #8cce9f, rgba(138, 202, 50, 0.3));">
							<tr>
								<td>Sub Category Name</td>
								<td>Description</td>
								<td>Search Key</td>
								<td>Remarks</td>


							</tr>
							</thead>
							<tbody>
							<g:each in="${itemSubCategoryInstanceList}" status="i" var="itemSubCategoryInstance">
								<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

									<td><g:link action="show" id="${itemSubCategoryInstance.id}">${fieldValue(bean: itemSubCategoryInstance, field: 'subCatName')}</g:link></td>
									<td class="text-center">${itemSubCategoryInstance?.subCatDesc}  </td>
									<td class="text-center">${itemSubCategoryInstance?.searchKey}  </td>
									<td class="text-center">${itemSubCategoryInstance?.remarks}  </td>

								</tr>
							</g:each>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	</body>
</html>