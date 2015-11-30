<%@ page import="com.uma.Authority" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="layout" content="main">

</head>

<body>
<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Assign Right to User <small>Assign One or More Right to Role.</small></h5>

                <div class="ibox-tools">



                </div>

                <div class="ibox-content">
                    <form class="form-body">
                        <div class="col-sm-3"></div>
                        <div class="form-group"><label class="col-sm-1 control-label">Role :</label>

                            <div class="col-sm-8">
                                <div class="row">
                                    <div class="col-md-5">
                                        <g:select  class="form-control" id="roleId" name='roleId' value="${role}" required="required"
                                                   noSelection="${["": 'Please Select...']}"
                                                   from='${Authority.list()}'
                                                   optionKey="id" optionValue="name" tabindex="3"></g:select>
                                    </div>
                                    <div class="col-md-2">
                                        <g:actionSubmit onclick="function2()"  name="save" value="Search" action="list"
                                                        class="btn btn-block btn-primary" tabindex="5"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="container-fluid">
                    <div class="row">

                        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
                            <div class="container">
                                <div class="row">
                                    %{--for listing--}%
                                    <div id="data" class="panel-body" style="width: 953px;padding-right: 254px">
                                        <g:form name='frmSaveAttribute' url = "[action: 'update',controller: 'requestmap']">
                                            <g:hiddenField name="assignedFeatureIds" id="hidValue"/>
                                            <g:hiddenField name="roleId" id="role" value="${role}"/>
                                            <table class='create-form-table' width="100%" cellpadding="0" cellspacing="0">

                                                <tr>
                                                    <td class="label-holder" width="48%"
                                                        style="text-align: left;border-right: 0">Available Right(s):</td>
                                                    <td width="4%"></td>
                                                    <td class="label-holder" width="48%"
                                                        style="text-align: left;border-left: 1px solid #BDC7D8">Assigned Right(s):</td>

                                                </tr>
                                                <tr>
                                                    <td class='create-form-field' width="48%">
                                                        <g:select
                                                                from='${availableFeature}'
                                                                name="availableAttributes"
                                                                optionKey="id"
                                                                multiple="true"
                                                                size="20"
                                                                optionValue="feature_name"
                                                                style="width:100%"/></td>
                                                    <td width="4%">
                                                        <table width="100%">
                                                            <tr><td style="text-align: center">
                                                                <input class="btn btn-lock btn-success" name="add" type='button' onclick='addDataToSelectedRole();'
                                                                       value='>'
                                                                       title="Add Selected"/>
                                                            </td></tr>

                                                            <tr><td style="text-align: center">
                                                                <input class="btn btn-lock btn-success" name="add" type='button' onclick='addAllDataToSelectedRole();'
                                                                       value='>>'
                                                                       title="Add All"/>
                                                            </td></tr>
                                                            <tr><td>&nbsp;</td></tr>
                                                            <tr><td>&nbsp;</td></tr>
                                                            <tr>
                                                                <td style="text-align: center">
                                                                    <input class="btn btn-lock btn-success" name="minus" type='button'
                                                                           onclick='removeDataFromSelectedRole();' value='<'
                                                                           title="Remove Selected"/>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="text-align: center">
                                                                    <input class="btn btn-lock btn-success" name="minus" type='button'
                                                                           onclick='removeAllDataFromSelectedRole();' value='<<'
                                                                           title="Remove All"/>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>


                                                    <td class='create-form-field' width="48%">
                                                        <g:select
                                                                from='${assignedFeature}'
                                                                name="selectedAttributes"
                                                                optionKey="id"
                                                                multiple="true"
                                                                optionValue="feature_name"
                                                                style="width:100%"
                                                                size="20"/>
                                                    </td>
                                                </tr>
                                            </table>

                                            <div class="buttons">
                                                <span class="button"><g:submitButton name="create" class="btn btn-danger"
                                                                                     value="Save"/></span>


                                            </div>
                                        </g:form>
                </div>
                </div>
            </div>
        </div>
    </div>
</div>


%{--
<div class="container" id="formdiv" style="padding-left: 190px;padding-right: 490px;">

                    </div>
                </div></div>

        </div>
    </div>
</div>--}%

<script type="text/javascript">

    function addDataToSelectedRole() {
        $("#availableAttributes > option:selected").each(function () {
            $(this).remove().appendTo("#selectedAttributes");
        });
    }

    function addAllDataToSelectedRole() {
        $("#availableAttributes > option").each(function () {
            $(this).remove().appendTo("#selectedAttributes");
        });
    }

    function removeDataFromSelectedRole() {
        $("#selectedAttributes > option:selected").each(function () {
            $(this).remove().appendTo("#availableAttributes");
        });
    }
    function removeAllDataFromSelectedRole() {
        $("#selectedAttributes > option").each(function () {
            $(this).remove().appendTo("#availableAttributes");
        });
    }
    function function2() {
        var roleId= $("#roleId").val();
        $("#role").val(roleId) ;
    }



    jQuery(document).ready(function(){
        $("#frmSaveAttribute").submit(function() {
            var assignedFeatureIds = '';
            $("#selectedAttributes option").each(function () {
                assignedFeatureIds += $(this).attr('value') + '_';
            });
            $("#hidValue").val(assignedFeatureIds) ;

        });
    });


</script>

</body>

</html>
