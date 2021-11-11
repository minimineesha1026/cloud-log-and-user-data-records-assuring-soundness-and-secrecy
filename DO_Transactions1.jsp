<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Data Owner </title>
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
.style22 {font-size: 14px; font-weight: bold; }
.style23 {color: #FFFFFF}
.style24 {font-size: 14px; font-weight: bold; color: #FFFFFF; }
.style28 {color: #FFFF00; }
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
          <li class="active"><a href="DO_Main.jsp"><span>Data Owner </span></a></li>
          <li><a href="DO_Login.jsp">Logout</a></li>
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
          <h2>Proof Of Past Log (PPL) On Files </h2>
          <p class="infopost">&nbsp;</p>
          <table width="615" border="2" cellpadding="0" style="border-collapse:collapse" cellspacing="0" align="center">
            <tr>
              <td width="49" height="31" bgcolor="#FF0000"><div align="center" class="style22 style23"> ID </div></td>
              <td width="102" bgcolor="#FF0000"><div align="center" class="style24">User Name </div></td>
              <td width="119" bgcolor="#FF0000"><div align="center" class="style24">File Name </div></td>
              <td width="170" bgcolor="#FF0000"><div align="center" class="style24">Task</div></td>
              <td width="161" bgcolor="#FF0000"><div align="center" class="style24">Date &amp; Time</div></td>
            </tr>
            <%

	
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s12,s13;
	int i=0,j=0,k=0;

	try 
	{
	
	
		String dname=(String)application.getAttribute("doname"); 
		
		String query1="select * from cloudserver where downer='"+dname+"' "; 
		Statement st1=connection.createStatement();
		ResultSet rs1=st1.executeQuery(query1);
		while ( rs1.next() )
		{
		
			String fname=rs1.getString(2); 
			
			
			    		 
			
			String query="select * from cloudlog "; 
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
				i=rs.getInt(1);
				s3=rs.getString(2);
				s4=rs.getString(3);
				s5=rs.getString(4);
				s6=rs.getString(5);
				
				String keys = "ef50a0ef2c3e3a5f";
				byte[] keyValue1 = keys.getBytes();
				Key key1 = new SecretKeySpec(keyValue1,"AES");
				Cipher c1 = Cipher.getInstance("AES");
				c1.init(Cipher.DECRYPT_MODE, key1);
				String s33 = new String(Base64.decode(s3.getBytes()));
				String s44 = new String(Base64.decode(s4.getBytes()));
				String s55 = new String(Base64.decode(s5.getBytes()));
				String s66 = new String(Base64.decode(s6.getBytes()));
				
				
				
				%>
				<tr>
				<td height="29" bgcolor="#FF00FF"><div align="center" class="style28"><%=i%></div></td>
				<td bgcolor="#FF00FF"><div align="center" class="style28"><%=s33%></div></td>
				<td bgcolor="#FF00FF"><div align="center" class="style28"><%=s44%></div></td>
				<td bgcolor="#FF00FF"><div align="center" class="style28"><%=s55%></div></td>
				<td bgcolor="#FF00FF"><div align="center" class="style28"><%=s66%></div></td>
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
          <p align="right"><a href="DO_Main.jsp">Back</a></p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
         <ul class="sb_menu">
          <li><a href="DO_Main.jsp">Home</a></li>
          <li><a href="DO_Attackers.jsp">Attackers</a></li>
          <li><a href="DO_ViewFiles.jsp">View Files</a></li>
          <li><a href="DO_Upload.jsp">Upload File</a></li>
          <li><a href="DO_Delete.jsp">Delete Files</a></li>
          <li><a href="DO_Login.jsp">Logout</a></li>
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
