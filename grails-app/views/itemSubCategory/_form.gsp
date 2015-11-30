<%@ page import="com.org.item.ItemSubCategory" %>


<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="subCatName" class="control-label col-xs-3">Sub Category  Name *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="subCatName" required="required" class="form-control"
							 value="${itemSubCategoryInstance?.subCatName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="subCatDesc" class="control-label col-xs-3">Description *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="subCatDesc" required="required" class="form-control"
							 value="${itemSubCategoryInstance?.subCatDesc}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${itemSubCategoryInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${itemSubCategoryInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


