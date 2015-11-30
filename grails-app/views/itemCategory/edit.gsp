<%@ page import="com.org.item.ItemCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'itemCategory.label', default: 'ItemCategory')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Item Category<small>Enter Item Category.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

						'				</div>

					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div style="text-align: center" class="message" role="status">${flash.message}</div>
						</g:if>
						<g:form url="[resource:itemCategoryInstance, action:'update']" method="PUT" class="form-horizontal" >

							<g:hiddenField name="id" value="${itemCategoryInstance?.id}" />
							<g:hiddenField name="version" value="${itemCategoryInstance?.version}" />

							<g:render template="form"/>

						%{--<iframe width="100%" height="300px"  src="http://mis.lgsplgd.gov.bd:9000/LGSP/person/updatePassword" name="iframe_a"></iframe>--}%


							<div class="hr-line-dashed"></div>

							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<div class="bs-example">
										<div class="form-group">
											<div class="col-xs-2">
											</div>
											<div class="col-xs-10">
												<g:actionSubmit class="save btn btn-primary btn-sm" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
											</div>

										</div>
									</div>

								</div>

							</div>
						</g:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
</html>

