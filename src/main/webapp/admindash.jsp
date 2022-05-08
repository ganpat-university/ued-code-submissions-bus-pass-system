<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!Doctype HTML>
	<html>
	<head>
		<title>AdminDashboard</title>
		<link rel="stylesheet" href="admindash.css" type="text/css"/>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>


	<body>
		
		<div id="mySidenav" class="sidenav">
		<p class="logo"><span>Bus</span>Pass System</p>
	  <a href="admindash.jsp" class="icon-a"><i class="fa fa-dashboard icons"></i>   Dashboard</a>
	  <a href="userdisp.jsp"class="icon-a"><i class="fa fa-users icons"></i>   Users</a>
	  <a href="userreq.jsp"class="icon-a"><i class="fa fa-list icons"></i>   Users requests</a>
	  <a href="#"class="icon-a"><i class="fa fa-tasks icons"></i>   Edit Roots</a>
	  <a href="Home.jsp"class="icon-a"><i class="fa fa-user icons"></i>   Logout</a>

	</div>
	<div id="main">

		<div class="head">
			<div class="col-div-6">
	<span style="font-size:30px;cursor:pointer; color: white;" class="nav"  > Dashboard</span>
	<span style="font-size:30px;cursor:pointer; color: white;" class="nav2"  > Dashboard</span>
	</div>
		
		<div class="col-div-6">
		<div class="profile">

			<p>Mahendra <span>admin</span></p>
		</div>
	</div>
		<div class="clearfix"></div>
	</div>

		<div class="clearfix"></div>
		<br/>
		
		<div class="col-div-3">
			<div class="box">
				<p><%
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","97250");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM logdata";
    ResultSet rs = st.executeQuery(strQuery);

    String Countrow="";
      while(rs.next()){
      Countrow = rs.getString(1);
      out.println(Countrow);
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %><br/><span>Users</span></p>
				<i class="fa fa-users box-icon"></i>
			</div>
		</div>
		<div class="col-div-3">
			<div class="box">
				<p><%
try
{
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","97250");     
    Statement st=con.createStatement();
    String strQuery = "SELECT COUNT(*) FROM pass_details";
    ResultSet rs = st.executeQuery(strQuery);

    String Countrow="";
      while(rs.next()){
      Countrow = rs.getString(1);
      out.println(Countrow);
       } 
    }
catch (Exception e){
    e.printStackTrace();
  }
  %><br/><span>User requests</span></p>
				<i class="fa fa-list box-icon"></i>
			</div>
		</div>
	
		<div class="col-div-3">
			<div class="box">
				<p>00<br/><span>Bus Roots</span></p>
				<i class="fa fa-tasks box-icon"></i>
			</div>
		</div>
		<div class="clearfix"></div>
		<br/><br/>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>

	  $(".nav").click(function(){
	    $("#mySidenav").css('width','70px');
	    $("#main").css('margin-left','70px');
	    $(".logo").css('visibility', 'hidden');
	    $(".logo span").css('visibility', 'visible');
	     $(".logo span").css('margin-left', '-10px');
	     $(".icon-a").css('visibility', 'hidden');
	     $(".icons").css('visibility', 'visible');
	     $(".icons").css('margin-left', '-8px');
	      $(".nav").css('display','none');
	      $(".nav2").css('display','block');
	  });

	$(".nav2").click(function(){
	    $("#mySidenav").css('width','300px');
	    $("#main").css('margin-left','300px');
	    $(".logo").css('visibility', 'visible');
	     $(".icon-a").css('visibility', 'visible');
	     $(".icons").css('visibility', 'visible');
	     $(".nav").css('display','block');
	      $(".nav2").css('display','none');
	 });

	</script>

	</body>


	</html>