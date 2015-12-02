<%@ page import="com.org.employee.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'postalCode', 'error')} ">
	<label for="postalCode">
		<g:message code="employee.postalCode.label" default="Postal Code" />
		
	</label>
	<g:textField name="postalCode" value="${employeeInstance?.postalCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'geoLoc', 'error')} ">
	<label for="geoLoc">
		<g:message code="employee.geoLoc.label" default="Geo Loc" />
		
	</label>
	<g:textField name="geoLoc" value="${employeeInstance?.geoLoc}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'divCode', 'error')} ">
	<label for="divCode">
		<g:message code="employee.divCode.label" default="Div Code" />
		
	</label>
	<g:textField name="divCode" value="${employeeInstance?.divCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'disCode', 'error')} ">
	<label for="disCode">
		<g:message code="employee.disCode.label" default="Dis Code" />
		
	</label>
	<g:textField name="disCode" value="${employeeInstance?.disCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'thanaCode', 'error')} ">
	<label for="thanaCode">
		<g:message code="employee.thanaCode.label" default="Thana Code" />
		
	</label>
	<g:textField name="thanaCode" value="${employeeInstance?.thanaCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'phoneNo', 'error')} ">
	<label for="phoneNo">
		<g:message code="employee.phoneNo.label" default="Phone No" />
		
	</label>
	<g:textField name="phoneNo" value="${employeeInstance?.phoneNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'extension', 'error')} ">
	<label for="extension">
		<g:message code="employee.extension.label" default="Extension" />
		
	</label>
	<g:textField name="extension" value="${employeeInstance?.extension}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'mobileNo', 'error')} ">
	<label for="mobileNo">
		<g:message code="employee.mobileNo.label" default="Mobile No" />
		
	</label>
	<g:textField name="mobileNo" value="${employeeInstance?.mobileNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'faxNo', 'error')} ">
	<label for="faxNo">
		<g:message code="employee.faxNo.label" default="Fax No" />
		
	</label>
	<g:textField name="faxNo" value="${employeeInstance?.faxNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="employee.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${employeeInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="employee.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${employeeInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'searchKey', 'error')} ">
	<label for="searchKey">
		<g:message code="employee.searchKey.label" default="Search Key" />
		
	</label>
	<g:textField name="searchKey" value="${employeeInstance?.searchKey}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="employee.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${employeeInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'inactiveDate', 'error')} ">
	<label for="inactiveDate">
		<g:message code="employee.inactiveDate.label" default="Inactive Date" />
		
	</label>
	<g:datePicker name="inactiveDate" precision="day"  value="${employeeInstance?.inactiveDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'empFirstName', 'error')} ">
	<label for="empFirstName">
		<g:message code="employee.empFirstName.label" default="Emp First Name" />
		
	</label>
	<g:textField name="empFirstName" value="${employeeInstance?.empFirstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'empLastName', 'error')} ">
	<label for="empLastName">
		<g:message code="employee.empLastName.label" default="Emp Last Name" />
		
	</label>
	<g:textField name="empLastName" value="${employeeInstance?.empLastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'empMiddleName', 'error')} ">
	<label for="empMiddleName">
		<g:message code="employee.empMiddleName.label" default="Emp Middle Name" />
		
	</label>
	<g:textField name="empMiddleName" value="${employeeInstance?.empMiddleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'empSurName', 'error')} ">
	<label for="empSurName">
		<g:message code="employee.empSurName.label" default="Emp Sur Name" />
		
	</label>
	<g:textField name="empSurName" value="${employeeInstance?.empSurName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="employee.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${employeeInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'reportEmp', 'error')} ">
	<label for="reportEmp">
		<g:message code="employee.reportEmp.label" default="Report Emp" />
		
	</label>
	<g:select id="reportEmp" name="reportEmp.id" from="${com.org.employee.Employee.list()}" optionKey="id" value="${employeeInstance?.reportEmp?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'empImage', 'error')} ">
	<label for="empImage">
		<g:message code="employee.empImage.label" default="Emp Image" />
		
	</label>
	<g:textField name="empImage" value="${employeeInstance?.empImage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'updateUser', 'error')} ">
	<label for="updateUser">
		<g:message code="employee.updateUser.label" default="Update User" />
		
	</label>
	<g:select id="updateUser" name="updateUser.id" from="${com.uma.Person.list()}" optionKey="id" value="${employeeInstance?.updateUser?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'updateDate', 'error')} ">
	<label for="updateDate">
		<g:message code="employee.updateDate.label" default="Update Date" />
		
	</label>
	<g:datePicker name="updateDate" precision="day"  value="${employeeInstance?.updateDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'updateMachine', 'error')} ">
	<label for="updateMachine">
		<g:message code="employee.updateMachine.label" default="Update Machine" />
		
	</label>
	<g:textField name="updateMachine" value="${employeeInstance?.updateMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'updateIp', 'error')} ">
	<label for="updateIp">
		<g:message code="employee.updateIp.label" default="Update Ip" />
		
	</label>
	<g:textField name="updateIp" value="${employeeInstance?.updateIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'dept', 'error')} required">
	<label for="dept">
		<g:message code="employee.dept.label" default="Dept" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dept" name="dept.id" from="${com.org.employee.Department.list()}" optionKey="id" required="" value="${employeeInstance?.dept?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'desig', 'error')} required">
	<label for="desig">
		<g:message code="employee.desig.label" default="Desig" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="desig" name="desig.id" from="${com.org.employee.Designation.list()}" optionKey="id" required="" value="${employeeInstance?.desig?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'empCode', 'error')} required">
	<label for="empCode">
		<g:message code="employee.empCode.label" default="Emp Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="empCode" required="" value="${employeeInstance?.empCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'insertDate', 'error')} required">
	<label for="insertDate">
		<g:message code="employee.insertDate.label" default="Insert Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="insertDate" precision="day"  value="${employeeInstance?.insertDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'insertIp', 'error')} required">
	<label for="insertIp">
		<g:message code="employee.insertIp.label" default="Insert Ip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertIp" required="" value="${employeeInstance?.insertIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'insertMachine', 'error')} required">
	<label for="insertMachine">
		<g:message code="employee.insertMachine.label" default="Insert Machine" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertMachine" required="" value="${employeeInstance?.insertMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'insertUser', 'error')} required">
	<label for="insertUser">
		<g:message code="employee.insertUser.label" default="Insert User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insertUser" name="insertUser.id" from="${com.uma.Person.list()}" optionKey="id" required="" value="${employeeInstance?.insertUser?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="employee.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${employeeInstance?.isActive}" />

</div>

