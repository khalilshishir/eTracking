<%@ page import="com.org.employee.Designation" %>



<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'searchKey', 'error')} ">
	<label for="searchKey">
		<g:message code="designation.searchKey.label" default="Search Key" />
		
	</label>
	<g:textField name="searchKey" value="${designationInstance?.searchKey}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="designation.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${designationInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'updateUser', 'error')} ">
	<label for="updateUser">
		<g:message code="designation.updateUser.label" default="Update User" />
		
	</label>
	<g:select id="updateUser" name="updateUser.id" from="${com.uma.Person.list()}" optionKey="id" value="${designationInstance?.updateUser?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'updateDate', 'error')} ">
	<label for="updateDate">
		<g:message code="designation.updateDate.label" default="Update Date" />
		
	</label>
	<g:datePicker name="updateDate" precision="day"  value="${designationInstance?.updateDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'updateMachine', 'error')} ">
	<label for="updateMachine">
		<g:message code="designation.updateMachine.label" default="Update Machine" />
		
	</label>
	<g:textField name="updateMachine" value="${designationInstance?.updateMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'updateIp', 'error')} ">
	<label for="updateIp">
		<g:message code="designation.updateIp.label" default="Update Ip" />
		
	</label>
	<g:textField name="updateIp" value="${designationInstance?.updateIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'desigName', 'error')} required">
	<label for="desigName">
		<g:message code="designation.desigName.label" default="Desig Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="desigName" required="" value="${designationInstance?.desigName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'insertDate', 'error')} required">
	<label for="insertDate">
		<g:message code="designation.insertDate.label" default="Insert Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="insertDate" precision="day"  value="${designationInstance?.insertDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'insertIp', 'error')} required">
	<label for="insertIp">
		<g:message code="designation.insertIp.label" default="Insert Ip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertIp" required="" value="${designationInstance?.insertIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'insertMachine', 'error')} required">
	<label for="insertMachine">
		<g:message code="designation.insertMachine.label" default="Insert Machine" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertMachine" required="" value="${designationInstance?.insertMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: designationInstance, field: 'insertUser', 'error')} required">
	<label for="insertUser">
		<g:message code="designation.insertUser.label" default="Insert User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insertUser" name="insertUser.id" from="${com.uma.Person.list()}" optionKey="id" required="" value="${designationInstance?.insertUser?.id}" class="many-to-one"/>

</div>

