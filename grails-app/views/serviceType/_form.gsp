<%@ page import="com.org.service.ServiceType" %>

<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="serviceTypeIndicator" class="control-label col-xs-3">Indicator *:</label>

				<div class="col-xs-9">
					<g:field type="unitName" name="serviceTypeIndicator" required="required" class="form-control"
							 value="${serviceTypeInstance?.serviceTypeIndicator}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="serviceTypeDescription" class="control-label col-xs-3">Description *:</label>

				<div class="col-xs-9">
					<g:field type="text" name="serviceTypeDescription" required="required" class="form-control"
							 value="${serviceTypeInstance?.serviceTypeDescription}"/>
				</div>
			</div>



			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${serviceTypeInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${serviceTypeInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>