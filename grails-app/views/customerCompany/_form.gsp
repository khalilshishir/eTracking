<%@ page import="com.org.customer.CustomerCompany" %>


<div class="row">
	<div class="col-xs-2"></div>
	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="companyCode" class="control-label col-xs-4">Company Code *:</label>
				<div class="col-xs-8">
					<g:field type="companyCode" name="companyCode" required="required" class="form-control"
							 value="${customerCompanyInstance?.companyCode}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="companyName" class="control-label col-xs-4"> Company Name *:</label>

				<div class="col-xs-8">
					<g:field type="companyName" name="companyName"  class="form-control"
							 value="${customerCompanyInstance?.companyName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="contactPerson" class="control-label col-xs-4">Contact Person :</label>

				<div class="col-xs-8">
					<g:field type="textField" name="contactPerson"  class="form-control"
							 value="${customerCompanyInstance?.contactPerson}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="jobTitle" class="control-label col-xs-4">Job Title :</label>

				<div class="col-xs-8">
					<g:field type="jobTitle" name="jobTitle"  class="form-control"
							 value="${customerCompanyInstance?.jobTitle}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="address" class="control-label col-xs-4">Address :</label>

				<div class="col-xs-8">
					<g:field type="address" name="address"  class="form-control"
							 value="${customerCompanyInstance?.address}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="address2" class="control-label col-xs-4">Address 2:</label>

				<div class="col-xs-8">
					<g:field type="address2" name="address2"  class="form-control"
							 value="${customerCompanyInstance?.address2}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Postal Code:</label>

				<div class="col-xs-8">
					<g:field type="postalCode" name="postalCode"  class="form-control"
							 value="${customerCompanyInstance?.postalCode}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Location:</label>

				<div class="col-xs-8">
					<g:select name="geoLoc.id"  class="form-control" from="${com.org.customer.CustomerGeographicalLocation.list()}"
						optionKey="id" optionValue="description"
							 value="${customerCompanyInstance?.geoLoc?.id}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Extension:</label>

				<div class="col-xs-8">
					<g:field type="extension" name="extension"  class="form-control"
							 value="${customerCompanyInstance?.extension}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Mobile No:</label>

				<div class="col-xs-8">
					<g:field type="mobileNo" name="mobileNo"  class="form-control"
							 value="${customerCompanyInstance?.mobileNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="faxNo" class="control-label col-xs-4">Fax No:</label>

				<div class="col-xs-8">
					<g:field type="faxNo" name="faxNo"  class="form-control"
							 value="${customerCompanyInstance?.faxNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="control-label col-xs-4">Email:</label>

				<div class="col-xs-8">
					<g:field type="email" name="email"  class="form-control"
							 value="${customerCompanyInstance?.email}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="website" class="control-label col-xs-4">Website:</label>

				<div class="col-xs-8">
					<g:field type="website" name="website"  class="form-control"
							 value="${customerCompanyInstance?.website}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Country:</label>

				<div class="col-xs-8">
					<g:select name="country.id"  class="form-control" from="${com.org.customer.CustomerCountry.list()}"
							 optionKey="id" optionValue="countryName"
							 value="${customerCompanyInstance?.country?.id}"/>
				</div>
			</div>
				<div class="form-group">
					<label for="postalCode" class="control-label col-xs-4">Customer Group:</label>

					<div class="col-xs-8">
						<g:select name="custGroup.id"  class="form-control" from="${com.org.customer.CustomerGroup.list()}"
								 optionKey="id" optionValue="custGroupName"
								 value="${customerCompanyInstance?.custGroup?.id}"/>
					</div>
				</div>
			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-4">Search Key :</label>

				<div class="col-xs-8">
					<g:textField name="searchKey"  class="form-control"
								 value="${customerCompanyInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-4">Remarks:</label>

				<div class="col-xs-8">
					<g:textArea  name="remarks" class="form-control" value="${customerCompanyInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


