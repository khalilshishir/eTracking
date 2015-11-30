<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">--}%
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.dataTables.min.css')}" type="text/css">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css">

    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">--}%

    <!-- Morris -->
    <link rel="stylesheet" href="${resource(dir: 'css/template', file: 'morris-0.4.3.min.css')}" type="text/css">
    <!-- Gritter -->
    <link rel="stylesheet" href="${resource(dir: 'css/template', file: 'jquery.gritter.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/template', file: 'animate.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css/template', file: 'style.css')}" type="text/css">

    <g:layoutHead/>

    <script src="${resource(dir: 'js', file: 'jquery.dataTables.min.js')}"></script>

    <!-- Mainly scripts -->
    <script src="${resource(dir: 'js', file: 'jquery-1.10.2.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.metisMenu.js')}"></script>


    <!-- Flot -->
    <script src="${resource(dir: 'js', file: 'jquery.flot.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.flot.tooltip.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.flot.spline.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.flot.resize.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery.flot.pie.js')}"></script>

    <!-- Peity -->
    <script src="${resource(dir: 'js', file: 'jquery.peity.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'peity-demo.js')}"></script>


    <!-- Custom and plugin javascript -->
    <script src="${resource(dir: 'js', file: 'inspinia.js')}"></script>
    <script src="${resource(dir: 'js', file: 'pace.min.js')}"></script>


    <!-- jQuery UI -->
    <script src="${resource(dir: 'js', file: 'jquery-ui.min.js')}"></script>


    <!-- GITTER -->
    <script src="${resource(dir: 'js', file: 'jquery.gritter.min.js')}"></script>

    <!-- Jvectormap -->
    <script src="${resource(dir: 'js', file: 'jquery-jvectormap-1.2.2.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'jquery-jvectormap-world-mill-en.js')}"></script>


    <!-- EayPIE -->
    <script src="${resource(dir: 'js', file: 'jquery.easypiechart.js')}"></script>


    <!-- Sparkline -->
    <script src="${resource(dir: 'js', file: 'jquery.sparkline.min.js')}"></script>


    <!-- Sparkline demo data  -->
    <script src="${resource(dir: 'js', file: 'sparkline-demo.js')}"></script>


    <script type="text/javascript">
        jQuery(document).ready(function () {
            $('#example').dataTable();

        });

    </script>

</head>
<body class="gray-bg">
<g:layoutBody/>
%{--for time picker ends--}%
</body>
</html>
