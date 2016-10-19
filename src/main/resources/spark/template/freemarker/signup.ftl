<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login | Duke Exchange</title>

    <link href="/stylesheets/bootstrap.min.css" rel="stylesheet">
    <link href="/stylesheets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/stylesheets/animate.css" rel="stylesheet">
    <link href="/stylesheets/style.css" rel="stylesheet">
    <link href="/stylesheets/register.css" rel="stylesheet">

</head>

<body class="top-navigation">
<div id="page-wrapper">
    <div class="row">
        <nav class="navbar navbar-static-top" role="navigation">
            <div class="navbar-header">
                <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <i class="fa fa-reorder"></i>
                </button>
                <a href="#" class="navbar-brand">Duke
                    <span class="smaller">EXCHANGE</span></a>
            </div>
            <div class="navbar-collapse collapse" id="navbar">
                <ul class="nav navbar-nav navbar-right">
                    <!--  <li>
                         <a aria-expanded="false" role="button" href="index2.html"> Home</a>
                     </li>
                     <li>
                         <a aria-expanded="false" role="button" href="dashboard_4_sell.php"> Sell</a>
                     </li>
                     <li>
                         <a aria-expanded="false" role="button" href="data.html"> My Account</a>
                     </li> -->
                    <!-- <li>
                        <a aria-expanded="false" role="button" href="auth.html"> Sign up</a>
                    </li> -->
                    <li>
                        <a href="/">
                            Home
                        </a>
                    </li>

                </ul>
            </div>
        </nav>
    </div>

    <div class = "warning">
        <span id="logo" style="color: #001A57; opacity: 1.0;">Duke Exchange</span>
        <div style="margin-top: 10px">
            <p class = "signup">Sign up</p>
        </div>
    </div>
    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div class="log">
            <p style = "font-size: 20px">Create an account- it's easy!</p>
            <form method="post" class="m-t" role="form" action="/home.ftl">
                <div class="form-group">
                    <input name="first-name" type="text" class="form-control" placeholder="First Name">
                </div>
                <div class="form-group">
                    <input name="last-name" type="text" class="form-control" placeholder="Last Name">
                </div>
                <p>Enter a username and password</p>
                <p style="color: darkred">${error}</p>
                <div class="form-group">
                    <input name="username" type="text" class="form-control" placeholder="NetID">
                </div>
                <div class="form-group">
                    <input name="password" type="password" class="form-control" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Sign up</button>

                <a href="#"><small>Already have an account?</small></a>

            </form>
            <form action = "/auth.ftl">
                <button id="log" type="submit" class="btn btn-primary block full-width m-b">Login in</button>
            </form>
        </div>
    </div>


</body>
<script src="/js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/js/auth.js"></script>

</html>
