<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signupuser.aspx.cs" Inherits="WebApplication1.Views.signupuser" %>

 
<!doctype html>
<html>
<head>
    
<link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="../../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
<link href="../../css/font.css" rel="stylesheet" type="text/css">


     
<script src="../../js/bootstrap.min.js">
</script>
<meta charset="utf-8">
<title>Account Employer</title>

<script>

 


</script>
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
  height: 700px;
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
 

</style>

<script>
$(document).ready(function(){
	$(".d").delay("fast")
	$(".d").animate({right:'30px'});
	});
	
</script>

     <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"  
type="text/javascript"></script>   
<!--include jQuery Validation Plugin-->  
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"  
type="text/javascript"></script>  



</head>

<body>
    <form id="form1" runat="server">
<nav class="navbar navbar-default navbar-fixed-top" style="background-color:white">
  <div class="container-fluid" style="background-color:white">
   <img class=" img-responsive" src="../../img/LOGO-TASHA.png" width="160px" style="float:left; padding-top:10px; padding-left:30px; margin-left:20px" >
    </div>
  
  
</nav>


<!-- Forms -->

<div class="cont_principal" >



 
  <div class="cont_centrar" ><br>
  <p style="font-family: SEGOEUIL; font-size:24px; color:purple" class="text-center">Job Seeker Account</p>
  <div class="cont_login">
    
    <div class="cont_tabs_login">
      <ul class='ul_tabs'>
        <li id="signin" class="active"><a href="#"   onclick="sign_in()">SIGN IN</a>
        <span class="linea_bajo_nom"></span>
        </li>
        <li id="signup"><a href="#up"   onclick="sign_up()">SIGN UP</a><span class="linea_bajo_nom"></span>
        </li>
      </ul>
      </div>
  <div class="cont_text_inputs">
     
      <%--<input type="text" class="input_form_sign " placeholder="NAME" name="name_us" />--%>
      <asp:TextBox ID="txtname" runat="server" class="input_form_sign "  placeholder="NAME" ></asp:TextBox>
     
    <%--<input type="text" class="input_form_sign d_block active_inp" placeholder="EMAIL" name="emauil_us" />--%>
      <asp:TextBox ID="txtemail" runat="server" class="input_form_sign d_block active_inp" placeholder="EMAIL" ></asp:TextBox>
   

    <%--<input type="password" class="input_form_sign d_block  active_inp" placeholder="PASSWORD" name="pass_us" />--%>  
   :<asp:TextBox ID="txtpassword" runat="server" class="input_form_sign d_block  active_inp" placeholder="PASSWORD" TextMode="Password" ></asp:TextBox>
 
   
       <%--<input type="password" class="input_form_sign" placeholder="CONFIRM PASSWORD" name="conf_pass_us" />--%>
    <asp:TextBox ID="txtconfirmpassword" runat="server" class="input_form_sign" placeholder="CONFIRM PASSWORD" TextMode="Password" ></asp:TextBox>






    <a href="#" class="link_forgot_pass d_block" >Forgot Password ?</a>    
<div class="terms_and_cons d_none">
    <p><%--<input type="checkbox" name="terms_and_cons" />--%> 
        <asp:CheckBox ID="CheckBox1" runat="server" name="terms_and_cons" />
        <label for="terms_and_cons">Accept  Terms and Conditions.</label></p>
  
    </div>
      </div>
<div class="cont_btn">
     <%--<button class="btn_sign" style="background-color:purple">SIGN IN</button>--%>
    <asp:Button ID="Button1" runat="server" class="btn_sign" style="background-color:purple; padding-left:30px; margin-left:115px" Text="GO!" OnClick="Button1_Click" />
   
    <br/><br/>
     
    
     <button class="btn btn"  style="background-color:red; padding-left:20px; padding-right:20px ; color:white; margin-left:72px">Signin with Google+</button><br><br>
      <div style="margin:0 auto"><asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
   </div>   </div>
    
          
    
    
    
    </div>
    
  </div>
  

</div>
















<script>
    function sign_up() {
    

        var inputs = document.querySelectorAll('.input_form_sign');
        document.querySelectorAll('.ul_tabs > li')[0].className = "";
        document.querySelectorAll('.ul_tabs > li')[1].className = "active";

        for (var i = 0; i < inputs.length ; i++) {
            if (i == 2) {

            } else {
                document.querySelectorAll('.input_form_sign')[i].className = "input_form_sign d_block";
            }
        }

        setTimeout(function () {
            for (var d = 0; d < inputs.length ; d++) {
                document.querySelectorAll('.input_form_sign')[d].className = "input_form_sign d_block active_inp";
            }


        }, 100);
        document.querySelector('.link_forgot_pass').style.opacity = "0";
        document.querySelector('.link_forgot_pass').style.top = "-5px";
        document.querySelector('.btn_sign').innerHTML = "SIGN UP";
        setTimeout(function () {

            document.querySelector('.terms_and_cons').style.opacity = "1";
            document.querySelector('.terms_and_cons').style.top = "5px";

        }, 500);
        setTimeout(function () {
            document.querySelector('.link_forgot_pass').className = "link_forgot_pass d_none";
            document.querySelector('.terms_and_cons').className = "terms_and_cons d_block";
        }, 450);


       


    }


function sign_in(){
  var inputs = document.querySelectorAll('.input_form_sign');
document.querySelectorAll('.ul_tabs > li')[0].className = "active"; 
document.querySelectorAll('.ul_tabs > li')[1].className = ""; 
  
  for(var i = 0; i < inputs.length ; i++  ) {
switch(i) {
    case 1:
 console.log(inputs[i].name);
        break;
    case 2:
 console.log(inputs[i].name);
    default: 
document.querySelectorAll('.input_form_sign')[i].className = "input_form_sign d_block";
}
} 

setTimeout( function(){
for(var d = 0; d < inputs.length ; d++  ) {
switch(d) {
    case 1:
 console.log(inputs[d].name);
        break;
    case 2:
 console.log(inputs[d].name);

    default:
 document.querySelectorAll('.input_form_sign')[d].className = "input_form_sign d_block";  
 document.querySelectorAll('.input_form_sign')[2].className = "input_form_sign d_block active_inp";  

   }
  }
 },100 );

 document.querySelector('.terms_and_cons').style.opacity = "0";
  document.querySelector('.terms_and_cons').style.top = "-5px";

  setTimeout(function(){
 document.querySelector('.terms_and_cons').className = "terms_and_cons d_none"; 
document.querySelector('.link_forgot_pass').className = "link_forgot_pass d_block";

 },500);

  setTimeout(function(){

 document.querySelector('.link_forgot_pass').style.opacity = "1";
   document.querySelector('.link_forgot_pass').style.top = "5px";
    

for(var d = 0; d < inputs.length ; d++  ) {

switch(d) {
    case 1:
 console.log(inputs[d].name);
        break;
    case 2:
 console.log(inputs[d].name);

         break;
    default:
 document.querySelectorAll('.input_form_sign')[d].className = "input_form_sign";  
}
  }
   },1500);
  document.querySelector('.btn_sign').innerHTML = "SIGN IN";



}




window.onload =function(){
  document.querySelector('.cont_centrar').className = "cont_centrar cent_active";

}
</script>



    



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        </form>
</body>
</html>
