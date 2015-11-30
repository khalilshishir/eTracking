<%@ page import="com.uma.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>

 %{--   --}%
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>New User <small>Enter User Details .</small></h5>

                    <div class="ibox-tools">

                        <a class="btn btn-success btn-w-m" href="${g.createLink(action: 'list')}">
                            <i class="fa fa-bars"> List</i>
                        </a>

                    </div>

                    <div class="ibox-content">
                        <g:if test="${flash.message}">
                            <div style="text-align: center" class="message" role="status">${flash.message}</div>
                        </g:if>
                        <g:form action="save" role="form" name="form" id="createUser" class="form-horizontal">
                            <g:render template="form"/>

                            %{--<iframe width="100%" height="300px"  src="http://mis.lgsplgd.gov.bd:9000/LGSP/person/updatePassword" name="iframe_a"></iframe>--}%


                            <div class="hr-line-dashed"></div>

                            <div class="row">
                                <div class="col-xs-3"></div>
                                <div class="col-xs-6">
                                    <div class="bs-example">
                                        <div class="form-group">
                                            <div class="col-xs-2">
                                            </div>
                                            <div class="col-xs-10">
                            <g:submitButton name="create" class="btn btn-primary btn-sm save"
                                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                            </div>

                        </div>
                    </div>

                </div>

                    </div>
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>

    jQuery(function ($) {
        $.validator.addMethod('mypassword', function(value, element) {
            return this.optional(element) || (value.match(/[a-zA-Z]/) && value.match(/[0-9]/)&&value.match(/[!@#$%^&*()_=\[\]{};':"\\|,.<>\/?+-]/));
        },'Password must contain at least one numeric,one alphabetic and one special character.');

        $('#form').validate({
            // other options,
            rules: {
                password: {
                    required: true,
                    mypassword: true,
                    minlength: 8
                },
                retype:{
                    required:true,
                    equalTo:"#password"
                }
            }
        });
        $("#username").blur(function(){
            $("#somehiddendiv").html(" ");
            if($("#username").val().length > 0) {
                var url = "${createLink(controller: 'person', action: 'checkAvailable')}"
                // async ajax request pass username entered as id parameter
                $.getJSON( url, { userName:$(this).val() }, function(json){
                    if(!json.available) {
                        // highlight field so user knows there's a problem
                        $("#username").css("border", "1px solid red");
                        // populate a hidden div on page and fill and display it..
                        $("#somehiddendiv").html("<p style='color: red'>Username already in use</p>").show();
                    } else {
                        $("#username").css("border", "1px solid green");
                        $("#somehiddendiv").html("Available").show();
                    }
                });
            }

        });
    });
    </script>
    </body>
</html>