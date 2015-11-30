
<%@ page import="com.uma.PersonAuthority" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personAuthority.label', default: 'User Role')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

    <div id="list-personAuthority" class="content scaffold-list" role="main">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title"><g:message code="default.list.label/" default="User Role" args="[entityName]" />
                    <p align="right" style="color:#666; font-size: 15px;  margin-top: -9px; float:right;">

                        <a style="color:#666; font-size: 15px;"  class="btn btn-default btn-small" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>

                        <a style="color:#666; font-size: 15px;"  class="btn btn-default btn-small" href="${g.createLink(action: 'create')}">Create User Role</a>
                    </p>
                </h3>
            </div>
            <div class="panel-body">
        <g:if test="${flash.message}">
            <script>
                $(document).ready(function(){
                    $.bootstrapGrowl("${flash.message}", {
                        ele: 'body', // which element to append to
                        type: 'success', // (null, 'info', 'danger', 'success')
                        offset: {from: 'top', amount: 20}, // 'top', or 'bottom'
                        align: 'right', // ('left', 'right', or 'center')
                        width: 400, // (integer, or 'auto')
                        delay: 4000, // Time while the message will be displayed. It's not equivalent to the *demo* timeOut!
                        allow_dismiss: true, // If true then will display a cross to close the popup.
                        stackup_spacing: 10 // spacing between consecutively stacked growls.*//*

                    });

                });
            </script>			</g:if>
        <table id="example" class="dataListTable table table-bordered table-striped table-hover table-condensed">
				<thead>
					<tr>


                        <th><g:message code="personAuthority.person.label" default="Person" /></th>
                        <th><g:message code="personAuthority.authority.label" default="Authority" /></th>

					</tr>
				</thead>
				<tbody>
				<g:each in="${personAuthorityInstanceList}" var="personAuthorityInstance">
                    <tr>
                   <td> <a href="${g.createLink(controller: 'personAuthority', action: 'show', params: [personId: personAuthorityInstance?.person?.id,authId: personAuthorityInstance?.authority?.id])}"
                       title="Edit"> ${personAuthorityInstance?.person?.username}</a>
                   </td>
                        <td>
                            <a href="${g.createLink(controller: 'personAuthority', action: 'show', params: [personId: personAuthorityInstance?.person?.id,authId: personAuthorityInstance?.authority?.id])}"
                               title="Edit">  ${personAuthorityInstance?.authority?.name}</a>
                          </td>

					</tr>
				</g:each>
				</tbody>
			</table>
              </div>
		</div>
	</body>
</html>
