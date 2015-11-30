<%@ page import="com.uma.Authority; com.uma.Person" %>



<div class="row">
    <div class="col-xs-3"></div>
    <div class="col-xs-6">
        <div class="bs-example">
                <div class="form-group">
                    <label  for="inputEmail" class="control-label col-xs-2">UserName:</label>
                    <div class="col-xs-10">
                        <g:textField name="username"  id="username" class="form-control username" required="required"  value="${personInstance?.username}"/>
                        <span id="somehiddendiv" style="display: none; color: mediumseagreen"/>
                    </div>
                </div>
            <div class="form-group">
                <label  for="inputEmail" class="control-label col-xs-2">Name:</label>
                <div class="col-xs-10">
                    <g:textField name="name" required="required" class="form-control"  value="${personInstance?.name}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="control-label col-xs-2">Email:</label>
                <div class="col-xs-10">
                    <g:field type="email" name="email" required="required" class="form-control"  value="${personInstance?.email}"/>
                </div>
            </div>
            <div class="form-group">
                <label for="inputEmail" class="control-label col-xs-2">Mobile:</label>
                <div class="col-xs-10">
                    <g:textField  name="mobile"  class="form-control"  value="${personInstance?.mobile}"/>
                </div>
            </div>
                <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">Password:</label>
                    <div class="col-xs-10">
                        <g:field type="password" required="required" class="form-control" name="password" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="retype" class="control-label col-xs-2">Retype Password:</label>
                    <div class="col-xs-10">
                        <g:field type="password" required="required" class="form-control" name="retype" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">Role:</label>
                    <div class="col-xs-10">

                            <g:select name="authority" required="required"
                                      from="${Authority.list()}"
                                      optionKey="id"
                                      optionValue="name"
                                      value="${userRole*.id}"
                                      multiple="true" class="form-control"/>
                        </div>
                </div>
                </div>


        </div>
   </div>


