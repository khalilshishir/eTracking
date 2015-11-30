<%@ page import="com.org.service.ServiceItemMaster" %>


<script type="text/javascript">
    function loadCustomer(customerId){
        if(customerId == ''){
			alert("Plz Select a Company.");
			$('#customer').empty().append();
            return;
        }
//            if(customerId != ''){
        $.ajax({
            type:"POST",
            url:"${createLink(controller: 'serviceItemMaster', action: 'getCustomerByCompany')}?companyId="+customerId,
            dataType: "html",
            success: function (data)
            {
                $('#customer').empty().append(data);
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
	<div class="col-xs-3"></div>

	<div class="col-xs-6">
		<div class="bs-example">
			<div class="form-group">
				<label for="company" class="control-label col-xs-3">Company *:</label>

				<div class="col-xs-9">
					<g:select from="${com.org.customer.CustomerCompany.list()}" name="company" onchange="loadCustomer(this.value)"
							 optionKey="id" optionValue="companyName" required="required" class="form-control"
							 value="${serviceItemMasterInstance?.company?.companyName}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="customer" class="control-label col-xs-3">Customer *:</label>

				<div class="col-xs-9">
					<g:select  from="${com.org.customer.CustomerInformation.list()}" name="customer"
							   optionKey="id" optionValue="custName" required="required" class="form-control"
							 value="${serviceItemMasterInstance?.customer?.customerName}"/>
				</div>
			</div>



			<div class="form-group">
				<label for="searchKey" class="control-label col-xs-3">Search Key :</label>

				<div class="col-xs-9">
					<g:textField name="searchKey"  class="form-control datepicker"
								 value="${serviceItemMasterInstance?.searchKey}"/>
				</div>
			</div>


			<div class="form-group">
				<label for="remarks" class="control-label col-xs-3">Remarks:</label>

				<div class="col-xs-9">
					<g:textArea  name="remarks" class="form-control" value="${serviceItemMasterInstance?.remarks}"/>
				</div>
			</div>


		</div>

	</div>
</div>

<div class="hr-line-dashed"></div>


	<div class="col-xs-12 detail-list ${hasErrors(bean: serviceItemMasterInstance, field: 'serviceItemDetails', 'error')} ">
		<div class="form-group">
				<fieldset>
					<g:render template="details"/>
				</fieldset>
		</div>
	</div>

<div aria-hidden="true" style="display: none;" class="modal" id="myModal" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h5 class="modal-title">Enter Service Information</h5>
			</div><div class="container"></div>
			<div class="modal-body">
				<div class="row">
					<div class="col-xs-1"></div>

					<div class="col-xs-10">
						<div class="bs-example">
							<div class="form-group">
								<label for="company" class="control-label col-xs-5">Service Type *:</label>

								<div class="col-xs-7">
									<g:select from="${com.org.service.ServiceType.list()}" name="serviceType"
											  optionKey="id" optionValue="serviceTypeDescription" required="required" class="form-control"
											  value="${serviceTypeDetailsInstance?.serviceType?.id}"/>
								</div>
							</div>
							<div class="form-group">
								<label for="customer" class="control-label col-xs-5">Start Date *:</label>

								<div class="col-xs-7">
									%{--<g:field type="text" class="form-control" name="startDate" value="${serviceTypeDetailsInstance?.startDate}"/>--}%
									<g:field type="textField" name="startDate" value="${formatDate(format:'dd/MM/yyyy',date:serviceTypeDetailsInstance?.startDate)}"
											 id='startDate' class='datepicker form-control' style="width: 150px; text-align: center" />

								</div>
							</div>
							<div class="form-group">
								<label for="endDate" class="control-label col-xs-5">End Date *:</label>

								<div class="col-xs-7">
									<g:field type="textField" name="endDate" value="${serviceTypeDetailsInstance?.endDate}" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<label for="amcAgreementNo" class="control-label col-xs-5">AMC Agreement No *:</label>

								<div class="col-xs-7">
									<g:field type="text" name="amcAgreementNo" value="${serviceTypeDetailsInstance?.amcAgreementNo}" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<label for="slaAgreementNo" class="control-label col-xs-5">SLA Agreement No *:</label>

								<div class="col-xs-7">
									<g:field type="text" name="slaAgreementNo" value="${serviceTypeDetailsInstance?.slaAgreementNo}" class="form-control"/>
								</div>
							</div>
							<div class="form-group">
								<label for="pmScheduleNo" class="control-label col-xs-5">PM Schedule No *:</label>

								<div class="col-xs-7">
									<g:field type="text" name="pmScheduleNo" value="${serviceTypeDetailsInstance?.pmScheduleNo}" class="form-control"/>
								</div>
							</div>


							%{--<div class="form-group">
                                <label for="searchKey" class="control-label col-xs-5">Search Key :</label>

                                <div class="col-xs-7">
                                    <g:textField name="searchKey"  class="form-control"
                                                 value="${serviceItemMasterInstance?.searchKey}"/>
                                </div>
                            </div>


                            <div class="form-group">
                                <label for="remarks" class="control-label col-xs-5">Remarks:</label>

                                <div class="col-xs-7">
                                    <g:textArea  name="remarks" class="form-control" value="${serviceItemMasterInstance?.remarks}"/>
                                </div>
                            </div>--}%


						</div>

					</div>
				</div>

				%{--<a data-toggle="modal" href="#myModal2" class="btn btn-primary">Launch modal</a>--}%
			</div>
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn">Cancel</a>
				<a href="#" class="btn btn-primary">Save </a>
			</div>
		</div>
	</div>
</div>


<div class="modal" id="myModal2" data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title">Second Modal title</h4>
			</div><div class="container"></div>
			<div class="modal-body">          Content for the dialog / modal goes here.        </div>
			<div class="modal-footer">
				<a href="#" data-dismiss="modal" class="btn">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>
	</div>
</div>