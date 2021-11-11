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
.style21 {font-size: 14px}
.style27 {color: #f3fcff}
.style30 {font-size: 14px;
	color: #6d6d6d;
	font-weight: bold;
}
.style8 {color: #6d6d6d}
.style31 {color: #FFFF00}
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
          <h2>Delete Files   </h2>
          <p class="infopost">&nbsp;</p>
          <table width="459" border="2" style="border-collapse:collapse" cellpadding="0" cellspacing="0" align="center">
            <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
String dname=(String)application.getAttribute("doname");
	
try 
	{			
	
	
	%>
            <tr>
              <td width="51" height="30" bgcolor="#FF0000" class="style27"><div align="center" class="style21 style29 style31"><strong> ID </strong></div></td>
              <td width="106" bgcolor="#FF0000" class="style27"><div align="center" class="style30 style31">File Name </div></td>
              <td width="184" bgcolor="#FF0000" class="style27"><div align="center" class="style30 style31">Uploaded Date &amp; Time </div></td>
              <td width="106" bgcolor="#FF0000" class="style27"><div align="center" class="style30 style31">Delete File </div></td>
            </tr>
              <%
      		String query="Select *from cloudserver where downer='"+dname+"' "; 
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(query);
			while ( rs.next() )
			{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s3=rs.getString(8);
					s4=rs.getString(9);
					
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					String dt1 = new String(Base64.decode(s3.getBytes()));
		
						%>
            <tr>
              <td height="28" class="style27"><div align="center" class="style8"><%=i%></div></td>
              <td class="style27"><div align="center" class="style8"><a href="DO_FileDets.jsp?fname=<%=s2%>"><%=s2%></a></div></td>
              <td class="style27"><div align="center" class="style8"><%=dt1%></div></td>
              <td class="style27"><div align="center"><a href="DO_Delete1.jsp?usid=<%=i%>&fname=<%=s2%>">Delete</a></div></td>
            </tr>
              <%
			 		
	  	
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
          <li><a href="DO_Transactions.jsp">Transactions</a></li>
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
