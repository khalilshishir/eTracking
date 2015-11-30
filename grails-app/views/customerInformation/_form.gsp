<%@ page import="com.org.customer.CustomerInformation" %>
<script type="text/javascript">
    function loadDistrict(geoCode){
        if(geoCode == ''){
			alert("Plz Select a Division.");
			$('#distCode').empty().append();
			$('#thanaCode').empty().append();
//			$('#thanaCode').removeClass('blank');
            return;
        }
//            if(districtId != ''){
        $.ajax({
            type:"POST",
            url:"${createLink(controller: 'customerInformation', action: 'findDistrict')}?geoCode="+geoCode,
            dataType: "html",
            success: function (data)
            {
                $('#distCode').empty().append(data);
//                $('#unionParishadName').append(data);
//                    $('#fiscalYear').val('');
                $('#tbody').empty();
            },
            failure: function (data) {
                alert('failed')
            }
        });
//            }
    }

	function loadThana(geoCode){
		if(geoCode == ''){
			alert("Plz Select a District.");
			$('#thanaCode').empty().append();
			return;
		}
//            if(districtId != ''){
		$.ajax({
			type:"POST",
			url:"${createLink(controller: 'customerInformation', action: 'findThana')}?geoCode="+geoCode,
			dataType: "html",
			success: function (data)
			{
				$('#thanaCode').empty().append(data);
//                $('#unionParishadName').append(data);
//                    $('#fiscalYear').val('');
				$('#tbody').empty();
			},
			failure: function (data) {
				alert('failed')
			}
		});
//            }
	}

</script>

<div class="row">
	<div class="col-xs-2"></div>
	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="custCode" class="control-label col-xs-4">Customer Code *:</label>
				<div class="col-xs-8">
					<g:field type="custCode" name="custCode" required="required" class="form-control"
							 value="${customerInformationInstance?.custCode}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="custName" class="control-label col-xs-4"> Customer Name *:</label>

				<div class="col-xs-8">
					<g:field type="custName" name="custName"  class="form-control"
							 value="${customerInformationInstance?.custName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="company" class="control-label col-xs-4"> Company *:</label>

				<div class="col-xs-8">
					<g:select from="${com.org.customer.CustomerCompany.list()}"  name="company" optionKey="id"  class="form-control" optionValue="companyName"
							 value="${customerInformationInstance?.company?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="contactPerson" class="control-label col-xs-4">Contact Person :</label>

				<div class="col-xs-8">
					<g:field type="textField" name="contactPerson"  class="form-control"
							 value="${customerInformationInstance?.contactPerson}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="jobTitle" class="control-label col-xs-4">Job Title :</label>

				<div class="col-xs-8">
					<g:field type="jobTitle" name="jobTitle"  class="form-control"
							 value="${customerInformationInstance?.jobTitle}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="address1" class="control-label col-xs-4">Address 1:</label>

				<div class="col-xs-8">
					<g:field type="address1" name="address1"  class="form-control"
							 value="${customerInformationInstance?.address1}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="address2" class="control-label col-xs-4">Address 2:</label>

				<div class="col-xs-8">
					<g:field type="address2" name="address2"  class="form-control"
							 value="${customerInformationInstance?.address2}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Postal Code:</label>

				<div class="col-xs-8">
					<g:field type="postalCode" name="postalCode"  class="form-control"
							 value="${customerInformationInstance?.postalCode}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="divCode" class="control-label col-xs-4">Division:</label>

				<div class="col-xs-8">
					<g:select name="divCode"  class="form-control" from="${results}" noSelection="['': 'Select One']"
							  optionKey="GEO_CODE" optionValue="description" onchange="loadDistrict(this.value)"
							  value="${customerInformationInstance?.divCode}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="disCode" class="control-label col-xs-4">District:</label>

				<div class="col-xs-8">
					<g:select name="disCode" id="distCode"  class="form-control" from="${result}" noSelection="['': 'Select One']"
							  optionKey="GEO_CODE" optionValue="description" onchange="loadThana(this.value)"
							  value="${customerInformationInstance?.disCode}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="thanaCode" class="control-label col-xs-4">Thana:</label>

				<div class="col-xs-8">
					<g:select name="thanaCode" id="thanaCode"  class="form-control" from="${result}" noSelection="['': 'Select One']"
							  optionKey="GEO_CODE" optionValue="description"
							  value="${customerInformationInstance?.thanaCode}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="phoneNo" class="control-label col-xs-4">Phone No:</label>

				<div class="col-xs-8">
					<g:field type="extension" name="phoneNo"  class="form-control"
							 value="${customerInformationInstance?.phoneNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Extension:</label>

				<div class="col-xs-8">
					<g:field type="extension" name="extension"  class="form-control"
							 value="${customerInformationInstance?.extension}"/>
				</div>
			</div>

			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Mobile No:</label>

				<div class="col-xs-8">
					<g:field type="mobileNo" name="mobileNo"  class="form-control"
							 value="${customerInformationInstance?.mobileNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="faxNo" class="control-label col-xs-4">Fax No:</label>

				<div class="col-xs-8">
					<g:field type="faxNo" name="faxNo"  class="form-control"
							 value="${customerInformationInstance?.faxNo}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="control-label col-xs-4">Email:</label>

				<div class="col-xs-8">
					<g:field type="email" name="email"  class="form-control"
							 value="${customerInformationInstance?.email}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="website" class="control-label col-xs-4">Website:</label>

				<div class="col-xs-8">
					<g:field type="website" name="website"  class="form-control"
							 value="${customerInformationInstance?.website}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Country:</label>

				<div class="col-xs-8">
					<g:select name="country.id"  class="form-control" from="${com.org.customer.CustomerCountry.list()}"
							  optionKey="id" optionValue="countryName"
							  value="${customerInformationInstance?.country?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="postalCode" class="control-label col-xs-4">Customer Group:</label>

				<div class="col-xs-8">
					<g:select name="custGroup.id"  class="form-control" from="${com.org.customer.CustomerGroup.list()}"
							  optionKey="id" optionValue="custGroupName"
							  value="${customerInformationInstance?.custGroup?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="project.id" class="control-label col-xs-4">Project :</label>

				<div class="col-xs-8">
					<g:select from="${com.org.settings.ProjectInformation.list()}" noSelection="['': 'Select One']"
							  optionKey="id" optionValue="projectName"
							  name="project.id"  class="form-control"
							  value="${customerInformationInstance?.project?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="zone.id" class="control-label col-xs-4">Zone :</label>

				<div class="col-xs-8">
					<g:select from="${com.org.customer.CustomerZone.list()}" noSelection="['': 'Select One']"
							  optionKey="id" optionValue="zoneName"
							  name="zone.id"  class="form-control"
							  value="${customerInformationInstance?.zone?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="unit.id" class="control-label col-xs-4">Unit :</label>

				<div class="col-xs-8">
					<g:select from="${com.org.customer.CustomerUnit.list()}" noSelection="['': 'Select One']"
							  optionKey="id" optionValue="unitName"
							  name="unit.id"  class="form-control"
							  value="${customerInformationInstance?.unit?.id}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-4">Search Key :</label>

				<div class="col-xs-8">
					<g:textField name="searchKey"  class="form-control"
								 value="${customerInformationInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-4">Remarks:</label>

				<div class="col-xs-8">
					<g:textArea  name="remarks" class="form-control" value="${customerInformationInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>


