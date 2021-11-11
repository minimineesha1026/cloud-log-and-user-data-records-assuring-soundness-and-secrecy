<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@page import ="java.sql.*"%>
<%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@ include file="connect.jsp" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Grant Search</title>
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
.style21 {font-size: 14px}
.style28 {color: #FFFF00}
.style29 {font-size: 14px; color: #FFFF00; font-weight: bold; }
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
          <li><a href="C_Main.jsp">Cloud</a></li>
          <li><a href="C_Login.jsp"><span>Logout </span></a></li>
          <li></li>
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
          <h2><span>Grant Search Control </span></h2>
          <p>&nbsp;</p>
          <table width="565" border="2" cellpadding="0" style="border-collapse:collapse" cellspacing="0" align="center">
            <tr>
              <td width="99" height="30" bgcolor="#FF0000"><div align="center" class="style21 style28"><strong> ID </strong></div></td>
              <td width="174" bgcolor="#FF0000"><div align="center" class="style29">User Name </div></td>
              <td width="252" bgcolor="#FF0000"><div align="center" class="style29">Permission</div></td>
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;

      	try 
	{
      		String query="select * from request"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		
		%>
            </tr>
            <tr>
              <td height="28"><div align="center"><%=i%></div></td>
              <td><div align="center"><a href="C_UserSGDetails.jsp?uname=<%=s2%>"><%=s2%></a></div></td>
              <%	
			if(s3.equalsIgnoreCase("Requested"))
			{
			
		%>
              <td><div>
                  <div align="center"><a href="C_GrantSearch1.jsp?usid=<%=i%>"><%=s3%></a></div>
              </div></td>
              <%
		
			}else
			{
		%>
              <td width="28"><div>
                  <div align="center"><%=s3%></div>
              </div></td>
            </tr>
            <%
			  }
	  }
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
          </table>
          <p>&nbsp;</p>
          <p align="right"><a href="C_Main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
          <li><a href="C_Main.jsp">Home</a></li>
          <li><a href="C_ViewFiles.jsp">View Files</a></li>
          <li><a href="C_Transactions.jsp">Transactions</a></li>
          <li><a href="C_TopSearched.jsp">Top Searched</a></li>
          <li><a href="C_Attackers.jsp">View Attackers</a> </li>
          <li><a href="C_UserAutho.jsp">Authorize Users</a></li>
          <li><a href="C_OwnerAutho.jsp">Authorize Owners</a></li>
          <li><a href="C_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  
  </div>
</div>
<div align=center></div>
</body>
</html>
