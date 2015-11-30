<%@ page import="com.uma.Authority; com.uma.Person; com.uma.PersonAuthority" %>
<div class="col-xs-6">
    <div class="form-group">
        <label for="person">
            <g:message code="personAuthority.person.label" default="Person" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="person" name="person.id" from="${Person.list()}" optionKey="id"  optionValue="username" required="" value="${personAuthorityInstance?.person?.id}" class="form-control"/>

    </div>
</div>
<div class="col-xs-6">
    <div class="form-group">
        <label for="authority">
            <g:message code="personAuthority.authority.label" default="Authority" />
            <span class="required-indicator">*</span>
        </label>
        <g:select id="authority" name="authority.id" from="${Authority.list()}" optionKey="id"  optionValue="name" required="" value="${personAuthorityInstance?.authority?.id}" class="form-control" />

    </div>
</div>





