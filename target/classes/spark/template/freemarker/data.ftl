<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My Account | Duke Exchange</title>

    <link href="/stylesheets/bootstrap.min.css" rel="stylesheet">
    <link href="/stylesheets/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/stylesheets/animate.css" rel="stylesheet">
    <link href="/stylesheets/style.css" rel="stylesheet">
    <link href="/stylesheets/data.css" rel="stylesheet">
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
                        <a href="#" class="navbar-brand">Duke 
                        <span class="smaller">EXCHANGE</span></a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a aria-expanded="false" role="button" href="home.html"> Home</a>
                            </li>
                            <li>
                                <a aria-expanded="false" role="button" href="dashboard_4_sell.php"> Sell</a>
                            </li>

                            <li>
                                <a aria-expanded="false" role="button" href="/data.ftl"> My Account</a>
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
                                <a href="/notifications.ftl">
                                    <strong>See all Notifications</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                            </li>
                            <li>
                                <a href="/auth.html">
                                Log out
                                </a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
    <div id="page-wrapper">
        <div class="title col-lg-15"><span>Account History</span></div>
        <div class="wrapper wrapper-content ecommerce">
            <div class="row">
            <div class="purchase col-lg-2"></div>
                <div class="col-lg-8">
                <div class="col-lg-8 purchase">AT A GLANCE</div>
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" >
                                <thead>
                                <tr>

                                    <th data-toggle="true"
                                    data-sort-ignore="true"></th>
       
<!--    <th data-hide="phone,tablet" >Quantity</th> -->
                                    <th data-sort-ignore="true"></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                       Books Bought
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                       <span class="label label-warning pull-right">16</span> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Total Spent
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                         <span class="label label-warning pull-right">$120.00</span> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Books Sold
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                         <span class="label label-danger pull-right">7</span> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Total Made
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                       <span class="label label-danger pull-right">$34.00</span> 
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Profit
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                      <span class="label label-success pull-right">$86.00</span>   
                                    </td>
                                </tr>
                                </tfoot>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
            <div class="purchase col-lg-2"></div>
                <div class="col-lg-8">
                <div class="col-lg-8 purchase">SELL HISTORY</div>
                    <div class="ibox">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="12">
                                <thead>
                                <tr>

                                    <th data-toggle="true">Product Name</th>
                                    <th data-hide="phone">Seller</th>
                                   
<!--    <th data-hide="phone,tablet" >Quantity</th> -->
                                    <th data-hide="phone">Price</th>
                                     <th class="text-right">Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                       Example product 1
                                    </td>
                                    <td>
                                        Model 1
                                    </td>

                                    <td>
                                        $50.00
                                    </td>
                                    
                                    <td class="text-right">
                                        5/12/2016
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Example product 2
                                    </td>
                                    <td>
                                        Model 2
                                    </td>
                                   
                                    <td>
                                        $40.00
                                    </td>
                                    
                                    <td class="text-right">
                                      2/4/2016
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Example product 3
                                    </td>
                                    <td>
                                        Model 3
                                    </td>
                                   
                                    <td>
                                        $22.00
                                    </td>
                                    
                                    <td class="text-right">
                                      7/20/2016
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Example product 4
                                    </td>
                                    <td>
                                        Model 4
                                    </td>
                                   
                                    <td>
                                      $67.00  
                                    </td>
                                    
                                    <td class="text-right">
                                      5/12/2014
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Example product 5
                                    </td>
                                    <td>
                                        Model 5
                                    </td>
                                   
                                    <td>
                                      $76.00  
                                    </td>
                                    
                                    <td class="text-right">
                                        4/24/2015
                                    </td>   
                                </tr>
                                <tr>
                                    <td>
                                        Example product 6
                                    </td>
                                    <td>
                                        Model 6
                                    </td>
                                   
                                    <td>
                                        $60.00
                                    </td>
                                    
                                    <td class="text-right">
                                       12/13/2015
                                    </td>
                                </tr>
                               
                                </tfoot>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
  <div class="row">
            <div class="purchase col-lg-2" style="margin-top: 5px;"></div>

                <div class="col-lg-8">
                         <div class="col-lg-8 purchase">PURCHASE HISTORY</div>
                    <div class="ibox tab">
                        <div class="ibox-content">

                            <table class="footable table table-stripped toggle-arrow-tiny" data-page-size="12">
                                <thead>
                                <tr>

                                    <th data-toggle="true">Product Name</th>
                                    <th data-hide="phone">Seller</th>

                                   
<!--    <th data-hide="phone,tablet" >Quantity</th> -->
                                    <th data-hide="phone">Price</th>
                                     <th class="text-right">Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                       Example product 1
                                    </td>
                                    <td>
                                        Model 1
                                    </td>
                                   

                                    <td>
                                        $50.00
                                    </td>
                                    
                                    <td class="text-right">
                                        5/12/2016
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Example product 2
                                    </td>
                                    <td>
                                        Model 2
                                    </td>
                                   
                                    <td>
                                        $40.00
                                    </td>
                                    
                                    <td class="text-right">
                                      2/4/2016
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Example product 3
                                    </td>
                                    <td>
                                        Model 3
                                    </td>
                                   
                                    <td>
                                        $22.00
                                    </td>
                                    
                                    <td class="text-right">
                                      7/20/2016
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Example product 4
                                    </td>
                                    <td>
                                        Model 4
                                    </td>
                                   
                                    <td>
                                      $67.00  
                                    </td>
                                    
                                    <td class="text-right">
                                      5/12/2014
                                    </td>
                                </tr>
                               
                               
                                </tfoot>
                            </table>

                        </div>
                    </div>
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
    <script src="/js/inspinia.js"></script>
    <script src="/js/plugins/pace/pace.min.js"></script>


    <script>
        $(document).ready(function () {


        });
    </script>

</body>

</html>