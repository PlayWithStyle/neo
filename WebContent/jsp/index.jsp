<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="../js/jquery.min.js"></script>
<script src="../js/npm.js"></script>
<script src="../js/bootstrap.min.js"></script>
<link type="text/css" href="../css/style.css" rel="stylesheet" />
<title>ネオソフト</title>
<%request.setCharacterEncoding("utf-8");
		            response.setContentType("text/html,charset=utf-8");%>

<script type="text/javascript">

	//Window.location.href="neosoft!showPictureAction.action";
	//Window.onload = "neosoft!showPictureAction.action";
	
$(document).ready(function(){
  $.post('neosoft!showPictureAction.action',{},function(data){   //xxxx/xxxx.do是发送到action的请求，
                                   
  });
})

$(document).ready(function(){
  $.post('neosoft!threeAction.action',{},function(data){   //xxxx/xxxx.do是发送到action的请求，
	                   
  });
})
/*function show(){
	window.location.href = "index.jsp";
	}*/
</script>


</head>
<body>
<s:action name="neosoft!showPictureAction.action" namespace="/"></s:action>
<div class="main_top">
   <div class="logo">
      <a href="index.jsp"><div class="neosoft_logo"></div></a>
      <a href="index.jsp"><div class="top_logo"></div></a>
      <a href="http://privacymark.jp/"><div class="p_logo"></div></a>

   </div>
   <div class="nav">
       <div class="top_nav">
           <a href="index.jsp"><div class="nav_home"></div></a>
           <div class="nav_ge"></div>
           <a href="M_company.jsp"><div class="nav_company"></div></a>
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
</div><div class="main_content">
   <div class="bg_bk">
   		<div class="bg_image"></div>
   </div>
   <div class="content_center">
   		<div class="content_left"> 
        	<div class="content_left_title">
                 <div class="title_left"></div>
                 <div class="title_right">
                 	<div class="title_content">企業文化</div>
                 </div>
            </div>
            <div class="content_left_text" style="overflow:auto;">
            	<p>FACE TO FACE COMMUNICATION を基本として、<br />
設計から現場まで一貫して業務を遂行する中で、<br />
事業に関わるすべての関係者と相互に敬い合い、<br />
責任感を強く持ちつつ、<br />
相手の領域に一歩踏み込むお節介心も失わず、<br />
継続的に新しい技術に挑戦しながら、<br />
スピード感のある決断力と<br />
緊急時には組織を乗り越えても対応する<br />
お客様の要求を素早く的確に具体化し提示することに注力しながら、<br />
将来にわたってお客様の利益を護るお客様第一主義で事業を展開する。</p>            </div>
        </div>
        <div class="content_right" style="overflow:hidden">
        	<div class="content_right_title">
            	<div class="content_right_title_l"></div>
                <div class="content_right_title_c">
                	<div class="content_right_title_text">最新情報</div>
                </div>
                <div class="content_right_title_r"></div>
            </div>
            <!-- 第1条消息 -->
            
            <c:forEach items="${tlist}" var="u" varStatus="c">
            	<div class="content_right_text" >
              		<div class="content_right_text_l"></div>
              		<div class="content_right_text_r">
                   <div class="content_right_text_r_title">
                   			<div class="news_text_title"> ${u.insert_time}</div>
                            <div class="news_text_img"></div>
                   </div>
                   <div class="content_right_text_r_text">
                   		<a href="detailnews.jsp?newstime=${u.insert_time}&news=${u.insert_text} ">${u.insert_text}</a>
                   </div>
              </div>
            </div>
           
             </c:forEach> 
            
            
            
            
            
          
        </div>
   </div>
   <div class="content_center1">
        <div class="content_center1_left" style="word-break:keep-all;white-space: nowrap;overflow:hidden">
        	<div class="content_center1_left_title">
                 <div class="title_left"></div>
                 <div class="content_center1_title_right">
                 	<div class="title_content">活動紹介</div>
                 </div>
            </div>
            
            
            <div class="content_center1_left_text">
                       
   <c:forEach items="${plist}" var="u" varStatus="c">
				 <div class="img_bk">
                      <div class="img_border">
                      <a href="detailpicture.jsp?picname=${u.name}&picture=${u.path} ">
                      <img src="${pageContext.request.contextPath}/upload/${u.path}" border="0" width="148px" height="127px" />
                      </a>
                      <div class="img_title">${u.name}</div>
                      </div>
                 </div>
	</c:forEach>
      
            </div>
        </div>
        <div class="content_center1_right">
         	<div class="content_right_title">
            	<div class="content_right_title_l"></div>
                <div class="content_right_title_c">
                	<div class="content_right_title_text">企業情報</div>
                </div>
                <div class="content_right_title_r"></div>
            </div>
            <div class="content_center1_right_text">
                <div>TEL:03-6280-3671　<br/>
                FAX:03-6280-3672<br/>
                所在地:〒104-0032
<br/>
                東京都中央区八丁堀4-12-20　第１ＳＳビル７Ａ<br/>
                メール：info@neosoft.jp</div>
            </div>
        </div>
   </div>
</div>
﻿<div class="main_footer">
   		<div class="footer_t_l"> 
   			 &nbsp;&nbsp;&nbsp;&nbsp;
   			 <a href="index.jsp">ホーム</a> | 
   			 <a href="M_company.jsp">企業情報</a> | 
   			 <a href="neosoft!showNewsAction.action">最新情報</a> | 
   			 <a href="#">活動紹介</a> | 
   			 <a href="#">採用情報</a> | 
   			 <a href="#">お問い合わ</a> | 
                         <a href="M_person.jsp">個人情報保護方針</a>
   		</div>
      <div class="footer_t_r">Copyright (C) 2014 Neosoft Corporation All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp;</div>
</div>

</body>
</html>