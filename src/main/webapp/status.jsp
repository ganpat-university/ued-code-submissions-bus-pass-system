<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Status</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Home.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.8.2, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/buslogo.jpg"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Status">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-clearfix u-header u-header" id="sec-0035"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="Dashboard.jsp" data-page-id="87154904" class="u-image u-logo u-image-1" data-image-width="612" data-image-height="612" title="Bus Pass System">
          <img src="images/buslogo.jpg" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-custom-menu u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Dashboard.jsp" style="padding: 10px 20px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="About.jsp" style="padding: 10px 20px;">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="status.jsp" style="padding: 10px 20px;">Status</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Home.jsp" style="padding: 10px 20px;">Logout</a>
</li></ul>
          </div>
          <div class="u-custom-menu u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Dashboard.jsp">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="About.jsp">About</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="status.jsp">Status</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Home.jsp">Logout</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header> 
    <section class="u-align-center u-clearfix u-image u-shading u-section-1" src="" data-image-width="256" data-image-height="256" id="sec-0f31">
      <div class="u-clearfix u-sheet u-sheet-1">
        <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/project"
        user="root" password="97250" />
        <br>
        <%String name = (String)session.getAttribute("username");
        out.print("Hello "+name+" Here it is your Pass status");%>
        
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM pass_details where fullname="<%out.print(""+name);%>";
    </sql:query>
  
    <div align="center">
    <br>
        <table border="" cellpadding="7">
            <tr>
                <th>Passid</th>
                <th>Name</th>
                <th>Email</th>
                <th>Occupation</th>
                <th>PassType</th>
                <th>User_id</th>
                <th>Status</th>
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${user.Pass_id}" /></td>
                    <td><c:out value="${user.fullname}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.occupation}" /></td>
                    <td><c:out value="${user.passtype}" /></td>
                    <td><c:out value="${user.user_id}" /></td>
                    <td><c:out value="${user.status}" /></td>
                </tr>
            </c:forEach>
        </table>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-f74b"><div class="u-clearfix u-sheet u-sheet-1">
        <a href="https://nicepage.com/k/presentation-html-templates" class="u-active-none u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-radius-0 u-top-left-radius-0 u-top-right-radius-0 u-btn-1"><span class="u-icon"><svg class="u-svg-content" viewBox="0 0 405.333 405.333" x="0px" y="0px" style="width: 1em; height: 1em;"><path d="M373.333,266.88c-25.003,0-49.493-3.904-72.704-11.563c-11.328-3.904-24.192-0.896-31.637,6.699l-46.016,34.752    c-52.8-28.181-86.592-61.952-114.389-114.368l33.813-44.928c8.512-8.512,11.563-20.971,7.915-32.64    C142.592,81.472,138.667,56.96,138.667,32c0-17.643-14.357-32-32-32H32C14.357,0,0,14.357,0,32    c0,205.845,167.488,373.333,373.333,373.333c17.643,0,32-14.357,32-32V298.88C405.333,281.237,390.976,266.88,373.333,266.88z"></path></svg><img></span>&nbsp;+91 8200729066
        </a>
        <a href="mailto:info@site.com" class="u-active-none u-bottom-left-radius-0 u-bottom-right-radius-0 u-btn u-btn-rectangle u-button-style u-hover-none u-none u-radius-0 u-text-body-color u-top-left-radius-0 u-top-right-radius-0 u-btn-2"><span class="u-icon u-icon-2"><svg class="u-svg-content" viewBox="0 0 24 16" x="0px" y="0px" style="width: 1em; height: 1em;"><path fill="currentColor" d="M23.8,1.1l-7.3,6.8l7.3,6.8c0.1-0.2,0.2-0.6,0.2-0.9V2C24,1.7,23.9,1.4,23.8,1.1z M21.8,0H2.2
	c-0.4,0-0.7,0.1-1,0.2L10.6,9c0.8,0.8,2.2,0.8,3,0l9.2-8.7C22.6,0.1,22.2,0,21.8,0z M0.2,1.1C0.1,1.4,0,1.7,0,2V14
	c0,0.3,0.1,0.6,0.2,0.9l7.3-6.8L0.2,1.1z M15.5,9l-1.1,1c-1.3,1.2-3.6,1.2-4.9,0l-1-1l-7.3,6.8c0.2,0.1,0.6,0.2,1,0.2H22
	c0.4,0,0.6-0.1,1-0.2L15.5,9z"></path></svg><img></span>&nbsp;<span class="u-text-white">mahendrasinhdod@gmail.com</span>
        </a>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
 
    </section>
  </body>
</html>