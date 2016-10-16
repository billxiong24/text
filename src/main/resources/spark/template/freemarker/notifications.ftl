<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Duke Exchange</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/notifications.css" rel="stylesheet">
</head>

<body class="top-navigation">

    <div id="wrapper">
        <div id="page-wrapper">
            <div class="row">
                <nav class="navbar navbar-static-top" role="navigation">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                        <span>
                        <a href="#" class="navbar-brand">Duke 
                        <span class="smaller">EXCHANGE</span></a>
                        </span>
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
                            <li>
                                <a href="home.html">Home</a>
                            </li>
                            <li class="dropdown">
                                 <a href="home.html">
                                    Sell
                                </a>
                            </li>
                            <li class="dropdown">
                                 <a href="data.html">
                                    My Account
                                </a>
                               
                            </li>
                            <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                Notifications
                            </a>
                             <ul class="dropdown-menu dropdown-alerts" style="width: 300%">
                        <li>
                            <a href="mailbox.html">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> You have 16 messages
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="profile.html">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="grid_options.html">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="text-center link-block">
                                <a href="notifications.html">
                                    <strong>See all Notifications</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                            </li>
                            <li>
                                <a href="auth.html">
                                Log out
                                </a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
       <div class="wrapper wrapper-content animated fadeIn">
            <div class="row">
            <div class="col-lg-3">
                
                    </div>
            <div class="col-lg-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title title">
                        <h5>Notifications</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                            <div class="alert alert-success alert-dismissable">
                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                Someone has bought your book. <a class="alert-link" href="data.html">Click here to view.</a>
                            </div>
                            <div class="alert alert-success alert-dismissable">
                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                Some has bought your book. <a class="alert-link" href="data.html">Click here to view.</a>
                            </div>
                            <div class="alert alert-success alert-dismissable">
                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                You ordered a book. <a class="alert-link" href="data.html">Click here to view.</a>
                            </div>
                            <div class="alert alert-success alert-dismissable">
                                <button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
                                Someone bought your book. <a class="alert-link" href="data.html">Click here to view.</a>
                            </div>
                    </div>
                </div>
            </div>



    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>


    <script>
        $(document).ready(function() {
        var width = $(window).width();
        if($(window).width() < 630){
            $('.foobar').css("font-size", "30px");
            $('.footer').hide();          
        }
        $(window).resize(function(){
            if($(window).width() < 630){
                $('.foobar').css("font-size", "30px");    
                $('.footer').hide();      
            }
            else{
                $('.foobar').css("font-size", "70px");    
                $('.footer').show();     
            }
        });
});
    </script>

</body>

</html>