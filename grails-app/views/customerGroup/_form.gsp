<%@ page import="com.org.customer.CustomerGroup" %>

<div class="row">
    <div class="col-xs-3"></div>

    <div class="col-xs-6">
        <div class="bs-example">
            <div class="form-group">
                <label for="custGroupName" class="control-label col-xs-3">Group Name *:</label>

                <div class="col-xs-9">
                    <g:field type="custGroupName" name="custGroupName" required="required" class="form-control"
                             value="${customerGroupInstance?.custGroupName}"/>
                </div>
            </div>

            <div class="form-group">
                <label for="companyName" class="control-label col-xs-3">Company Name *:</label>

                <div class="col-xs-9">
                    <g:textField name="companyName" required="required" class="form-control"
                                 value="${customerGroupInstance?.companyName}"/>
                </div>
            </div>

           %{-- <div class="form-group">
                <label for="customerType" class="control-label col-xs-3">Customer Type:</label>

                <div class="col-xs-9">

                    <select id="customerType" name="customerType" noSelection="['': 'Select One']" required=""
                            class="form-control">
                        <option value="1">Person</option>
                        <option value="2">Company</option>
                    </select>

                </div>
            </div>--}%

            <div class="form-group">
                <label for="customerType" class="control-label col-xs-3">Item Type:</label>

                <div class="col-xs-9">
                    <g:select from="${com.org.settings.Lookup.findAllByCaseKeywordIlike("%CUST_TYPE%")}"
                              noSelection="['': 'Select One']" name="customerType"  class="form-control"
                              optionKey="caseReturnVal" optionValue="caseDesc"
                              value="${customerGroupInstance?.customerType}"/>
                </div>
            </div>

            <div class="form-group">
                <label for="remarks" class="control-label col-xs-3">Remarks:</label>

                <div class="col-xs-9">
                    <g:textArea  name="remarks" class="form-control" value="${customerGroupInstance?.remarks}"/>
                </div>
            </div>


        </div>

    </div>
</div>


