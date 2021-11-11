<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data User Main</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">CLASS: Cloud Log Assuring Soundness and Secrecy Scheme for Cloud Forensics</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="DU_Main.jsp">Data User</a></li>
          <li><a href="DU_Login.jsp"> Logout </a><a href="about.html"></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Welcome to End User:: <%=application.getAttribute("uname")%></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="img"><img src="images/img1.jpg" width="200" height="210" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify" class="style2">User activity logs can be a valuable source of information in cloud forensic investigations; hence, ensuring the reliability and integrity of such logs is crucial. Most existing solutions for secure logging are designed for conventional systems rather than the complexity of a cloud environment. In this paper, we propose the Cloud Log Assuring Soundness and Secrecy (CLASS) process as an alternative scheme for the securing of logs in a cloud environment. In CLASS, logs are encrypted using the individual user’s public key so that only the user is able to decrypt the content. In order to prevent unauthorized modification of the log, we generate proof of past log (PPL) using Rabin’s fingerprint and Bloom filter. Such an approach reduces verification time significantly. Findings from our experiments deploying CLASS in OpenStack demonstrate the utility of CLASS in a real-world context.</p>
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
       <div class="gadget">
        <h2 class="star">Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
          <li><a href="DU_Main.jsp">Home</a></li>
          <li><a href="DU_Profile.jsp">My Profile</a></li>
          <li><a href="DU_ViewFiles.jsp">View Files </a></li>
          <li><a href="DU_Search.jsp">Search Files</a></li>
          <li><a href="DU_Ratio.jsp">View Searched Ratio</a></li>
          <li><a href="DU_TopkDoc.jsp">View Top K Documents</a></li>
          <li><a href="DU_SearchReq.jsp">Request Search Permission</a></li>
          <li><a href="DU_Login.jsp">Logout</a></li>
        </ul>
       </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 
</div>
<div align=center></div>
</body>
</html>
