<%@ page import="com.org.item.ItemBrand" %>



<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="brandName" class="control-label col-xs-3">Brand Name *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="brandName" required="required" class="form-control"
							 value="${itemBrandInstance?.brandName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="brandDesc" class="control-label col-xs-3">Description *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="brandDesc" required="required" class="form-control"
							 value="${itemBrandInstance?.brandDesc}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${itemBrandInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${itemBrandInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


