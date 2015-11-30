<%@ page import="com.org.settings.Lookup" %>

<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="caseKeyword" class="control-label col-xs-3">Case Keyword *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="caseKeyword" required="required" class="form-control"
							 value="${lookupInstance?.caseKeyword}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="caseReturnVal" class="control-label col-xs-3">Return Value *:</label>

				<div class="col-xs-9">
					<g:field type="number" name="caseReturnVal" required="required" class="form-control"
							 value="${lookupInstance?.caseReturnVal}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="caseDesc" class="control-label col-xs-3">Case Description *:</label>

				<div class="col-xs-9">
					<g:field type="zoneName" name="caseDesc" required="required" class="form-control"
							 value="${lookupInstance?.caseDesc}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${lookupInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${lookupInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


