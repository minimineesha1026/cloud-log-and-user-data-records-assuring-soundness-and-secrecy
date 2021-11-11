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
<title>Data User </title>
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
.style18 {color: #0d6887}
.style19 {font-weight: bold; font-size: 24;}
.style20 {color: #595f61}
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
          <h2><span>Searched Files</span></h2>
          <p class="infopost">&nbsp;</p>
          <table width="621" border="1.5" cellpadding="0" cellspacing="0" align="center">
            <tr>
              <td width="51" height="29"><div align="center" class="style18"><span class="style19">File ID </span></div></td>
              <td width="104"><div align="center" class="style18"><span class="style19">File Name </span></div></td>
              <td width="263"><div align="center" class="style18"><span class="style19">Index Name </span></div></td>
              <td width="67"><div align="center" class="style18"><span class="style19">Rank</span></div></td>
              <td width="124"><div align="center" class="style18"><span class="style19">Download</span></div></td>
              <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
    String user=(String)application.getAttribute("uname");
try 
  {
            String cloud = request.getParameter("cloud");
            String keyword = request.getParameter("t14");
      		String keys = "ef50a0ef2c3e3a5f";
      		String h1="";
      		String filename="filename.txt";
      		
			SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
			SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			Date now = new Date();
		
			String strDate = sdfDate.format(now);
			String strTime = sdfTime.format(now);
			String dt = strDate + "   " + strTime;
			
      		byte[] keyValue = keys.getBytes();
      		Key key = new SecretKeySpec(keyValue, "AES");
      		Cipher c = Cipher.getInstance("AES");
      		c.init(Cipher.ENCRYPT_MODE, key);
      		String search = new String(Base64.encode(keyword.getBytes()));
			
			String task="Search";
			
			String user11 = new String(Base64.encode(user.getBytes()));
				String keyword11 = new String(Base64.encode(keyword.getBytes()));
				String task11 = new String(Base64.encode(task.getBytes()));
				String dt11 = new String(Base64.encode(dt.getBytes()));
			
			
			String strQuery21 ="insert into cloudlog(user,fname,task,dt) values('"+user11+"','"+keyword11+"','"+task11+"','"+dt11+"')";
			connection.createStatement().executeUpdate(strQuery21);
			
			
			
	
				int found=0,total=0;
				String query4="select * from cloudserver"; 
				Statement st4=connection.createStatement();
				ResultSet rs=st4.executeQuery(query4);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2);
					s1=rs.getString(3);
					s3=rs.getString(4);
					s4=rs.getString(7);
					total=total+1;
					
					
					c.init(Cipher.DECRYPT_MODE,key);
					String decryptedValue = new String(Base64.decode(s3.getBytes()));
					String decryptedIndex = new String(Base64.decode(s1.getBytes()));
					
					if((decryptedValue.contains(keyword))||(decryptedIndex.contains(keyword))||(s2.contains(keyword)))
					{
						found=found+1;
						String strQuery1 = "select * from cloudserver where fname='"+s2+"'";
						ResultSet rs11 = connection.createStatement().executeQuery(strQuery1);
							if(rs11.next()==true)
							{
								String rank=rs11.getString(7);
								int updaterank = Integer.parseInt(rank)+1;
								String strQuery2 = "update cloudserver set rank='"+updaterank+"' where fname='"+s2+"'";
								connection.createStatement().executeUpdate(strQuery2);
								%>
								</tr>
								<tr>
								  <td height="28"><div align="center" class="style20"><%=i%></div></td>
								  <td><div align="center" class="style20"><%=s2%></div></td>
								  <td><div align="center" class="style20"><%=s1%></div></td>
								  <td><div align="center" class="style20"><%=s4%></div></td>
								  <td><div align="center" class="style20"><a href="DU_DownloadSearch.jsp?fname=<%=s2%>"> <%=s2%> </a></div></td>
								</tr>
								<%
								
								String user1 = new String(Base64.encode(user.getBytes()));
								String s22 = new String(Base64.encode(s2.getBytes()));
								String keyword1 = new String(Base64.encode(keyword.getBytes()));
								String dt1 = new String(Base64.encode(dt.getBytes()));
								
								String strQuery22 ="insert into search(user,fname,keyword,dt) values('"+user1+"','"+s22+"','"+keyword1+"','"+dt1+"')";
			connection.createStatement().executeUpdate(strQuery22);
			
			
					String strQuer = "insert into searchhistory (user,keyword,fname,dt) values('"+user1+"','"+keyword1+"','"+s22+"','"+dt1+"')";
								connection.createStatement().executeUpdate(strQuer);
							}
							else
							{ 
								%>
								<h2>File Not Found !!!</h2>
								<%
							}
					
			  		  }
			    }
					String strQuery3 = "insert into searchratio (user,keyword,total,found,dt) values('"+user+"','"+keyword+"','"+total+"','"+found+"','"+dt+"')";
								connection.createStatement().executeUpdate(strQuery3);
				%>
            <br />
            <%  
			connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
          </table>
          <p align="right" class="infopost"><a href="DU_Search.jsp">Back</a></p>
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
          <li><a href="DU_Ratio.jsp">Search Ratio</a></li>
          <li><a href="DU_TopkDoc.jsp">Top K Documents</a></li>
          <li><a href="DU_SearchReq.jsp">Req Search Control</a></li>
          <li><a href="DU_Login.jsp">Logout</a></li>
        </ul>
       </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
 
  </div>
</div>
<div align=center></div>
</body>
</html>
