<%@ page import="com.org.employee.Department" %>



<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'searchKey', 'error')} ">
	<label for="searchKey">
		<g:message code="department.searchKey.label" default="Search Key" />
		
	</label>
	<g:textField name="searchKey" value="${departmentInstance?.searchKey}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="department.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${departmentInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'updateUser', 'error')} ">
	<label for="updateUser">
		<g:message code="department.updateUser.label" default="Update User" />
		
	</label>
	<g:select id="updateUser" name="updateUser.id" from="${com.uma.Person.list()}" optionKey="id" value="${departmentInstance?.updateUser?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'updateDate', 'error')} ">
	<label for="updateDate">
		<g:message code="department.updateDate.label" default="Update Date" />
		
	</label>
	<g:datePicker name="updateDate" precision="day"  value="${departmentInstance?.updateDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'updateMachine', 'error')} ">
	<label for="updateMachine">
		<g:message code="department.updateMachine.label" default="Update Machine" />
		
	</label>
	<g:textField name="updateMachine" value="${departmentInstance?.updateMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'updateIp', 'error')} ">
	<label for="updateIp">
		<g:message code="department.updateIp.label" default="Update Ip" />
		
	</label>
	<g:textField name="updateIp" value="${departmentInstance?.updateIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'deptName', 'error')} required">
	<label for="deptName">
		<g:message code="department.deptName.label" default="Dept Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="deptName" required="" value="${departmentInstance?.deptName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'insertDate', 'error')} required">
	<label for="insertDate">
		<g:message code="department.insertDate.label" default="Insert Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="insertDate" precision="day"  value="${departmentInstance?.insertDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'insertIp', 'error')} required">
	<label for="insertIp">
		<g:message code="department.insertIp.label" default="Insert Ip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertIp" required="" value="${departmentInstance?.insertIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'insertMachine', 'error')} required">
	<label for="insertMachine">
		<g:message code="department.insertMachine.label" default="Insert Machine" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertMachine" required="" value="${departmentInstance?.insertMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'insertUser', 'error')} required">
	<label for="insertUser">
		<g:message code="department.insertUser.label" default="Insert User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insertUser" name="insertUser.id" from="${com.uma.Person.list()}" optionKey="id" required="" value="${departmentInstance?.insertUser?.id}" class="many-to-one"/>

</div>

