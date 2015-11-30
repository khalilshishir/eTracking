<%@ page import="com.org.customer.CustomerUnit" %>



<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="unitName" class="control-label col-xs-3">Unit Name *:</label>

				<div class="col-xs-9">
					<g:field type="unitName" name="unitName" required="required" class="form-control"
							 value="${customerUnitInstance?.unitName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="unitLevel" class="control-label col-xs-3">Unit Level *:</label>

				<div class="col-xs-9">
					<g:field type="number" name="unitLevel" required="required" class="form-control"
							 value="${customerUnitInstance?.unitLevel}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="unitRef" class="control-label col-xs-3">Unit Reference :</label>

				<div class="col-xs-9">
					<g:select from="${com.org.customer.CustomerUnit.list()}" noSelection="['': 'Select One']"
							  optionKey="id" optionValue="unitName"
							   name="unitRef"  class="form-control"
							 value="${customerUnitInstance?.unitRef?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="unitRef" class="control-label col-xs-3">Company :</label>

				<div class="col-xs-9">
					<g:select from="${com.org.customer.CustomerCompany.list()}" noSelection="['': 'Select One']"
							  optionKey="id" optionValue="companyName"
							   name="customerCompany"  class="form-control"
							 value="${customerUnitInstance?.customerCompany?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="unitRef" class="control-label col-xs-3">Project :</label>

				<div class="col-xs-9">
					<g:select from="${com.org.settings.ProjectInformation.list()}" noSelection="['': 'Select One']"
							  optionKey="id" optionValue="projectName"
							   name="project"  class="form-control"
							 value="${customerUnitInstance?.project?.id}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control"
								 value="${customerUnitInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${customerUnitInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


