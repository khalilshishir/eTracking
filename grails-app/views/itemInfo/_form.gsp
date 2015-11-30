<%@ page import="com.org.item.ItemInfo" %>


<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="itemNo" class="control-label col-xs-3">Item No *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="itemNo" required="required" class="form-control"
							 value="${itemInfoInstance?.itemNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="itemDesc1" class="control-label col-xs-3">Description 1:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="itemDesc1"  class="form-control"
							 value="${itemInfoInstance?.itemDesc1}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="itemDesc2" class="control-label col-xs-3">Description 2:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="itemDesc2"  class="form-control"
							 value="${itemInfoInstance?.itemDesc2}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="brand" class="control-label col-xs-3">Brand:</label>

				<div class="col-xs-9">
					<g:select from="${com.org.item.ItemBrand.list()}" type="brand" name="brand"  class="form-control"
							optionKey="id" optionValue="brandName"
							 value="${itemInfoInstance?.brand?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="itemType" class="control-label col-xs-3">Item Type:</label>

				<div class="col-xs-9">
					<g:select from="${com.org.settings.Lookup.findAllByCaseKeywordLike("ITEM_TYPE")}" type="brand" name="itemType"  class="form-control"
							  noSelection="['': 'Select One']"
							  optionKey="caseReturnVal" optionValue="caseDesc"
							 value="${itemInfoInstance?.itemType}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="cat" class="control-label col-xs-3">Category:</label>

				<div class="col-xs-9">
					<g:select from="${com.org.item.ItemCategory.list()}" type="brand" name="cat"  class="form-control"
							optionKey="id" optionValue="catName"
							 value="${itemInfoInstance?.cat?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="itemSubCat" class="control-label col-xs-3">Sub Category:</label>

				<div class="col-xs-9">
					<g:select from="${com.org.item.ItemSubCategory.list()}" type="brand" name="itemSubCat"  class="form-control"
							optionKey="id" optionValue="subCatName"
							 value="${itemInfoInstance?.itemSubCat?.id}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="series" class="control-label col-xs-3">Series:</label>

				<div class="col-xs-9">
					<g:select from="${com.org.item.ItemSeries.list()}" type="brand" name="series"  class="form-control"
							optionKey="id" optionValue="seriesName"
							 value="${itemInfoInstance?.series?.id}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${itemInfoInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${itemInfoInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


