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
	
	function fnModify(){
		location.href="${contextPath}/";
	}
	
	function fnRemove(){
		if(confirm('주문취소하시겠습니까?')){
			$('#frm_remove').submit();
		}
	}
	
	function fnJilmun(){
		location.href="${contextPath}/";
	}
	
</script>
</head>
<body>
<style>

	.mypage{
		width: 500px;
		height: 500px;
		margin: 100px auto;
		border-radius: 10px;
		background-color: #F4F4F4;
		padding: 30px 0;
	}
	h1 {
		text-align: center;
		margin-bottom: 50px;
	}
	
	input {
		border-radius: 10px;
		border:none;
		background-color: #FACC57;
		margin: 10px auto;
		padding: 6px;
		width: 300px;
		height: 50px;
	}
	.mypagecontent {
		text-align: center;
	}
	
	
</style>

	<div class="mypage">
		<div>
			<h1>마이페이지</h1>
		</div>
			<div class="mypagecontent">
			<div>
				<h2>000님 어서오시게나</h2>
			</div>
			<div>
				<input type="button" value="회원 정보 수정" onclick="fnModify()">
			</div>
			<form id="frm_remove" action="${contextPath}/" method="post">
			<input type="hidden" name="No" value="${No}">
			</form>
			<div>
				<input type="button" value="주문 취소" onclick="fnRemove()">
			</div>
			<div>
				<input type="button" value="자주묻는질문" onclick="fnJilmun()">
			</div>
			<div>
				<input type="button" value="여기뭐넣지?" onclick="fnMolla()"> 
			</div>
		</div>
	</div>
	

</body>
</html>