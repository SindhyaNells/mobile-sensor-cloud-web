<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Mobile Sensor Cloud - User Dashboard</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/light-bootstrap-dashboard.css" rel="stylesheet"/>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
</head>
<body onload="addsensorforuser()">

<div id="session" data-email="${sessionScope.email}" />

<div class="wrapper">
    <div class="sidebar" data-color="black">
        <div class="sidebar-wrapper">
            <div class="logo">
                <a class="simple-text">
                    Mobile Sensor Cloud
                </a>
            </div>
            <ul class="nav">
                <li>
                    <a href="user-dashboard.jsp">
                        <i class="fa fa-dashboard"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="active">
                    <a href="user-sensors.jsp">
                        <i class="fa fa-wifi" ></i>
                        <p>My Sensors</p>
                    </a>
                </li>
                <li>
                    <a href="user-sensor-groups.jsp">
                        <i class="fa fa-wifi" ></i>
                        <p>My Sensor Groups</p>
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
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="index.jsp"> Log Out </a>
                        </li>
                        <!--<li>
                            <a href="user-settings.html" class="fa fa-cog fa-fw" data-target="#edit_profile" >
                                </i>
                            </a>
                        </li>-->

                    </ul>
                </div>
            </div>
        </nav>


        <!----Common------>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3">
                        <button class="btn btn-info btn-fill pull-left" onclick="location.href='user-sensors.jsp';"> <- Back</button>
                    </div>
                    <div class="col-md-12">
                        <div class="card card-plain">
                            <div class="col-md-12">
                                <div class="card card-plain">
                                    <div class="header">
                                        <h4 class="title">Available Sensors</h4>
                                    </div>
                                    <div>
                                        <!-- input type=button class="btn btn-default btn-fill btn-sm" data-toggle="modal" data-target="#add-sensors"  value= "Add" onclick="($(this).find('td:second').value)"></button> -->
                                    </div>
                                    <div class="content table-responsive table-full-width">
                                        <!--   <table id="user_addvirtualsensor" class="table table-hover" onclick="select_openpopup()" > -->
                                        <table id="user_addvirtualsensor" class="table table-hover">
                                            <thead>
                                            <th>Sensor ID</th>
                                            <th>Sensor Name</th>
                                            <th>Sensor Type</th>
                                            <th>Sensor status</th>
                                            <th>Sensor Location</th>
                                            </thead>
                                            <tbody>
                                            <th></th>
                                            </thead>
                                            <tbody>
                                            <tr>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>


    <!-- modal window -->
    <div id="add-sensors" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add Sensor</h4>
                </div>
                <div class="modal-body">
                    <div class="content">
                        <form id="myform">
                            <div class="row">
                                <div class="col-md-7">
                                    <div class="form-group">
                                        <label>Sensor No</label>
                                        <input id="sensor-num" type="number" class="form-control" placeholder="Sensor No" name="sensorId">
                                    </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-7">
                                            <div class="form-group">
                                                <label>Quantity</label>
                                                <input id="quantity" type="text" class="form-control" placeholder="Sensor Name" name="sensorName">
                                            </div>
                                        </div>
                                        <!--
                                        <div class="col-md-7">
                                            <div class="form-group">
                                                  <label>Sensor Type</label>
                                               <input id="sensor-type" type="text" class="form-control" placeholder="Sensor Type" name="sensorType">
                                             </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="form-group">
                                               <label>Status</label>
                                               <!--input id="sensor-status" type="text" class="form-control" placeholder="state of sensor" name="sensorStatus"-->
                                        <select name="sensorStatus">
                                            <option value="true">Active</option>
                                            <option value="false">Inactive</option>
                                        </select>
                                    </div>

                                <div class="col-md-7">
                                    <div class="form-group">
                                        <label>Location</label>
                                        <!--input id="sensor-location" type="text" class="form-control" placeholder="Location" name="sensorLocation"-->
                                        <select name="sensorLocation">
                                            <option value="SFO">SFO</option>
                                            <option value="Foster city">Foster city</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-7">
                                    <div class="form-group">
                                        <input onclick="add_sensor()" type="submit" value="Submit">
                                        <input type="submit"  value="Cancel" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </div>

</body>


<script src="js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="lodash.js"></script>
<script src="js/chartist.min.js"></script>
<script src="js/user-sensor.js"></script>

</html>
