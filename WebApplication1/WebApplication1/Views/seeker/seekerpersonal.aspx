<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seekerpersonal.aspx.cs" Inherits="WebApplication1.Views.seeker.seekerpersonal" %>


<!doctype html>
<html>
<head>
<link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="../../css/font.css" rel="stylesheet" type="text/css">

<script src="../../js/bootstrap.min.js">
</script>
<meta charset="utf-8">
<title>For Employer</title>
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

* {
  margin: 0px auto;
  padding: 0px;
  font-family: 'Open Sans', sans-serif;
}
.cont_principal {
  position: absolute;
  width: 100%;
  height: auto;
/* Rectangle 3: */
background-image: linear-gradient(-87deg, #F2F5F6 0%, #DDE5E8 100%);
}

.cont_centrar {
  position: absolute;
  width: 320px;
  left:50%;
  top:50%;
  margin-left: -160px;
  margin-top: -200px;
}

.cont_centrar {
  position: relative;
  width: 320px;
  float: left;

  background-image: linear-gradient(-226deg, #FFFFFF 8%, #EEF3F5 100%);

  border-radius: 8px;
transition: all 0.5s;
}

.cent_active {
    box-shadow: 5px 5px 10px 0px rgba(0,0,0,0.21);
}


.cont_tabs_login {
position: relative;
  float: left;
  width: 100%;
}

.ul_tabs > li { 
position: relative;
  float: left;
  width: 50%;
  list-style: none;
  text-align: center;

}

.ul_tabs > li > a  {  
text-decoration: none;
font-family: Helvetica;
font-size: 16px;
    color: #999 ;
line-height: 14px;
padding: 20px ;
display: block;
transition: all 0.5s;
}

  .ul_tabs > .active > a  {  
color: purple;

}

.linea_bajo_nom {
  position: relative;
  width: 100%;
  float: left;
  background-color: #999;
  height: 2px;
}

.active .linea_bajo_nom {
  position: relative;
  width: 100%;
  float: left;
background-color: purple;
height: 2px;
}

.cont_text_inputs {
position: relative;
  float: left;
  width: 100%;
  margin-top: 20px;
}

.input_form_sign {
  position: relative;
  float: left;
  width: 90%;
  border: none;
  border-bottom: 1px solid #B0BEC5 ;
  background-color: transparent;
  font-size: 14px;
  outline: none;
  transition: all 0.5s;
    height: 0px;
    margin: 0px;
    padding: 0px;  
opacity: 0;
display: none;
}

.active_inp {
  margin: 5% 5% ;  
  padding: 10px 0px;
  opacity: 1;
height: 5px;
}



.input_form_sign:focus {
  border-bottom: 1px solid purple ;}

.link_forgot_pass {
position: relative;
  margin-top: 0px;
  margin-left: 30%;
  text-decoration: none;
  color: #999;
  font-size: 13px;
  display: none;
  float: left;
  transition: all 0.5s;
}
.cont_btn {
  position: relative;
  float: left;
}

.btn_sign {
  background: rgba(255,64,88,0.74);
  box-shadow: 0px 2px 20px 2px rgba(255,114,132,0.50);
  border-radius: 8px;
  padding: 15px 30px;
  border: none;
  color: #fff;
  font-size: 14px;
  position: relative;  
  float: left;
  margin-left: 100px;
  margin-top: 20px;
  margin-bottom: 20px;
  cursor: pointer;
}

.terms_and_cons {
  width: 70%;  
  color: #999;
  font-size: 13px;
  transition: all 0.5s;
}

.d_none {
  display: none;
}

.d_block {
  display: block;
}

.cont_text_inputs > input:nth-child(1){
  transition-delay: 0.2s;
}

.cont_text_inputs > input:nth-child(2){
  transition-delay: 0.4s;
}
.cont_text_inputs > input:nth-child(3){
  transition-delay: 0.6s;
}
.cont_text_inputs > input:nth-child(4){
  transition-delay: 0.8s;
}



 @import url(https://fonts.googleapis.com/css?family=Concert+One);
@import url(https://fonts.googleapis.com/css?family=Advent+Pro:300);
html,body{
  height:100%;   
}
body{
  text-align:center;
 background: #d5d5d5; /* Old browsers */
background: -moz-linear-gradient(top,  #d5d5d5 0%, #f3f3f3 80%, #feffff 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#d5d5d5), color-stop(80%,#f3f3f3), color-stop(100%,#feffff)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  #d5d5d5 0%,#f3f3f3 80%,#feffff 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  #d5d5d5 0%,#f3f3f3 80%,#feffff 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  #d5d5d5 0%,#f3f3f3 80%,#feffff 100%); /* IE10+ */
background: linear-gradient(to bottom,  #d5d5d5 0%,#f3f3f3 80%,#feffff 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#d5d5d5', endColorstr='#feffff',GradientType=0 ); /* IE6-9 */

}
label[for=range] {
position: absolute;
top: 50%;
left: 50%;
margin-left: -175px;
margin-top: -32px;
height: 49px;
padding-top: 6px;
width: 350px;
padding-left: 13px;
-webkit-transform: skew(-62deg);
overflow: hidden;
padding-bottom: 10px;
}
label[for=range]:after {
content: "";
position: absolute;
bottom: 11px;
left: 69px;
height: 9px;
width: 278px;
box-shadow: 0px 3px 10px -3px rgba(0, 0, 0, 0.51);
-webkit-transform: skew(62deg);
}
input[type=range] {
-webkit-appearance: none;
background-color: transparent;
width: 300px;
height: 38px;
  padding-top:10px;
  overflow:hidden;
margin: 0;
margin-left: -20px;
transform-style: preserve-3d;
perspective: 300;
transform-origin: 50% 50% 300px;
perspective-origin: 50% -121%;
transform: skew(62deg);
}
input[type=range]:focus{
  outline:none;
}
input[type="range"]::-webkit-slider-thumb {
  position:relative;
     -webkit-appearance: none;
    cursor:pointer;
    background-color: transparent;
    width: 30px;
    height: 18px;
    box-shadow: 1px 5px 10px -1px rgba(0, 0, 0,0.2),
    -25px 0 0 10px rgba(90, 184, 6, 0.5),
    -75px 0 0 10px rgba(90, 184, 6, 0.5),
    -125px 0 0 10px rgba(90, 184, 6, 0.5),
    -175px 0 0 10px rgba(90, 184, 6, 0.5),
    -225px 0 0 10px rgba(90, 184, 6, 0.5),
    -275px 0 0 10px rgba(90, 184, 6, 0.5),
    -325px 0 0 10px rgba(90, 184, 6, 0.5);
  z-index:2;
}
input[type="range"]::-webkit-slider-thumb:after {
content: "";
position: absolute;
z-index: 1;
left: -285px;
top: -28px;
width: 300px;
height: 140px;
background: #9FE472;
transform: rotateX(90deg);
transform-origin: 0 0px 0;
transform: rotateX(90deg) translateY(-140px) translateZ(-18px);
}
input[type="range"]::-webkit-slider-thumb:before {
content: "< >";
font-family: 'Concert One', cursive;
position: absolute;
background: #eaebe5;
background: -moz-linear-gradient(top, #eaebe5 0%, #dcdedd 100%);
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#eaebe5), color-stop(100%,#dcdedd));
background: -webkit-linear-gradient(top, #eaebe5 0%,#dcdedd 100%);
background: -o-linear-gradient(top, #eaebe5 0%,#dcdedd 100%);
background: -ms-linear-gradient(top, #eaebe5 0%,#dcdedd 100%);
background: linear-gradient(to bottom, #eaebe5 0%,#dcdedd 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#eaebe5', endColorstr='#dcdedd',GradientType=0 );
top: -2px;
left: 0px;
border-radius: 2px;
color: #5a5a5a;
text-shadow: 0 1px 0 white;
height: 22px;
width: 32px;
border-top: 1px solid white;
border-left: 1px solid white;
box-sizing: border-box;
text-align: center;
line-height: 19px;
font-size: 17px;
}
input[type="range"]::-webkit-slider-runnable-track:before {
content: "";
position: absolute;
height: 38px;
width: 283px;
background: #e8e8e8;
background: -moz-linear-gradient(top, #dfdfdf 0%, #d8d8d8 100%);
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#dfdfdf), color-stop(100%,#d8d8d8));
background: -webkit-linear-gradient(top, #dfdfdf 0%,#d8d8d8 100%);
background: -o-linear-gradient(top, #dfdfdf 0%,#d8d8d8 100%);
background: -ms-linear-gradient(top, #dfdfdf 0%,#d8d8d8 100%);
background: linear-gradient(to bottom, #dfdfdf 0%,#d8d8d8 100%);
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#dfdfdf', endColorstr='#d8d8d8',GradientType=0 );
bottom: 0;
left: 0;
}
input[type="range"]::-webkit-slider-runnable-track:after {
content: "";
position: absolute;
height: 10px;
width: 270px;
background: rgb(247, 247, 247);
top: 0;
right: 26px;
transform: skew(62deg);
}
input[type=range]:before {
content: "";
position: absolute;
background: rgb(190, 190, 190);
box-shadow:0 1px 0 rgb(235, 235, 235);
width: 283px;
left: 0;
height: 1px;
top: 29px;
z-index: 1;
}
input[type=range]:after {
content: "";
position: absolute;
background: rgb(190, 190, 190);
width: 7px;
left: 3px;
border-radius: 50%;
height: 6px;
top: 26px;
z-index: 1;
box-shadow:30px 0 0 rgb(190, 190, 190),
60px 0 0 rgb(190, 190, 190),
90px 0 0 rgb(190, 190, 190),
120px 0 0 rgb(190, 190, 190),
150px 0 0 rgb(190, 190, 190),
180px 0 0 rgb(190, 190, 190),
210px 0 0 rgb(190, 190, 190),
240px 0 0 rgb(190, 190, 190),
270px 0 0 rgb(190, 190, 190),
60px 1px 0 rgb(235, 235, 235),
90px 1px 0 rgb(235, 235, 235),
120px 1px 0 rgb(255, 255, 255),
150px 1px 0 rgb(235, 235, 235),
180px 1px 0 rgb(235, 235, 235),
210px 1px 0 rgb(235, 235, 235),
240px 1px 0 rgb(235, 235, 235),
270px 1px 0 rgb(235, 235, 235);
}

.budget {
position: absolute;
top: 50%;
left:0;
margin-top: -100px;
text-align: center;
width: 100%;
font-size: 2em;
font-family: 'Advent Pro', sans-serif;
color: rgb(58, 58, 58);
}
.output {
position: absolute;
bottom: 50%;
left: 0;
margin-bottom: -100px;
text-align: center;
width: 100%;
font-size: 2em;
font-family: 'Advent Pro', sans-serif;
color: rgba(132, 206, 66, 1);
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
<nav class="navbar navbar-default navbar-fixed-top" style="background-color:white">
  <div class="container-fluid" style="background-color:white " >
  <img class=" img-responsive" src="img/LOGO-TASHA.png" width="160px" style="float:left; padding-top:10px; padding-left:20px" >
 
    <div class="navbar-header" style="background-color:white">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <h4>Menu</h4>                       
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
        
        </li>
      
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li ><a href="#" ><button class="btn btn" style="border-radius:0px 0px 0px; background-color:#09F; color:white; height:40px; width:150px; font-size:16px"  ><span class="glyphicon glyphicon-user" >
        </span> Sign Up</button></a></li>
        <li ><a href="#" ><button class="btn btn"  style="border-radius:0px 0px 0px; background-color:#F60; color:white; height:40px; width:150px; font-size:16px"  ><span class="glyphicon glyphicon-user" >
        </span> Login</button></a></li>
      </ul>
    </div>
  </div>
</nav>


<!-- Forms -->

<div class="cont_principal" >

    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

 
  <div class="cont_centrar" ><br>
  <p style="font-family: SEGOEUIL; font-size:24px; color:purple" class="text-center">Profile Information</p>
  <div class="cont_login">
    <hr />
 
  <div class="Form-control">

      <div class="form-group" >
            <p  style="font-size:16px;color:purple; border-bottom-color:#636; border-top:none">CNIC Number</p>

      <asp:TextBox ID="TextBox3" runat="server" style="font-size:16px;color:black; border-bottom-color:#636; border-top:none; border-left:none; border-radius:5px 5px 5px"  ></asp:TextBox>
    </div>
      <div class="form-group">
    <p style="font-size:16px;color:purple">Phone Number</p>
      <asp:TextBox ID="TextBox1" runat="server"  style="font-size:16px;color:black; border-bottom-color:#636; border-top:none; border-left:none; border-radius:5px 5px 5px" ></asp:TextBox>
  </div>
      <div class="form-group" >
            <p style="font-size:16px;color:purple"  >Address</p>

      <asp:TextBox ID="TextBox2" runat="server"  style="font-size:16px;color:black; border-bottom-color:#636; border-top:none; border-left:none; border-radius:5px 5px 5px"   Columns="30" TextMode="MultiLine"></asp:TextBox>
    </div>
      
      
       <div class="form-group" >
          
                        <p  style="font-size:16px;color:purple" >Country</p>

     <asp:DropDownList ID="DropDownList3" style="background-color:#dcdcdc; border-radius:5px 5px 5px;padding-left:40px;padding-right:40px;border: solid 3px #dcdcdc" runat="server" ><asp:ListItem style="">Pakistan</asp:ListItem></asp:DropDownList>
           <br /><br />
             <p  style="font-size:16px;color:purple" >State</p>

     <asp:DropDownList ID="DropDownList2" style="background-color:#dcdcdc; border-radius:5px 5px 5px;padding-left:40px;padding-right:40px;border: solid 3px #dcdcdc" runat="server" ><asp:ListItem style="">Sindh</asp:ListItem></asp:DropDownList>

           <br /><br /> 
             <p  style="font-size:16px;color:purple" >City</p>

     <asp:DropDownList ID="ddlcity" style="background-color:#dcdcdc; border-radius:5px 5px 5px;padding-left:40px;padding-right:40px;border: solid 3px #dcdcdc" runat="server" ><asp:ListItem style="">Karachi</asp:ListItem></asp:DropDownList>
           <br /><br />
            
             <p  style="font-size:16px;color:purple" >Domicile</p>

     <asp:DropDownList ID="DropDownList4" style="background-color:#dcdcdc; border-radius:5px 5px 5px;padding-left:40px;padding-right:40px;border: solid 3px #dcdcdc" runat="server" ><asp:ListItem style="">FATA</asp:ListItem></asp:DropDownList>

                
            </div>
      
      
   
      
    
    <br />

    
      <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Vertical"  >
          <asp:ListItem> Full Time<br /></asp:ListItem>
          <asp:ListItem> Part Time<br /></asp:ListItem>
          <asp:ListItem> Contract<br /></asp:ListItem>
      </asp:CheckBoxList>

     

 <br>
     
<div class="terms_and_cons d_none">
  
    </div>
      </div>
<div class="cont_btn">
     
     <button class="btn btn"  style="background-color:red; padding-left:5px; padding-right:5px ; color:white; margin-left:80px">Complete Your Profile</button><br><br>
      
      </div>
      
    <br />
    </div>
   
  </div>
 <br />

</div>
















</script>
<!--wt1434828-->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        </form>
</body>
</html>
