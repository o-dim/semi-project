<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath}/resources/js/lib/jquery-3.6.4.min.js"></script>
<script>

</script>
<style>

	

	@font-face {
    font-family: 'Tenada';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-2@1.0/Tenada.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
	
 	header {
 		 position: fixed;
		  top: 0;
		  left: 0;
		  right: 0;
		  
		  height: 50px;
		  padding: 1rem;
		  color: black;
		  background: white;
		  display: flex;
		  justify-content: space-between;
		  align-items: center;
		  border-bottom: 20px solid #facc57;
	
	}
	
	header > div {
		float:left;
		vertical-align: top;
		font-family: 'Tenada';
	}
	
	a {
  		color: black;
  		text-decoration : none;
	}
	
	
	body {
		padding-top: 100px;
	}
	

	div {
		
		box-sizing: border-box; 
		text-align: center;
		
	}
	
	img {
	
	margin-right: 30px;
	margin-left: 30px;
	
	
	}
	
	#logo > img {
		display: block;
		vertical-align: top;
		margin: 30px;
	}
	
	.wanted   {
		overflow : hidden;
		margin-top: 20px;
		margin-bottom: 20px;
		margin-right: 20px;
	}
	.wanted > div {
		width: 200px;
		height: 200px;
		text-align: center; 
		padding-top: 120px;
		float: left;
	}

	
	

</style>

</head>

<body>
<header>

	<div class="logo">
	<h2>야채단속반<img src="${contextPath}/resources/images/main.png" width="400px"></h2>
	</div>
	<nav>
		<span><a href="javascrips:void(0)">로그인</a></span>
		<span><a href="javascrips:void(0)">회원가입</a></span>
		<span><a href="javascrips:void(0)">메뉴1</a></span>
		<span><a href="javascrips:void(0)">메뉴2</a></span>
		<span><a href="javascrips:void(0)">메뉴3</a></span>
	</nav>
</header>


	<h2 align="center">WANTED</h2>
	<div class="wanted">
		<img src="${contextPath}/resources/images/v_01.png" width=300 height=300>
		<img src="${contextPath}/resources/images/v_02.png" width=300 height=300>
		<img src="${contextPath}/resources/images/v_03.png" width=300 height=300>
	</div>

	<div class="wanted">
		<img src="${contextPath}/resources/images/v_05.png" width=300 height=300>
		<img src="${contextPath}/resources/images/v_06.png" width=300 height=300>
		<img src="${contextPath}/resources/images/v_09.png" width=300 height=300>
	</div>
	
	<div class="wanted">
		<img src="${contextPath}/resources/images/v_21.png" width=300 height=300>
		<img src="${contextPath}/resources/images/v_27.png" width=300 height=300>
		<img src="${contextPath}/resources/images/v_32.png" width=300 height=300>
	</div>
	<div class="loading_wrap">
		<div class="loading"></div>
	</div>
<footer>


</footer>
</body>
</html>