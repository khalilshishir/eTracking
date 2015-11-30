<%@ page import="com.org.customer.CustomerGeographicalLocation" %>
<div class="row">
	<div class="col-xs-3"></div>
	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="divCode" class="control-label col-xs-3">division Code *:</label>
				<div class="col-xs-9">
					<g:field type="divCode" name="divCode" required="required" class="form-control"
					 value="${customerGeographicalLocationInstance?.divCode}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="distCode" class="control-label col-xs-3"> District Code :</label>

				<div class="col-xs-9">
					<g:field type="distCode" name="distCode"  class="form-control"
					value="${customerGeographicalLocationInstance?.distCode}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="thanaCode" class="control-label col-xs-3">Thana Code :</label>

				<div class="col-xs-9">
					<g:field type="textField" name="thanaCode"  class="form-control"
							 value="${customerGeographicalLocationInstance?.thanaCode}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="description" class="control-label col-xs-3">Description *:</label>

				<div class="col-xs-9">
					<g:field type="description" name="description" required="required" class="form-control"
							 value="${customerGeographicalLocationInstance?.description}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${customerGeographicalLocationInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${customerGeographicalLocationInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


