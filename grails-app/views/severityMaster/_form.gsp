<%@ page import="com.org.issue.SeverityMaster" %>



<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'searchKey', 'error')} ">
	<label for="searchKey">
		<g:message code="severityMaster.searchKey.label" default="Search Key" />
		
	</label>
	<g:textField name="searchKey" value="${severityMasterInstance?.searchKey}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="severityMaster.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${severityMasterInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'updateUser', 'error')} ">
	<label for="updateUser">
		<g:message code="severityMaster.updateUser.label" default="Update User" />
		
	</label>
	<g:select id="updateUser" name="updateUser.id" from="${com.uma.Person.list()}" optionKey="id" value="${severityMasterInstance?.updateUser?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'updateDate', 'error')} ">
	<label for="updateDate">
		<g:message code="severityMaster.updateDate.label" default="Update Date" />
		
	</label>
	<g:datePicker name="updateDate" precision="day"  value="${severityMasterInstance?.updateDate}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'updateMachine', 'error')} ">
	<label for="updateMachine">
		<g:message code="severityMaster.updateMachine.label" default="Update Machine" />
		
	</label>
	<g:textField name="updateMachine" value="${severityMasterInstance?.updateMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'updateIp', 'error')} ">
	<label for="updateIp">
		<g:message code="severityMaster.updateIp.label" default="Update Ip" />
		
	</label>
	<g:textField name="updateIp" value="${severityMasterInstance?.updateIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="severityMaster.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.org.customer.CustomerCompany.list()}" optionKey="id" required="" value="${severityMasterInstance?.company?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'effectDateFrom', 'error')} required">
	<label for="effectDateFrom">
		<g:message code="severityMaster.effectDateFrom.label" default="Effect Date From" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="effectDateFrom" precision="day"  value="${severityMasterInstance?.effectDateFrom}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'effectDateTo', 'error')} required">
	<label for="effectDateTo">
		<g:message code="severityMaster.effectDateTo.label" default="Effect Date To" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="effectDateTo" precision="day"  value="${severityMasterInstance?.effectDateTo}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'insertDate', 'error')} required">
	<label for="insertDate">
		<g:message code="severityMaster.insertDate.label" default="Insert Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="insertDate" precision="day"  value="${severityMasterInstance?.insertDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'insertIp', 'error')} required">
	<label for="insertIp">
		<g:message code="severityMaster.insertIp.label" default="Insert Ip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertIp" required="" value="${severityMasterInstance?.insertIp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'insertMachine', 'error')} required">
	<label for="insertMachine">
		<g:message code="severityMaster.insertMachine.label" default="Insert Machine" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="insertMachine" required="" value="${severityMasterInstance?.insertMachine}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'insertUser', 'error')} required">
	<label for="insertUser">
		<g:message code="severityMaster.insertUser.label" default="Insert User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="insertUser" name="insertUser.id" from="${com.uma.Person.list()}" optionKey="id" required="" value="${severityMasterInstance?.insertUser?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'project', 'error')} required">
	<label for="project">
		<g:message code="severityMaster.project.label" default="Project" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="project" name="project.id" from="${com.org.settings.ProjectInformation.list()}" optionKey="id" required="" value="${severityMasterInstance?.project?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'severityCode', 'error')} required">
	<label for="severityCode">
		<g:message code="severityMaster.severityCode.label" default="Severity Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="severityCode" required="" value="${severityMasterInstance?.severityCode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'severityDetails', 'error')} ">
	<label for="severityDetails">
		<g:message code="severityMaster.severityDetails.label" default="Severity Details" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${severityMasterInstance?.severityDetails?}" var="s">
    <li><g:link controller="severityDetails" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="severityDetails" action="create" params="['severityMaster.id': severityMasterInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'severityDetails.label', default: 'SeverityDetails')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: severityMasterInstance, field: 'severityStatus', 'error')} ">
	<label for="severityStatus">
		<g:message code="severityMaster.severityStatus.label" default="Severity Status" />
		
	</label>
	<g:checkBox name="severityStatus" value="${severityMasterInstance?.severityStatus}" />

</div>

