<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<style>
table{
	text-decoration:none;
}

</style>
<div>
	<nav class="navbar w3-white">
	<table>
		<tr>
        <td colspan=3 align="left">
            	<a href="/main"style="backgroundColor:white;" class="btn w3-white"><!-- <img src="#"> -->로고이미지</a>
        </td>
            <form name="form" method="post" action="/search">
        <td >
            <input type="text" id="search" name="search" placeholder="검색어 입력">
        </td>
        <td>
            <input type="button" class="btn btn-default w3-violet" value="검색" onClick="dataCheck()">
        </td>
            </form>
            &nbsp;
        <!--<c:choose>
        <c:when test="${empty sessionScope.dark}">-->
        <td>    
        	<input type="button" class="btn btn-default w3-violet" value="다크모드" onClick="dark()">
        </td>
        <!--</c:when>
        <c:otherwise>
        <td>
            <button type="button" id=btn name="light" id="light" onClick="light()">라이트모드</button></td>
        </c:otherwise>
        </c:choose>-->
        <c:choose>
        <c:when test="${empty sessionScope.id}">
        <td>
            <a href="/login"style="backgroundColor:white;" class="btn w3-white">로그인</a></td>
        </c:when>
        <c:otherwise>
        <td>
            [${sessionScope.id}]<br><a href="/logout" style="backgroundColor:white;" class="btn w3-white">로그아웃</a>
        </td>
        </c:otherwise>
        </c:choose>
        </tr>
        </table>
    </nav>
</div>
<script>
$("input").keypress(function(event){
	
	if(event.which==13){
		dataCheck();
	}
	
});

function dataCheck(){
	if(document.getElementById("search").value==""){
		alert("검색할 단어를 입력하세요");
		document.getElementById("search").focus();
		return;
	}
	document.form.submit();
}

function dark(){
	
	
}
</script>