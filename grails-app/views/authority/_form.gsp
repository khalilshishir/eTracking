<%@ page import="com.uma.Authority" %>
<div class="row">
    <div class="col-xs-3"></div>
    <div class="col-xs-6">
        <div class="bs-example">
            <div class="form-group">
                <label for="name" class="control-label col-xs-2">Role :</label>
                <div class="col-xs-10">
                    <g:textField name="name" required="" class="form-control" value="${authorityInstance?.name}"/>
                </div>
            </div>

        </div>
    </div>

</div>