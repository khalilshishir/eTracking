
<%@ page import="com.uma.Authority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'authority.label', default: 'Role')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>


    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Role List <small>All the role That is created.</small></h5>

                    <div class="ibox-tools">

                        <a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
                            <i class="fa fa-pencil"> Create New Role</i>
                        </a>

                    </div>
                    <div class="ibox-content">
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
                            <thead style="background-image: linear-gradient(to bottom, #8cce9f, rgba(138, 202, 50, 0.3));">
                            <tr>
                                <th style="text-align: center;">Role</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${authorityInstanceList}" status="i" var="authorityInstance">
                                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                                    <td style="text-align: center"><g:link   action="show" id="${authorityInstance.id}">${fieldValue(bean: authorityInstance, field: "name")}</g:link></td>

                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	</body>
</html>
