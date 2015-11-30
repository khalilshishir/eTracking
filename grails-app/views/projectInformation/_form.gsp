<%@ page import="com.org.settings.ProjectInformation" %>



<div class="row">
	<div class="col-xs-2"></div>
	<div class="col-xs-6">
		<div class="bs-example">

			<div class="form-group">
				<label for="projectName" class="control-label col-xs-4"> Project Name *:</label>

				<div class="col-xs-8">
					<g:field type="custName" name="projectName"  class="form-control"
							 value="${projectInformationInstance?.projectName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="company" class="control-label col-xs-4"> Company *:</label>

				<div class="col-xs-8">
					<g:select from="${com.org.customer.CustomerCompany.list()}"  name="company" optionKey="id"  class="form-control" optionValue="companyName"
							  value="${projectInformationInstance?.company?.id}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="address1" class="control-label col-xs-4">Address :</label>

				<div class="col-xs-8">
					<g:field type="address1" name="address1"  class="form-control"
							 value="${projectInformationInstance?.address1}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Location:</label>

				<div class="col-xs-8">
					<g:select name="geoLoc.id"  class="form-control" from="${com.org.customer.CustomerGeographicalLocation.list()}"
							  optionKey="id" optionValue="description"
							  value="${projectInformationInstance?.geoLoc?.id}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="phoneNo" class="control-label col-xs-4">Phone No:</label>

				<div class="col-xs-8">
					<g:field type="extension" name="phoneNo"  class="form-control"
							 value="${projectInformationInstance?.phoneNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Extension:</label>

				<div class="col-xs-8">
					<g:field type="extension" name="extension"  class="form-control"
							 value="${projectInformationInstance?.extension}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Mobile No:</label>

				<div class="col-xs-8">
					<g:field type="mobileNo" name="mobileNo"  class="form-control"
							 value="${projectInformationInstance?.mobileNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="faxNo" class="control-label col-xs-4">Fax No:</label>

				<div class="col-xs-8">
					<g:field type="faxNo" name="faxNo"  class="form-control"
							 value="${projectInformationInstance?.faxNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="control-label col-xs-4">Email:</label>

				<div class="col-xs-8">
					<g:field type="email" name="email"  class="form-control"
							 value="${projectInformationInstance?.email}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="website" class="control-label col-xs-4">Website:</label>

				<div class="col-xs-8">
					<g:field type="website" name="website"  class="form-control"
							 value="${projectInformationInstance?.website}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Country:</label>

				<div class="col-xs-8">
					<g:select name="country.id"  class="form-control" from="${com.org.customer.CustomerCountry.list()}"
							  optionKey="id" optionValue="countryName"
							  value="${projectInformationInstance?.country?.id}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-4">Search Key :</label>

				<div class="col-xs-8">
					<g:textField name="searchKey"  class="form-control"
								 value="${projectInformationInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-4">Remarks:</label>

				<div class="col-xs-8">
					<g:textArea  name="remarks" class="form-control" value="${projectInformationInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


