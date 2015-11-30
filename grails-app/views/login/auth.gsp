<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    %{--<meta name="viewport" content="width=device-width, initial-scale=1">--}%
    <link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico">
    <title>TISL-Login</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../css/bootstrap.min.css">
    %{--<link rel="stylesheet" href="../css/font-awesome.css">--}%
    <link rel="stylesheet" href="../css/app_style.css">
    <link rel="stylesheet" href="../css/form-elements.css">
    <link rel="stylesheet" href="../css/loginstyle.css">
    %{--<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,400italic' rel='stylesheet' type='text/css'>--}%

    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

    <script type="text/javascript">

    </script>
</head>

<body>
%{--<script type='text/javascript'>--}%
    %{--<!----}%
    %{--(function() {--}%
        %{--document.forms['loginForm'].elements['j_username'].focus();--}%
    %{--})();--}%
    %{--// -->--}%
%{--</script>--}%
%{--<div id="headerWrapper">--}%
    %{--<div id="header"></div>--}%
%{--</div>--}%
<!-- Top content -->

<div class="top-content">

    <div class="inner-bg">
        <div class="container responsive-box">
            <div class="row form-font">
                <div class="form-box">
                    <div class="form-top">

                        <div class="form-top-left">
                            %{--<i class="fa fa-lock"></i>--}%
                            <img src="${resource(dir: 'images', file: 'thakralLogo.gif')}" style="position: relative; top: 6px;" alt="" />
                        </div>

                        <div class="form-top-right">
                            <h3 class="text-center">Thakral Information Systems Private Ltd. (TISL)</h3>
                            <p class="text-center">Call Tracking Systems</p>
                        </div>



                        <div class="row">
                            <div class="col-md-12">

                            <g:if test='${flash.message}'>
                                <div class="alert alert-danger" role="alert">
                                ${flash.message}
                                </div>
                            </g:if>

                            </div>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form action='${postUrl}' method='POST' id='loginForm' class='login-form' autocomplete='off'>
                            <div class="form-group">
                                <label class="sr-only" for="form-username">Username</label>
                                <div class="input-group">
                                    <span class="input-group-addon"> <i class="fa fa-user fa-lg fa-fw"></i>
                                    </span>
                                <input type="text" name='j_username' id='username' class="form-username form-control <g:if test='${flash.message}'> errorinput </g:if>" placeholder="User name..." required autofocus>
                                </div>
                                </div>

                            <div class="form-group" >
                                <label class="sr-only" for="form-password ">Password</label>
                                <div class="input-group" >
                                    <span class="input-group-addon">
                                        <i class="fa fa-key fa-lg fa-fw"></i>
                                    </span>
                                <input type="password" name='j_password' id='password' class="form-password form-control  <g:if test='${flash.message}'> errorinput</g:if>" placeholder="Password.." required>
                                </div>
                                </div>
                            <div>
                                <button class="btn btn-block" type="submit" >Sign in</button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


</body>

</html>

