<%@ page import="com.org.item.ItemCategory" %>

<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="catName" class="control-label col-xs-3">Category Name *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="catName" required="required" class="form-control"
							 value="${itemCategoryInstance?.catName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="catDesc" class="control-label col-xs-3">Description *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="catDesc" required="required" class="form-control"
							 value="${itemCategoryInstance?.catDesc}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${itemCategoryInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${itemCategoryInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


