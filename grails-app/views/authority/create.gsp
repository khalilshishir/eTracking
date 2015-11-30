<%@ page import="com.uma.Authority" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'authority.label', default: 'Role')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>

<div class="row">
    <div class="col-lg-12">
        <div class="ibox float-e-margins">
            <div class="ibox-title">
                <h5>Create Role <small>With custom checbox and radion elements.</small></h5>

                <div class="ibox-tools">

                    <a class="btn btn-success btn-w-m" href="${g.createLink(action: 'list')}">
                        <i class="fa fa-bars"> List</i>
                    </a>

                </div>

                <div class="ibox-content">
                    <g:form action="save" role="form" class="form-horizontal">
                        <g:render template="form"/>
                        <div class="hr-line-dashed"></div>

                        <div class="row">
                            <div class="col-xs-3"></div>
                            <div class="col-xs-6">
                                <div class="bs-example">
                                    <div class="form-group">
                                        <div class="col-xs-2"></div>
                                        <div class="col-xs-10">
                        <g:submitButton name="create" class="btn btn-primary btn-sm save"
                                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>
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
</div>
</body>
</html>
