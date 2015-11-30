
<%@ page import="com.org.customer.CustomerZone" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerZone.label', default: 'CustomerZone')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#show-customerZone" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customerZone" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customerZone">
			
				<g:if test="${customerZoneInstance?.searchKey}">
				<li class="fieldcontain">
					<span id="searchKey-label" class="property-label"><g:message code="customerZone.searchKey.label" default="Search Key" /></span>
					
						<span class="property-value" aria-labelledby="searchKey-label"><g:fieldValue bean="${customerZoneInstance}" field="searchKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="customerZone.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${customerZoneInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.updateUser}">
				<li class="fieldcontain">
					<span id="updateUser-label" class="property-label"><g:message code="customerZone.updateUser.label" default="Update User" /></span>
					
						<span class="property-value" aria-labelledby="updateUser-label"><g:link controller="person" action="show" id="${customerZoneInstance?.updateUser?.id}">${customerZoneInstance?.updateUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="customerZone.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${customerZoneInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.updateMachine}">
				<li class="fieldcontain">
					<span id="updateMachine-label" class="property-label"><g:message code="customerZone.updateMachine.label" default="Update Machine" /></span>
					
						<span class="property-value" aria-labelledby="updateMachine-label"><g:fieldValue bean="${customerZoneInstance}" field="updateMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.updateIp}">
				<li class="fieldcontain">
					<span id="updateIp-label" class="property-label"><g:message code="customerZone.updateIp.label" default="Update Ip" /></span>
					
						<span class="property-value" aria-labelledby="updateIp-label"><g:fieldValue bean="${customerZoneInstance}" field="updateIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.insertDate}">
				<li class="fieldcontain">
					<span id="insertDate-label" class="property-label"><g:message code="customerZone.insertDate.label" default="Insert Date" /></span>
					
						<span class="property-value" aria-labelledby="insertDate-label"><g:formatDate date="${customerZoneInstance?.insertDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.insertIp}">
				<li class="fieldcontain">
					<span id="insertIp-label" class="property-label"><g:message code="customerZone.insertIp.label" default="Insert Ip" /></span>
					
						<span class="property-value" aria-labelledby="insertIp-label"><g:fieldValue bean="${customerZoneInstance}" field="insertIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.insertMachine}">
				<li class="fieldcontain">
					<span id="insertMachine-label" class="property-label"><g:message code="customerZone.insertMachine.label" default="Insert Machine" /></span>
					
						<span class="property-value" aria-labelledby="insertMachine-label"><g:fieldValue bean="${customerZoneInstance}" field="insertMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.insertUser}">
				<li class="fieldcontain">
					<span id="insertUser-label" class="property-label"><g:message code="customerZone.insertUser.label" default="Insert User" /></span>
					
						<span class="property-value" aria-labelledby="insertUser-label"><g:link controller="person" action="show" id="${customerZoneInstance?.insertUser?.id}">${customerZoneInstance?.insertUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerZoneInstance?.zoneName}">
				<li class="fieldcontain">
					<span id="zoneName-label" class="property-label"><g:message code="customerZone.zoneName.label" default="Zone Name" /></span>
					
						<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${customerZoneInstance}" field="zoneName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:customerZoneInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${customerZoneInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>--}%
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Customer Zone <small>Show Customer Zone .</small></h5>

					<div class="ibox-tools">

						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'create')}">
							<i class="fa fa-pencil"> Create Customer Zone </i>
						</a>
						<a class="btn btn-success btn-w-m" href="${g.createLink(action: 'index')}">
							<i class="fa fa-bars"> List</i>
						</a>

					</div>
					<div class="ibox-content">
						<g:if test="${flash.message}">
							<div class="message" role="status">${flash.message}</div>
						</g:if>

						<g:if test="${customerZoneInstance?.zoneName}">
							<span id="zoneName-label" class="property-label"><g:message code="person.zoneName.label" default="Zone Name :" /></span>

							<span class="property-value" aria-labelledby="zoneName-label"><g:fieldValue bean="${customerZoneInstance}" field="zoneName"/></span>
							<br>
						</g:if>

						<g:if test="${customerZoneInstance?.searchKey}">
							<span id="searchKey-label" class="property-label"><g:message code="person.searchKey.label" default="Search Key :" /></span>

							<span class="property-value" aria-labelledby="searchKey-label">${customerZoneInstance?.searchKey} </span>
							<br>
						</g:if>
						<g:if test="${customerZoneInstance?.remarks}">
							<span id="customerType-label" class="property-label"><g:message code="person.customerType.label" default="Remarks :" /></span>

							<span class="property-value" aria-labelledby="username-label">${customerZoneInstance?.remarks} </span>
							<br>
						</g:if>

						<div class="hr-line-dashed"></div>

						<g:form url="[resource:customerZoneInstance, action:'delete']" method="DELETE">
							<fieldset class="buttons">
								<g:hiddenField name="id" value="${customerZoneInstance?.id}" />

								<g:link class="edit btn btn-primary btn-sm" action="edit" id="${customerZoneInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
								<g:actionSubmit class="delete btn btn-warning btn-sm" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</fieldset>
						</g:form>



					</div>
				</div>
			</div>
		</div>
	</div>

	</body>
</html>
