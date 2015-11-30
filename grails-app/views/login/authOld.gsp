<html>
<head>
    <meta name='layout' content='login'/>
    <title><g:message code="springSecurity.login.title"/></title>

</head>

<body class="gray-bg">
<div class="middle-box text-center loginscreen  animated fadeInDown">
    <div style="border-color: #006dba;border: 1px solid;">
        <div style="">

            %{--<h1 class="logo-name">UM</h1>--}%
            <img  alt="image"  class="logo" src="${resource(dir: 'images', file: 'thakralLogo.gif')}">

        </div>
        %{--<h3>Welcome to User Management System</h3>--}%
        %{--<p>Developed Using Groovy on Grails and Backend is Oracle.Its Fully responsive.--}%
        %{--<!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->--}%
        %{--</p>--}%
        %{--<p>Login in. To see it in action.</p>--}%
        <script>
            $(document).ready(function(){
                $("#a").fadeOut(50);
            });
        </script>
        <g:if test="${flash.message}">
            <div class="panel-body">
                <div id="a" class="alert alert-info" role="alert">
                    <div class="message" role="status">
                        <h3 class="panel-title">${flash.message}</h3>
                    </div>
                </div>
            </div>
        </g:if>
        <form class="m-t" role="form" action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>

            <div class="form-group">
                <input type="text" class="form-control" placeholder="Username" required="" name='j_username' id='username'>
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="Password" required="" name='j_password' id='password'>
            </div>
            <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

            <a href="#"><small>Forgot password?</small></a>
            <p class="text-muted text-center"><small>Do not have an account?</small></p>
            %{--<a class="btn btn-sm btn-white btn-block" href="#">Create an account</a>--}%
        </form>
        <p class="m-t"> <small>All Right Reserve &copy; 2015</small> </p>
        <p class="m-t"> <small>Copyright  &copy; 2015 KHALIL. All Rights reserved. </small> </p>

    </div>
</div>

<script type='text/javascript'>
    <!--
    (function() {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    // -->
</script>

</body>
</html>
