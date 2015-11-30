
<%@ page import="com.uma.Person" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'person.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>User List <small>All the role That is created.</small></h5>

                    <div class="ibox-tools">

                        <a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
                            <i class="fa fa-pencil"> Create New User</i>
                        </a>

                    </div>
                    <div class="ibox-content">
                        <g:if test="${flash.message}">
                            <div class="message" role="status">${flash.message}</div>
                        </g:if>
                        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
                            <thead style="background-image: linear-gradient(to bottom, #8cce9f, rgba(138, 202, 50, 0.3));">
                            <tr>
					
						<g:sortableColumn property="username" title="${message(code: 'person.username.label', default: 'Username')}" />
					

						<g:sortableColumn property="accountExpired" title="${message(code: 'person.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'person.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'person.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="passwordExpired" title="${message(code: 'person.passwordExpired.label', default: 'Password Expired')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${personInstanceList}" status="i" var="personInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personInstance.id}">${fieldValue(bean: personInstance, field: "username")}</g:link></td>
					

                        <td class="text-center">${personInstance?.accountExpired ? "YES":"NO"}  </td>
                        <td class="text-center">${personInstance?.accountLocked ? "YES":"NO"}  </td>
                        <td class="text-center">${personInstance?.enabled ? "YES":"NO"}  </td>
                        <td class="text-center">${personInstance?.passwordExpired ? "YES":"NO"}  </td>

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
