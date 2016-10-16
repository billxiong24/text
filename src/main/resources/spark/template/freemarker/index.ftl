<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Duke Exchange</title>

    <link href="/stylesheets/bootstrap.min.css" rel="stylesheet">
    <link href="/stylesheets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/stylesheets/animate.css" rel="stylesheet">
    <link href="/stylesheets/style.css" rel="stylesheet">
    <link href="/stylesheets/index.css" rel="stylesheet">
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
                        <a href="/" class="navbar-brand">Duke
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
                                <a aria-expanded="false" role="button" href="/auth.ftl"> Sign up</a>
                            </li>
                            <li>
                                <a href="/auth.ftl">
                                Log in
                                </a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
        <div class="foobar">
            <span>Duke Exchange</span>
        </div>
         
        <div class="search-form animated fadeInDown">
            <form action="/" method="get">
                <div class="input-group">
                    <input type="text" name="search" class="form-control input-lg foc">
                    <div class="input-group-btn">
                        <button class="btn btn-lg btn-primary" type="submit">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
            <div class="footer">
                <div class="pull-right about">
                    About us
                </div>
                <div class="about">
                    <strong>Copyright</strong>  Duke Exchange &copy; 2016
                </div>
            </div>

        </div>
    </div>



    <!-- Mainly scripts -->
    <script src="/js/jquery-2.1.1.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

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