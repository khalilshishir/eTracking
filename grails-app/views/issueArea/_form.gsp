<%@ page import="com.org.issue.IssueArea" %>



<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'searchKey', 'error')} ">
	<label for="searchKey">
		<g:message code="issueArea.searchKey.label" default="Search Key" />
		
	</label>
	<g:textField name="searchKey" value="${issueAreaInstance?.searchKey}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="issueArea.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${issueAreaInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'updateUser', 'error')} ">
	<label for="updateUser">
		<g:message code="issueArea.updateUser.label" default="Update User" />
		
	</label>
	<g:select id="updateUser" name="updateUser.id" from="${com.uma.Person.list()}" optionKey="id" value="${issueAreaInstance?.updateUser?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'updateDate', 'error')} ">
	<label for="updateDate">
		<g:message code="issueArea.updateDate.label" default="Update Date" />
		
	</label>
	<g:datePicker name="updateDate" precision="day"  value="${issueAreaInstance?.updateDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'updateMachine', 'error')} ">
	<label for="updateMachine">
		<g:message code="issueArea.updateMachine.label" default="Update Machine" />
		
	</label>
	<g:textField name="updateMachine" value="${issueAreaInstance?.updateMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'updateIp', 'error')} ">
	<label for="updateIp">
		<g:message code="issueArea.updateIp.label" default="Update Ip" />
		
	</label>
	<g:textField name="updateIp" value="${issueAreaInstance?.updateIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'insertDate', 'error')} required">
	<label for="insertDate">
		<g:message code="issueArea.insertDate.label" default="Insert Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="insertDate" precision="day"  value="${issueAreaInstance?.insertDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'insertIp', 'error')} required">
	<label for="insertIp">
		<g:message code="issueArea.insertIp.label" default="Insert Ip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertIp" required="" value="${issueAreaInstance?.insertIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'insertMachine', 'error')} required">
	<label for="insertMachine">
		<g:message code="issueArea.insertMachine.label" default="Insert Machine" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertMachine" required="" value="${issueAreaInstance?.insertMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'insertUser', 'error')} required">
	<label for="insertUser">
		<g:message code="issueArea.insertUser.label" default="Insert User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insertUser" name="insertUser.id" from="${com.uma.Person.list()}" optionKey="id" required="" value="${issueAreaInstance?.insertUser?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'issueAreaCat', 'error')} required">
	<label for="issueAreaCat">
		<g:message code="issueArea.issueAreaCat.label" default="Issue Area Cat" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="issueAreaCat" name="issueAreaCat.id" from="${com.org.issue.IssueAreaCategory.list()}" optionKey="id" required="" value="${issueAreaInstance?.issueAreaCat?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaInstance, field: 'issueAreaName', 'error')} required">
	<label for="issueAreaName">
		<g:message code="issueArea.issueAreaName.label" default="Issue Area Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="issueAreaName" required="" value="${issueAreaInstance?.issueAreaName}"/>

</div>

