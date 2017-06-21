<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup1.aspx.cs" Inherits="WebApplication1.Views.signup1" %>
 


<!doctype html>
<html>
<head>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">

<link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="../css/font.css" rel="stylesheet" type="text/css">

<script src="../js/bootstrap.min.js">
</script>
<meta charset="utf-8">
<title>JustHired - Home</title>
<style>


#stylelogo
{
	font-family:"Times New Roman", Times, serif;
	text-align:center;
	color:#636;
}

.opbtn:hover {
	box-shadow:5px 10px 20px #666;
}

.imagew{
	background-image:url(img/3.jpg)
}

option {
    width: 100%;
    padding: 20px;
    margin: 8px 0;
    box-sizing: border-box;
}

</style>

<script>
$(document).ready(function(){
	$(".d").delay("fast")
	$(".d").animate({right:'30px'});
	});
	
</script>
</head>

<body>
    <form id="form1" runat="server">
<nav class="navbar navbar-default" style="background-color:white">
  <div class="container-fluid" style="background-color:white">
   <img class=" img-responsive" src="img/LOGO-TASHA.png" width="160px" style="float:left; padding-top:10px; padding-left:30px; margin-left:20px" >
 
    <div class="navbar-header" style="background-color:white">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <h4>Menu</h4>                       
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
        
        </li>
      
      </ul>
 <ol class="nav navbar-nav navbar-right">
        <li ><a href="#" ><button class="btn btn" style="border-radius:0px 0px 0px; background-color:#09F; color:white; height:40px; width:150px; font-size:16px"  ><span class="glyphicon glyphicon-user" >
        </span> Sign Up</button></a></li>
        <li ><a href="#" ><button class="btn btn"  style="border-radius:0px 0px 0px; background-color:#F60; color:white; height:40px; width:150px; font-size:16px"  ><span class="glyphicon glyphicon-user" >
        </span> Login</button></a></li>
      </ol>   </div>
  </div>
</nav>


<!-- Forms -->

<br><br>
<br>
<br><br><br>
<p style="font-family: SEGOEUIL; font-size:36px; color:purple" class="text-center">How Do You Want To Apply</p>
<div class="col-lg-4"></div>
<div class="col-lg-4">

    <div class="form-group text-center">
      <label for="sel1" >Employer / Job Seeker </label>
    <%--  <select class="form-control" id="sel1" style="background-color:#CCC; padding:30px: color:purple">
        <option ><span style="padding:10px">Employer</span></option>
        <option selected>Job Seeker</option>--%>
        <asp:DropDownList ID="sel1" runat="server"  style="background-color:#CCC; padding:10px 20px 10px 20px; font-size:large; color:purple" OnSelectedIndexChanged="sel1_SelectedIndexChanged" AutoPostBack="True" >
            <asp:ListItem Value="-1" >Select Any One</asp:ListItem>
            <asp:ListItem Value="0">Job Seeker</asp:ListItem>
            <asp:ListItem Value="1">Employeer</asp:ListItem>
        </asp:DropDownList>
        
     
      </div>
     
      </div>
      <div class="col-lg-4"></div>
<!--wt1434828-->
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->

        </form>
</body>
</html>
