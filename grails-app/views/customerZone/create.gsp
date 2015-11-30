<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerZone.label', default: 'CustomerZone')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Zone<small>Customer Zone.</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>

					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div style="text-align: center" class="message" role="status">${flash.message}</div>
						</g:if>
						<g:form url="[resource:customerZoneInstance, action:'save']" class="form-horizontal">
							<g:render template="form"/>



							<div class="hr-line-dashed"></div>

							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<div class="bs-example">
										<div class="form-group">
											<div class="col-xs-2">
											</div>
											<div class="col-xs-10">
												<g:submitButton name="create" class="btn btn-primary btn-sm save"
																value="${message(code: 'default.button.create.label', default: 'Create')}"/>
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
