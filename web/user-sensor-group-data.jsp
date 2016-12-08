<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Mobile Sensor Cloud </title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/canvasjs/1.7.0/jquery.canvasjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/canvasjs/1.7.0/jquery.canvasjs.min.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">



</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="black">

        <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="" class="simple-text">
                    Mobile Sensor Cloud
                </a>
            </div>

            <ul class="nav">
                <!--<li>
                    <a href="user-dashboard.jsp">
                        <i class="fa fa-dashboard"></i>
                        <p>Dashboard</p>
                    </a>
                </li>-->
                <li>
                    <a href="user-sensors.jsp">
                        <i class="fa fa-wifi"></i>
                        <p>My Sensors</p>
                    </a>
                </li>
                <li>
                    <a href="user-sensor-groups.jsp">
                        <i class="fa fa-wifi"></i>
                        <p>My Sensor Groups</p>
                    </a>
                </li>
                <li class="active">
                    <a href="user-sensor-group-data.jsp">
                        <i class="fa fa-area-chart"></i>
                        <p>Sensor charts</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"> User Dashboard</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <!--<li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>-->
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <!--<li>
                           <a href="">
                               Account
                            </a>
                        </li>-->

                        <li>
                            <a href="#">
                                Log out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <button class="btn btn-info btn-fill pull-left" onclick="location.href='user-sensor-groups.jsp';"> < Back</button>
                    </div>
                    <div class="col-md-12" >
                        <div class="card card-plain">
                            <div class="header">
                                <h4 class="title">Sensor data</h4>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <form id="virtual-sensor-data">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group" class="pull-left">
                                                <label> From date</label>
                                                <input id="from-Date" type="text" class="form-control" placeholder="From">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group" class="pull-right">
                                                <label> To date</label>
                                                <input id="to-Date" type="text" class="form-control" placeholder="To">
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <div class="col-md-3">
                                    <button class="btn btn-info btn-fill pull-left" type="submit" onclick="getVirtualSensorData()" value="Submit"> Submit </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                    </div>
                    <div class="col-md-7">
                        <div id="virtualSensorDataChart" style="height: 250px; width: 100%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <canvas id="myChart1" height="300" width="500"></canvas>
        <footer class="footer">
            <div class="container-fluid">

            </div>
        </footer>
    </div>
</div>
</body>


<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/chartist.min.js"></script>
<script src="js/user-sensor-group.js"></script>

<script>
    $( function() {
        $( "#from-Date" ).datepicker();
    } );

    $( function() {
        $( "#to-Date" ).datepicker();
    } );
</script>

</html>
