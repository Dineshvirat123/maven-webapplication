<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.net.*" %>

<!DOCTYPE html>
<html>
<head>

<title>Medical Health Portal</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#f4f8fb;
}

header{
background:#28a745;
color:white;
padding:20px;
text-align:center;
}

.card{
margin-top:20px;
box-shadow:0px 4px 8px rgba(0,0,0,0.1);
}

</style>

</head>

<body>

<header>

<h1>🏥 Welcome to Medical Health Portal</h1>
<h4>Hospital Management | Patient Services</h4>

</header>

<div class="container">

<div class="card p-4">

<h3>Server Information</h3>

<%

InetAddress inetAddress = InetAddress.getLocalHost();

out.println("Server Name : " + inetAddress.getHostName() + "<br>");
out.println("Server IP : " + inetAddress.getHostAddress());

%>

</div>

<div class="card p-4">

<h3>Client Information</h3>

<p>Client IP : <%= request.getRemoteAddr() %></p>
<p>Client Host : <%= request.getRemoteHost() %></p>

</div>

<div class="card p-4 text-center">

<h3>Hospital Services</h3>

<a href="services/patient/getPatientDetails" class="btn btn-success">
Get Patient Details
</a>

</div>

</div>

</body>

</html>
