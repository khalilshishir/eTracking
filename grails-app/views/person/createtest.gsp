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
                        <g:form action="save" role="form" id="createUser" class="form-horizontal">
                            <g:render template="form"/>
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
      /*  $('#createUser').validate({
            errorElement: 'span',
            rules: {
                username: {
                    required: true
                },
                firstName: {
                    required: true
                },
                lastName:{
                    required:true
                },
                email: {
                    required: true,
                    email:true
                },
                telephone:{
                    required:true
                },
                password: {
                    required: true,
                    minlength: 6
                },
                confirm: {
                    required: true,
                    equalTo: "#password"
                }
            } ,
            messages: {
                username: {
                    required: "Provide a username"

                },
                firstName: {
                    required: "Provide User's First name"
                },
                lastName:{
                    required: "Provide User's Last Name"
                },
                email: {
                    required: "Provide User's email Id",
                    email: "Email not valid."
                },
                telephone:{
                    required: "Provide User's Phone No."
                },

                password: {
                    required: "Specify a password.",
                    minlength: "Minimum 6 character."
                }

            }
        });*/
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