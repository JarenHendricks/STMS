<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="./images/default.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>STMS Demo App</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />

    <link href="./css/bootstrap.min.css" rel="stylesheet" />

    <link href="./css/animate.min.css" rel="stylesheet" />

    <link href="./css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet" />

    <link href="./css/custom.css" rel="stylesheet" />
    <link href="./css/fullcalendar.css" rel="stylesheet" />

    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0./css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com./css?family=Roboto:400,700,300' rel='stylesheet' type='text./css'>
    <link href="./css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>

<body>

    <div class="wrapper">
        <div class="sidebar" data-image="./images/sideBarBackground.png">

            <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag
    -->

            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="http://www.cs.uct.ac.za/~sbnnko004" class="simple-text">
                        <b>STMS</b>
                        <br /> Hendricks, Jaren (leader);
                        <br /> Edwards, Gareth &
                        <br /> Sibandze, Nkosingiphile

                    </a>
                </div>

                <ul class="nav">
                    <li class="active">
                        <a href="#">
                            <i class="pe-7s-display1"></i>
                            <p>Planner</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="pe-7s-user"></i>
                            <p>User Profile</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="pe-7s-note2"></i>
                            <p>To-Do List</p>
                        </a>
                    </li>
                    <li>
                        <a>
                            <i class="pe-7s-plus"></i>
                            <p>Add Event</p>
                        </a>
                    </li>
                    <li>
                        <a data-toggle="collapse" data-target="#upComingEventList">
                            <i class="pe-7s-date"></i>
                            <p>Upcoming events</p>
                        </a>
                        <ul id="upComingEventList" class="collapse">
                            <li><a href="#">Event 1</a></li>
                            <li><a href="#">Event 2</a></li>
                        </ul>
                    </li>
                    <li>
                        <a data-toggle="collapse" data-target="#missedEventList">
                            <i class="pe-7s-date"></i>
                            <p>Missed events</p>
                        </a>
                        <ul id="missedEventList" class="collapse">
                            <li><a href="#">Event 1</a></li>
                            <li><a href="#">Event 2</a></li>
                        </ul>
                    </li>
                    <li>
                        <a data-toggle="collapse" data-target="#currentEventList">
                            <i class="pe-7s-like2"></i>
                            <p>Events happening now</p>
                        </a>
                        <ul id="currentEventList" class="collapse">
                            <li><a href="#">Event 1</a></li>
                            <li><a href="#">Event 2</a></li>
                        </ul>
                    </li>
                    <li class="mobile-app">
                        <a href="#">
                            <i class="pe-7s-phone"></i>
                            <p>Download Mobile App</p>
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
                        <a class="navbar-brand" href="#">Student Time Management App Planner</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-calendar"></i>
                                    <p class="hidden-lg hidden-md">Planner</p>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-globe"></i>
                                    <b class="caret hidden-lg hidden-md"></b>
                                    <p class="hidden-lg hidden-md">
                                        5 Notifications
                                        <b class="caret"></b>
                                    </p>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Notification 1</a></li>
                                    <li><a href="#">Notification 2</a></li>
                                    <li><a href="#">Notification 3</a></li>
                                    <li><a href="#">Notification 4</a></li>
                                    <li><a href="#">all notification</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="">
                                    <i class="fa fa-search"></i>
                                    <p class="hidden-lg hidden-md">Search</p>
                                </a>
                            </li>
                        </ul>

                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="">
                                    <p>Account</p>
                                </a>
                            </li>
                            <li>
                                <a href="#" title="Application Settings">
                                    <p>
                                        <i class="pe-7s-config"></i>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <a href="logout">
                                    <p>Log out</p>
                                </a>
                            </li>
                            <li class="separator hidden-lg"></li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Add event</h4>
                                </div>
                                <div class="content">
                                    <div class="panel panel-login">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <form id="login-form" action="addevent" method="post" role="form" style="display: block;">
                                                        <div class="form-group">
                                                            <input type="text" name="eventname" id="eventname" tabindex="1" class="form-control" placeholder="Event name" value="">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="text" name="eventdescription" id="eventdescription" tabindex="2" class="form-control" placeholder="Event Description" value="">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="text" name="startdate" id="startdate" tabindex="3" class="form-control" placeholder="Start Date: YYYY-MM-DD" value="">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="text" name="enddate" id="enddate" tabindex="4" class="form-control" placeholder="End Date: YYYY-MM-DD" value="">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="text" name="starttime" id="starttime" tabindex="5" class="form-control" placeholder="Start Time: HH:MM" value="">
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="text" name="endtime" id="endtime" tabindex="6" class="form-control" placeholder="End Time: HH:MM" value="">
                                                        </div>
                                                        <div class="form-group">
                                                            <div class="row">
                                                                <div class="col-sm-6 col-sm-offset-3">
                                                                    <input type="submit" name="event-submit" id="event-submit" tabindex="7" class="form-control btn btn-login" value="Add Event">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                        <div class="card ">
                            <div class="header">
                                <h4 class="title">ToDo List</h4>
                                <p class="category">upcoming activities and events</p>
                            </div>
                            <div class="content">
                                <div class="table-full-width">
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>
													<div class="checkbox">
						  							  	<input id="checkbox1" type="checkbox">
						  							  	<label for="checkbox1"></label>
					  						  		</div>
                                                </td>
                                                <td>Start working on event one.</td>
                                                <td class="td-actions text-right">
                                                    <button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
                                                        <i class="pe-7s-pen"></i>
                                                    </button>
                                                    <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                        <i class="pe-7s-close"></i>
                                                    </button>
                                                </td>
                                            </tr>
                                        </tbody>                                     </tbody>
                                    </table>
                                </div>

                                <div class="footer">
                                    <hr>
                                    <div class="stats">
                                        <i class="fa fa-history"></i> Last updated 3 minutes ago
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
	                     <div class="col-md-4">
                            <div class="card">
                                <div class="content">
                                    <table class="table">
                                        <tbody>
                                            <tr class="calendar-month-header">
                                                <th>
                                                    <div class="calendar-month-navigation" id="zabuto_calendar_hlo_nav-prev"><span><span class="glyphicon glyphicon-chevron-left"></span></span>
                                                    </div>
                                                </th>
                                                <th colspan="5"><span>August 2018</span></th>
                                                <th>
                                                    <div class="calendar-month-navigation" id="zabuto_calendar_hlo_nav-next"><span><span class="glyphicon glyphicon-chevron-right"></span></span>
                                                    </div>
                                                </th>
                                            </tr>
                                            <tr class="calendar-dow-header">
                                                <th>Mon</th>
                                                <th>Tue</th>
                                                <th>Wed</th>
                                                <th>Thu</th>
                                                <th>Fri</th>
                                                <th>Sat</th>
                                                <th>Sun</th>
                                            </tr>
                                            <tr class="calendar-dow">
                                                <td></td>
                                                <td></td>
                                                <td id="zabuto_calendar_hlo_2018-08-01">
                                                    <div id="zabuto_calendar_hlo_2018-08-01_day" class="day">1</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-02">
                                                    <div id="zabuto_calendar_hlo_2018-08-02_day" class="day">2</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-03">
                                                    <div id="zabuto_calendar_hlo_2018-08-03_day" class="day">3</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-04">
                                                    <div id="zabuto_calendar_hlo_2018-08-04_day" class="day">4</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-05">
                                                    <div id="zabuto_calendar_hlo_2018-08-05_day" class="day">5</div>
                                                </td>
                                            </tr>
                                            <tr class="calendar-dow">
                                                <td id="zabuto_calendar_hlo_2018-08-06">
                                                    <div id="zabuto_calendar_hlo_2018-08-06_day" class="day">6</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-07">
                                                    <div id="zabuto_calendar_hlo_2018-08-07_day" class="day">7</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-08">
                                                    <div id="zabuto_calendar_hlo_2018-08-08_day" class="day">8</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-09">
                                                    <div id="zabuto_calendar_hlo_2018-08-09_day" class="day">9</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-10">
                                                    <div id="zabuto_calendar_hlo_2018-08-10_day" class="day">10</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-11">
                                                    <div id="zabuto_calendar_hlo_2018-08-11_day" class="day">11</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-12">
                                                    <div id="zabuto_calendar_hlo_2018-08-12_day" class="day">12</div>
                                                </td>
                                            </tr>
                                            <tr class="calendar-dow">
                                                <td id="zabuto_calendar_hlo_2018-08-13">
                                                    <div id="zabuto_calendar_hlo_2018-08-13_day" class="day">13</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-14">
                                                    <div id="zabuto_calendar_hlo_2018-08-14_day" class="day">14</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-15">
                                                    <div id="zabuto_calendar_hlo_2018-08-15_day" class="day">15</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-16">
                                                    <div id="zabuto_calendar_hlo_2018-08-16_day" class="day">16</div>
                                                </td>
                                                <td style="color:blue; background-color: coral;" id="zabuto_calendar_hlo_2018-08-17">
                                                    <div id="zabuto_calendar_hlo_2018-08-17_day"  class="day"><b>17  <sub>0</sub></b></div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-18">
                                                    <div id="zabuto_calendar_hlo_2018-08-18_day" class="day">18</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-19">
                                                    <div id="zabuto_calendar_hlo_2018-08-19_day" class="day">19</div>
                                                </td>
                                            </tr>
                                            <tr class="calendar-dow">
                                                <td id="zabuto_calendar_hlo_2018-08-20">
                                                    <div id="zabuto_calendar_hlo_2018-08-20_day" class="day">20</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-21">
                                                    <div id="zabuto_calendar_hlo_2018-08-21_day" class="day">21</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-22">
                                                    <div id="zabuto_calendar_hlo_2018-08-22_day" class="day">22</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-23">
                                                    <div id="zabuto_calendar_hlo_2018-08-23_day" class="day">23</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-24">
                                                    <div id="zabuto_calendar_hlo_2018-08-24_day" class="day">24</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-25">
                                                    <div id="zabuto_calendar_hlo_2018-08-25_day" class="day">25</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-26">
                                                    <div id="zabuto_calendar_hlo_2018-08-26_day" class="day">26</div>
                                                </td>
                                            </tr>
                                            <tr class="calendar-dow">
                                                <td id="zabuto_calendar_hlo_2018-08-27">
                                                    <div id="zabuto_calendar_hlo_2018-08-27_day" class="day">27</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-28">
                                                    <div id="zabuto_calendar_hlo_2018-08-28_day" class="day">28</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-29">
                                                    <div id="zabuto_calendar_hlo_2018-08-29_day" class="day">29</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-30">
                                                    <div id="zabuto_calendar_hlo_2018-08-30_day" class="day">30</div>
                                                </td>
                                                <td id="zabuto_calendar_hlo_2018-08-31">
                                                    <div id="zabuto_calendar_hlo_2018-08-31_day" class="day">31</div>
                                                </td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="footer">
                                        <hr>
                                        <div class="stats">
                                            <i class="fa fa-history"></i> No. of events today: 0
                                        </div>
                                    </div>
                                </div>
                                <!--(./COntainer")-->
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>

            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul>
                            <li>
                                <a href="#">
                                    Planner
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Project Outline
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Group Members
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </footer>

        </div>
    </div>

</body>

<script src="./js/jquery.3.2.1.min.js" type="text/javascript">
</script>
<script src="./js/bootstrap.min.js" type="text/javascript">
</script>

<script src="./js/chartist.min.js">
</script>

<script src="./js/bootstrap-notify.js">
</script>
<script src="./js/bootstrap.js">
</script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api./js?key=YOUR_KEY_HERE">
</script>

<script src="./js/light-bootstrap-dashboard.js?v=1.4.0">
</script>
<script src="https://unpkg.com/ionicons@4.3.0/dist/ionicons.js">
</script>

<script src="./js/custom.js">
</script>
<script src="./js/fullcalendar.js"></script>
<script type="text/javascript">
    $(document).ready(function() {

        custom.initChartist();

        $.notify({
            icon: 'pe-7s-light2',
            message: "Student Time Management App demo by sbnnko004, hndjad002, edwgar008."

        }, {
            type: 'info',
            timer: 4000
        });

    });
</script>

</html>