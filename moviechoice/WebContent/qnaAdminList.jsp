<%@page import="com.project.model.vo.qnaVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
request.getAttribute("listOne");
request.getAttribute("keyword");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QnA 관리자 검색</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</head>
<link rel="stylesheet" href="css/mheader.css">
<link rel="stylesheet" href="css/free.css">
<body>
	<%@ include file="include/headerAdmin.jspf" %>
	<div class="body">
	    <h2>QnA 관리자</h2>
		<hr class="color">
			<div class="box">
      		<div class="innerbox">
      		<div class="content">
			    <form action="qnaAdminController?search=qnaAdminList" method="get">
			        <select class="select" name="idx">
						<option value="0">제목</option>
						<option value="1">작성일</option>
						<option value="2">영화추가</option>
						<option value="3">평론가탈퇴</option>
					</select> 
					<input class="search" type="text" name="keyword" placeholder="검색어 입력 (작성일 검색 ex: 20240507)"> 
					<input class="searchbtn" type="submit" value="검색"> 
			        <input type="hidden" name="search" value="qnaAdminList">
			        <input class="listbtn"  type="button" value="전체목록" onclick="location.href='qnaAdmin.jsp'">
			    </form>
	    </div>
     	</div>
    	</div>
	
		<form action="qnaAdminController?search=qnaAdminList" method="get">   
		   <table border frame=void>
		   <tr>
				<th>번호</th>
				<th>분류</th> 
				<th>작성자</th>
				<th>작성일</th>
				<th>제목</th>
			</tr>
		   <c:forEach var="vo" items="${listOne }">
		   <tr>
		      <td width="5%">${vo.qaNo }</td>
		      <td width="15%">${vo.qaCategory }</td> 
		      <td width="15%">${vo.nick }</td>
		      <td width="15%">${vo.qaDate }</td>
		      <td>
			      <a href="qnaAdminView.jsp?qaNo=${vo.qaNo }"> ${vo.qaTitle }
		      </a>
		      </td>
		   </tr>
		
		   </c:forEach>
		   <tfoot id="page">
		           <tr>
		              <td colspan="5">
		               <ol class="paging">
		               <%--[이전]에 대한 사용여부 처리 --%>
		               <c:if test="${selPvo.beginPage == 1 }">
		                  <li class="disable">이전</li> 
		               </c:if>
		               <c:if test="${selPvo.beginPage != 1 }">
		                  <li>
		                     <a href="qnaAdminController?search=qnaAdminList&cPage=${selPvo.endPage - 1 }&idx=${idx }&keyword=${keyword}">이전</a>
		                  </li> 
		               </c:if>
		               
		               <%--블록내에 표시할 페이지 태그 작성(시작~끝) --%>
		               <c:forEach var="pageNo" begin="${selPvo.beginPage }" end="${selPvo.endPage }">
		               <c:choose>
		                  <c:when test="${pageNo == selPvo.nowPage }">
		                     <li class="now">${pageNo }</li>
		                  </c:when>
		                  <c:otherwise>
		                     <li><a href="qnaAdminController?search=qnaAdminList&cPage=${pageNo }&idx=${idx }&keyword=${keyword}">${pageNo }</a></li>
		                  </c:otherwise>
		               </c:choose>
		               </c:forEach>
		                  
		               <%--[다음]에 대한 사용여부 처리 --%>   
		               <c:if test="${selPvo.endPage < selPvo.totalPage }">
		                  <li>
		                     <a href="qnaAdminController?search=qnaAdminList&cPage=${selPvo.nowPage + 1 }&idx=${idx }&keyword=${keyword}">다음</a>
		                  </li> 
		               </c:if>
		               <c:if test="${selPvo.endPage >= selPvo.totalPage }">
		                  <li class="disable">다음</li> 
		               </c:if>
		               </ol>
		            </td>
		          </tr>
		       </tfoot>
		   </table>
   	</form>
</div>
</body>
</html>