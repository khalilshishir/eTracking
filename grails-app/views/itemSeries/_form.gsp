<%@ page import="com.org.item.ItemSeries" %>


<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="seriesName" class="control-label col-xs-3">Series Name *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="seriesName" required="required" class="form-control"
							 value="${itemSeriesInstance?.seriesName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="seriesDesc" class="control-label col-xs-3">Description *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="seriesDesc" required="required" class="form-control"
							 value="${itemSeriesInstance?.seriesDesc}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${itemSeriesInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${itemSeriesInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


