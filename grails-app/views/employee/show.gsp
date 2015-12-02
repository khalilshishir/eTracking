
<%@ page import="com.org.employee.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">
			
				<g:if test="${employeeInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="employee.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${employeeInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.geoLoc}">
				<li class="fieldcontain">
					<span id="geoLoc-label" class="property-label"><g:message code="employee.geoLoc.label" default="Geo Loc" /></span>
					
						<span class="property-value" aria-labelledby="geoLoc-label"><g:fieldValue bean="${employeeInstance}" field="geoLoc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.divCode}">
				<li class="fieldcontain">
					<span id="divCode-label" class="property-label"><g:message code="employee.divCode.label" default="Div Code" /></span>
					
						<span class="property-value" aria-labelledby="divCode-label"><g:fieldValue bean="${employeeInstance}" field="divCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.disCode}">
				<li class="fieldcontain">
					<span id="disCode-label" class="property-label"><g:message code="employee.disCode.label" default="Dis Code" /></span>
					
						<span class="property-value" aria-labelledby="disCode-label"><g:fieldValue bean="${employeeInstance}" field="disCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.thanaCode}">
				<li class="fieldcontain">
					<span id="thanaCode-label" class="property-label"><g:message code="employee.thanaCode.label" default="Thana Code" /></span>
					
						<span class="property-value" aria-labelledby="thanaCode-label"><g:fieldValue bean="${employeeInstance}" field="thanaCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.phoneNo}">
				<li class="fieldcontain">
					<span id="phoneNo-label" class="property-label"><g:message code="employee.phoneNo.label" default="Phone No" /></span>
					
						<span class="property-value" aria-labelledby="phoneNo-label"><g:fieldValue bean="${employeeInstance}" field="phoneNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.extension}">
				<li class="fieldcontain">
					<span id="extension-label" class="property-label"><g:message code="employee.extension.label" default="Extension" /></span>
					
						<span class="property-value" aria-labelledby="extension-label"><g:fieldValue bean="${employeeInstance}" field="extension"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.mobileNo}">
				<li class="fieldcontain">
					<span id="mobileNo-label" class="property-label"><g:message code="employee.mobileNo.label" default="Mobile No" /></span>
					
						<span class="property-value" aria-labelledby="mobileNo-label"><g:fieldValue bean="${employeeInstance}" field="mobileNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.faxNo}">
				<li class="fieldcontain">
					<span id="faxNo-label" class="property-label"><g:message code="employee.faxNo.label" default="Fax No" /></span>
					
						<span class="property-value" aria-labelledby="faxNo-label"><g:fieldValue bean="${employeeInstance}" field="faxNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="employee.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${employeeInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="employee.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${employeeInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.searchKey}">
				<li class="fieldcontain">
					<span id="searchKey-label" class="property-label"><g:message code="employee.searchKey.label" default="Search Key" /></span>
					
						<span class="property-value" aria-labelledby="searchKey-label"><g:fieldValue bean="${employeeInstance}" field="searchKey"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="employee.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${employeeInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.inactiveDate}">
				<li class="fieldcontain">
					<span id="inactiveDate-label" class="property-label"><g:message code="employee.inactiveDate.label" default="Inactive Date" /></span>
					
						<span class="property-value" aria-labelledby="inactiveDate-label"><g:formatDate date="${employeeInstance?.inactiveDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.empFirstName}">
				<li class="fieldcontain">
					<span id="empFirstName-label" class="property-label"><g:message code="employee.empFirstName.label" default="Emp First Name" /></span>
					
						<span class="property-value" aria-labelledby="empFirstName-label"><g:fieldValue bean="${employeeInstance}" field="empFirstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.empLastName}">
				<li class="fieldcontain">
					<span id="empLastName-label" class="property-label"><g:message code="employee.empLastName.label" default="Emp Last Name" /></span>
					
						<span class="property-value" aria-labelledby="empLastName-label"><g:fieldValue bean="${employeeInstance}" field="empLastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.empMiddleName}">
				<li class="fieldcontain">
					<span id="empMiddleName-label" class="property-label"><g:message code="employee.empMiddleName.label" default="Emp Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="empMiddleName-label"><g:fieldValue bean="${employeeInstance}" field="empMiddleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.empSurName}">
				<li class="fieldcontain">
					<span id="empSurName-label" class="property-label"><g:message code="employee.empSurName.label" default="Emp Sur Name" /></span>
					
						<span class="property-value" aria-labelledby="empSurName-label"><g:fieldValue bean="${employeeInstance}" field="empSurName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="employee.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${employeeInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.reportEmp}">
				<li class="fieldcontain">
					<span id="reportEmp-label" class="property-label"><g:message code="employee.reportEmp.label" default="Report Emp" /></span>
					
						<span class="property-value" aria-labelledby="reportEmp-label"><g:link controller="employee" action="show" id="${employeeInstance?.reportEmp?.id}">${employeeInstance?.reportEmp?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.empImage}">
				<li class="fieldcontain">
					<span id="empImage-label" class="property-label"><g:message code="employee.empImage.label" default="Emp Image" /></span>
					
						<span class="property-value" aria-labelledby="empImage-label"><g:fieldValue bean="${employeeInstance}" field="empImage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.updateUser}">
				<li class="fieldcontain">
					<span id="updateUser-label" class="property-label"><g:message code="employee.updateUser.label" default="Update User" /></span>
					
						<span class="property-value" aria-labelledby="updateUser-label"><g:link controller="person" action="show" id="${employeeInstance?.updateUser?.id}">${employeeInstance?.updateUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="employee.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${employeeInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.updateMachine}">
				<li class="fieldcontain">
					<span id="updateMachine-label" class="property-label"><g:message code="employee.updateMachine.label" default="Update Machine" /></span>
					
						<span class="property-value" aria-labelledby="updateMachine-label"><g:fieldValue bean="${employeeInstance}" field="updateMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.updateIp}">
				<li class="fieldcontain">
					<span id="updateIp-label" class="property-label"><g:message code="employee.updateIp.label" default="Update Ip" /></span>
					
						<span class="property-value" aria-labelledby="updateIp-label"><g:fieldValue bean="${employeeInstance}" field="updateIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.dept}">
				<li class="fieldcontain">
					<span id="dept-label" class="property-label"><g:message code="employee.dept.label" default="Dept" /></span>
					
						<span class="property-value" aria-labelledby="dept-label"><g:link controller="department" action="show" id="${employeeInstance?.dept?.id}">${employeeInstance?.dept?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.desig}">
				<li class="fieldcontain">
					<span id="desig-label" class="property-label"><g:message code="employee.desig.label" default="Desig" /></span>
					
						<span class="property-value" aria-labelledby="desig-label"><g:link controller="designation" action="show" id="${employeeInstance?.desig?.id}">${employeeInstance?.desig?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.empCode}">
				<li class="fieldcontain">
					<span id="empCode-label" class="property-label"><g:message code="employee.empCode.label" default="Emp Code" /></span>
					
						<span class="property-value" aria-labelledby="empCode-label"><g:fieldValue bean="${employeeInstance}" field="empCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.insertDate}">
				<li class="fieldcontain">
					<span id="insertDate-label" class="property-label"><g:message code="employee.insertDate.label" default="Insert Date" /></span>
					
						<span class="property-value" aria-labelledby="insertDate-label"><g:formatDate date="${employeeInstance?.insertDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.insertIp}">
				<li class="fieldcontain">
					<span id="insertIp-label" class="property-label"><g:message code="employee.insertIp.label" default="Insert Ip" /></span>
					
						<span class="property-value" aria-labelledby="insertIp-label"><g:fieldValue bean="${employeeInstance}" field="insertIp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.insertMachine}">
				<li class="fieldcontain">
					<span id="insertMachine-label" class="property-label"><g:message code="employee.insertMachine.label" default="Insert Machine" /></span>
					
						<span class="property-value" aria-labelledby="insertMachine-label"><g:fieldValue bean="${employeeInstance}" field="insertMachine"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.insertUser}">
				<li class="fieldcontain">
					<span id="insertUser-label" class="property-label"><g:message code="employee.insertUser.label" default="Insert User" /></span>
					
						<span class="property-value" aria-labelledby="insertUser-label"><g:link controller="person" action="show" id="${employeeInstance?.insertUser?.id}">${employeeInstance?.insertUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="employee.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${employeeInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:employeeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${employeeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
