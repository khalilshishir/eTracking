<%@ page import="com.org.customer.CustomerZone" %>


<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="zoneName" class="control-label col-xs-3">Zone Name *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="zoneName" required="required" class="form-control"
							 value="${customerZoneInstance?.zoneName}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${customerZoneInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${customerZoneInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


