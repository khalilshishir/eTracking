<%@ page import="com.org.issue.IssueAreaCategory" %>



<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'searchKey', 'error')} ">
	<label for="searchKey">
		<g:message code="issueAreaCategory.searchKey.label" default="Search Key" />
		
	</label>
	<g:textField name="searchKey" value="${issueAreaCategoryInstance?.searchKey}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="issueAreaCategory.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${issueAreaCategoryInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'updateUser', 'error')} ">
	<label for="updateUser">
		<g:message code="issueAreaCategory.updateUser.label" default="Update User" />
		
	</label>
	<g:select id="updateUser" name="updateUser.id" from="${com.uma.Person.list()}" optionKey="id" value="${issueAreaCategoryInstance?.updateUser?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'updateDate', 'error')} ">
	<label for="updateDate">
		<g:message code="issueAreaCategory.updateDate.label" default="Update Date" />
		
	</label>
	<g:datePicker name="updateDate" precision="day"  value="${issueAreaCategoryInstance?.updateDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'updateMachine', 'error')} ">
	<label for="updateMachine">
		<g:message code="issueAreaCategory.updateMachine.label" default="Update Machine" />
		
	</label>
	<g:textField name="updateMachine" value="${issueAreaCategoryInstance?.updateMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'updateIp', 'error')} ">
	<label for="updateIp">
		<g:message code="issueAreaCategory.updateIp.label" default="Update Ip" />
		
	</label>
	<g:textField name="updateIp" value="${issueAreaCategoryInstance?.updateIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'insertDate', 'error')} required">
	<label for="insertDate">
		<g:message code="issueAreaCategory.insertDate.label" default="Insert Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="insertDate" precision="day"  value="${issueAreaCategoryInstance?.insertDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'insertIp', 'error')} required">
	<label for="insertIp">
		<g:message code="issueAreaCategory.insertIp.label" default="Insert Ip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertIp" required="" value="${issueAreaCategoryInstance?.insertIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'insertMachine', 'error')} required">
	<label for="insertMachine">
		<g:message code="issueAreaCategory.insertMachine.label" default="Insert Machine" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertMachine" required="" value="${issueAreaCategoryInstance?.insertMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'insertUser', 'error')} required">
	<label for="insertUser">
		<g:message code="issueAreaCategory.insertUser.label" default="Insert User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insertUser" name="insertUser.id" from="${com.uma.Person.list()}" optionKey="id" required="" value="${issueAreaCategoryInstance?.insertUser?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'issueAreaCatName', 'error')} required">
	<label for="issueAreaCatName">
		<g:message code="issueAreaCategory.issueAreaCatName.label" default="Issue Area Cat Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="issueAreaCatName" required="" value="${issueAreaCategoryInstance?.issueAreaCatName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: issueAreaCategoryInstance, field: 'issueAreaDesc', 'error')} required">
	<label for="issueAreaDesc">
		<g:message code="issueAreaCategory.issueAreaDesc.label" default="Issue Area Desc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="issueAreaDesc" required="" value="${issueAreaCategoryInstance?.issueAreaDesc}"/>

</div>

