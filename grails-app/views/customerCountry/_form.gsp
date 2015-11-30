<%@ page import="com.org.customer.CustomerCountry" %>


<div class="row">
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="countryCode" class="control-label col-xs-3">Country Code *:</label>

				<div class="col-xs-9">
					<g:textField name="countryCode" required="required" class="form-control"
								 value="${customerCountryInstance?.countryCode}"/>
				</div>
			</div>

		

			<div class="form-group">
				<label for="countryName" class="control-label col-xs-3">Country Name:</label>

				<div class="col-xs-9">
					<g:textField  name="countryName" class="form-control" value="${customerCountryInstance?.countryName}"/>
				</div>
			</div>


		</div>

	</div>
</div>

