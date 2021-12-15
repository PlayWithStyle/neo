<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../js/jquery.min.js"></script>
<link type="text/css" href="../css/style.css" rel="stylesheet">
 
<title>最新情報</title>

</head>
<body>

<div class="main_top">
   <div class="logo">
      <a href="index.jsp"><div class="neosoft_logo"></div></a>
      <a href="index.jsp"><div class="top_logo"></div></a>
      <a href="http://privacymark.jp/"><div class="p_logo"></div></a>

   </div>
   <div class="nav">
   
       <div class="top_nav">
           <!-- <a href="http://neosoft.jp/index.jsp"><div class="nav_home"></div></a> -->
           <a href="../jsp/index.jsp"><div class="nav_home"></div></a>
           <div class="nav_ge"></div>
           <a href="../jsp/M_company.jsp"><div class="nav_company"></div></a>
           <div class="nav_ge"></div>
           <a href="neosoft!showNewsAction.action"><div class="nav_news"></div></a>
           <div class="nav_ge"></div>
           <a href="#"><div class="nav_activity"></div></a>
           <div class="nav_ge"></div>
           <a href="#"><div class="nav_works"></div></a>
           <div class="nav_ge"></div>
           <a href="#"><div class="nav_qa"></div></a>
       </div>
   </div>
</div>
<form method="post" id="mainForm">
<div class="main_content" style="height:auto;">
    <div class="company_left">
       <div class="company_menu_title">
        <div class="company_menu_bg"></div>
      </div>
       <div class="company_menu_list">
        <div class="company_k"><img src="../image/Company_04.gif"></div><div class="company_title"><a href="https://secure.sakura.ad.jp/rscontrol/?webmail=1" target="_blank">メール</a></div>
      </div>
      <div class="company_menu_list">
        <div class="company_k"><img src="../image/Company_04.gif"></div><div class="company_title"><a href="login.jsp" target="_blank">社員登録</a></div>
      </div>
      <div class="company_address">
      ◎連絡先
           <div>TEL:03-6280-3671　</div>
            <div>FAX:03-6280-3672</div>
            <div>所在地:〒104-0032
東京都中央区八丁堀4-12-20　第１ＳＳビル７Ａ</div>
            <div>メール：info@neosoft.jp</div>
      </div>
    </div>
    <div class="company_right">
    	<div class="company_img"></div>
        <div class="company_content_title">
                 <div class="title_left"></div>
                 <div class="company_content_title_right">
                 	<div class="title_content">最新情報</div>
                 </div>
        </div>
        <div class="news_content">
        <c:forEach items="${newslist}" var="u" varStatus="c">
            <div class="news_list">
            	 <div class="news_list_left"></div>
                 <div class="news_list_center">
                  <a href="detailnews.jsp?newstime=${u.insert_time}&news=${u.insert_text}">  
                  <!-- 循环部分 -->        
              
				
				<font>${u.insert_time}</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<font>${u.insert_text}</font>
				</div>
		        </div>
                  </a>
                  </c:forEach> 
                 </div>
            </div>
            </div>
 
            <div class="news_page">
            <div>
			<a href="neosoft!showNewsAction.action?pageNo=1">首页</a>
			<a href="neosoft!showNewsAction.action?pageNo=${page.prePageNo}">上一页</a>
			<h>第${page.pageNo}页/共${page.pageCount}页</h>
			<a href="neosoft!showNewsAction.action?pageNo=${page.nextPageNo}">下一页</a>
			<a href="neosoft!showNewsAction.action?pageNo=${page.pageCount}">尾页</a>
			</div>
			</div>
       
 
 </form>
﻿<div class="main_footer">
   		<div class="footer_t_l"> 
   			 &nbsp;&nbsp;&nbsp;&nbsp;
   			 <a href="index.jsp">ホーム</a> | 
   			 <a href="M_company.jsp">企業情報</a> | 
   			 <a href="neosoft!showNewsAction.action">最新情報</a> | 
   			 <a href="#">活動紹介</a> | 
   			 <a href="#">採用情報</a> | 
   			 <a href="#">お問い合わ</a> | 
                         <a href="M_person.jsp">個人情報保護方針</a><a>
   		</a></div><a>
      <div class="footer_t_r">Copyright (C) 2014 Neosoft Corporation All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp;</div>
</a></div><a>
</a>

</body>
</html>