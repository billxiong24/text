<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Search Results</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
   
    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/results.css" rel="stylesheet">

</head>

<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="logo">
            <a href="home.html">Duke <span class="smaller">EXCHANGE</span></a>
        </div>
            <div class="sidebar-collapse">
                
            </div>
            <div class="filter-message">
                <h2 style="color: #E8E8E8;">Filter your search</h2>
                <div>
                    <small style="">Specify the price range and condition of the book you want.</small>
                    <p></p>
                </div>
            </div>
             <div class="search-filter">
                <div class="ibox float-e-margins">
                    <div class="filter ibox-content">
                        
                        <small class="labels">Price: </small>
                        <ul class="list1 todo-list m-t small-list">
                            <li style="background-color: #FAFAFA">
                                <a href="#" class="check-link"><i class="howdy fa fa-square-o"></i> </a>
                                <span class="m-l-xs">Under $5</span>
                            </li>
                            <li style="background-color: #FAFAFA">
                                <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a>
                                <span class="m-l-xs">Under $15</span>

                            </li>
                            <li style="background-color: #FAFAFA">
                                <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a>
                                <span class="m-l-xs">Under $30</span>
                            </li>
                            <li style="background-color: #FAFAFA">
                                <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a>
                                <span class="m-l-xs">Any</span>
                            </li>
                        </ul>
                        <p></p>
                        <small class="labels">Condition: </small>
                        <ul class="list2 todo-list m-t small-list">
                            <li style="background-color: #FAFAFA">
                                <a href="#" class="check-link"><i class="howdy fa fa-square-o"></i> </a>
                                <span class="m-l-xs">New</span>
                            </li>
                            <li style="background-color: #FAFAFA">
                                <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a>
                                <span class="m-l-xs">Good</span>

                            </li>
                            <li style="background-color: #FAFAFA">
                                <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a>
                                <span class="m-l-xs">Fair</span>
                            </li>
                            <li style="background-color: #FAFAFA">
                                <a href="#" class="check-link"><i class="fa fa-square-o"></i> </a>
                                <span class="m-l-xs">Any</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        </div>
         <div id="page-wrapper">
        <div class="row">
        <nav class="navbar navbar-static-top ibox float-e-margins" role="navigation">
            <div class="navbar-header">
                <button style="" aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <i class="fa fa-reorder"></i>
                </button>
                <a href="#" class="navbar-brand"></a>
            </div>
            <div class="navbar-collapse collapse" id="navbar">
                <ul class="navbar-nav navbar-right nav">
                   <li>
                        <a href="home.html">Home
                        </a>
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
                    <li class="dropdown">
                        <a href="auth.html">
                            Log out
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
        </div>
        <div class="foobar float-e-margins text-center animated fadeInDown">
                <form action="home.html">
                    <div class="input-group">
                    
                        <input type="text" name="search" class="form-control">
                        <div class="input-group-btn">
                            <button class="space btn-lg search-buttons" type="submit">
                                <img src="img/white_search.png">
                            </button>
                        </div>
                    </div>

                </form>
        </div>

        <div class="recommend rec-message">
            <span>Search Results for "Some search"</span>
        </div>
        <div class="recommend animated fadeInRight">
       <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">

                            <div class="product-imitation">
                                PICTURE
                            </div>
                            <div class="product-desc">
                                <span class="product-price">
                                     $10
                                </span>
                                <a href="#" class="product-name"> CS 330</a>

                                <div class="small m-t-xs">
                                    Many desktop publishing packages and web page editors now.
                                </div>
                                <div class="m-t text-right">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary"><span>Buy </span><i class="fa fa-long-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">

                            <div class="product-imitation">
                                PICTURE
                            </div>
                            <div class="product-desc">
                                <span class="product-price">
                                     $10
                                </span>
                                <a href="#" class="product-name"> CS 316</a>

                                <div class="small m-t-xs">
                                    Many desktop publishing packages and web page editors now.
                                </div>
                                <div class="m-t text-right">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary"><span>Buy </span><i class="fa fa-long-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">

                            <div class="product-imitation">
                                PICTURE
                            </div>
                            <div class="product-desc">
                                <span class="product-price">
                                     $10
                                </span>
                                <a href="#" class="product-name"> CS 310</a>
                                <div class="small m-t-xs">
                                    Many desktop publishing packages and web page editors now.
                                </div>
                                <div class="m-t text-right">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary"><span>Buy </span><i class="fa fa-long-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">

                            <div class="product-imitation">
                                PICTURE
                            </div>
                            <div class="product-desc">
                                <span class="product-price">
                                     $10
                                </span>
                                <a href="#" class="product-name"> ECE 280</a>
                                <div class="small m-t-xs">
                                    Many desktop publishing packages and web page editors now.
                                </div>
                                <div class="m-t text-right">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary"><span>Buy </span><i class="fa fa-long-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">

                            <div class="product-imitation">
                                PICTURE
                            </div>
                            <div class="product-desc">
                                <span class="product-price">
                                     $10
                                </span>
                                <a href="#" class="product-name"> CS 316</a>



                                <div class="small m-t-xs">
                                    Many desktop publishing packages and web page editors now.
                                </div>
                                <div class="m-t text-right">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary"><span>Buy </span><i class="fa fa-long-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="col-md-3">
                    <div class="ibox">
                        <div class="ibox-content product-box">

                            <div class="product-imitation">
                                PICTURE
                            </div>
                            <div class="product-desc">
                                <span class="product-price">
                                     $10
                                </span>
                                <a href="#" class="product-name"> CS 316</a>



                                <div class="small m-t-xs">
                                    Many desktop publishing packages and web page editors now.
                                </div>
                                <div class="m-t text-right">

                                    <a href="#" class="btn btn-xs btn-outline btn-primary"><span>Buy </span><i class="fa fa-long-arrow-right"></i> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <!-- Mainly scripts -->

    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <!-- <script src="js/plugins/pace/pace.min.js"></script> -->

    <!-- jQuery UI -->
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="js/plugins/chartJs/Chart.min.js"></script>

    <!-- Toastr -->
    <script src="js/plugins/toastr/toastr.min.js"></script>
    <!-- Custom script -->
    <script src="js/frontpage.js"> </script>
</body>
</html>