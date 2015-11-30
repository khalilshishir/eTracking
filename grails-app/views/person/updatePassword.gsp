<%@ page import="com.uma.Person" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="settings">
    <g:set var="entityName" value="${message(code: 'person.label', default: 'User')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>

%{--   --}%
<div id="create-person" class="content scaffold-create" role="main">
    <g:if test="${flash.message}">
        <div class="panel-body">
            <div id="a" class="alert alert-success" role="alert">
                <div class="message" role="status">
                    <h3 class="panel-title">${flash.message}</h3>
                </div>
            </div>
        </div>
    </g:if>
    <div class="panel panel-info">
        <div class="panel-heading">
            <h3 class="panel-title">Update Password
                <p  align="right" style="color:#666; font-size: 15px;  margin-top: -9px;float:right;">
                    %{--<a style="color:#666; font-size: 15px;" class="btn btn-default btn-small" class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>--}%
                    %{--<a style="color:#666; font-size: 15px;"  class="btn btn-default btn-small" href="${g.createLink(action: 'list')}">User List</a>--}%
                </p>
            </h3>

        </div>

        <script>
            $(document).ready(function(){
                $("#a").fadeOut(8000);
            });

        </script>

        <div class="panel-body">

            <g:form action="changePassword" role="form" class="form-horizontal" >

                <div class="form-group">
                    <label for="password" class="control-label col-xs-2">New Password* :</label>
                    <div class="col-xs-4">
                        <g:field type="password" class="form-control" value="" placeholder="Enter New Password"  name="password" required="" autofocus="" />
                    </div>

                </div>

                <fieldset class="buttons">
                    <g:submitButton name="create" class="btn btn-primary btn-sm save" value="Change Password" />
                </fieldset>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>