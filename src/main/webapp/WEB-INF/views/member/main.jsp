<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BitCamp</title>
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/bootswatch.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-top: 100px;
            padding-bottom: 40px;
            background-color: #ecf0f1;
        }
        .info-header {
            max-width: 500px;
            padding: 15px 29px 25px;
            margin: 0 auto;
            background-color: #18bc9c;
            color: white;
            text-align: left;
            -webkit-border-radius: 15px 15px 0px 0px;
            -moz-border-radius: 15px 15px 0px 0px;
            border-radius: 15px 15px 0px 0px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .info-footer {
            max-width: 500px;
            margin: 0 auto 20px;
            padding-left: 10px;
        }
        .info-body {
            max-width: 500px;
            padding: 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            -webkit-border-radius: 0px 0px 15px 15px;
            -moz-border-radius: 0px 0px 15px 15px;
            border-radius: 0px 0px 15px 15px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .info-heading {
            margin-bottom: 15px;
        }
        .info-btn {
            text-align: center;
            padding-top: 20px;
        }

    </style>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">

    <!-- header -->
    <div class="info-header">
        <h2 class="info-heading">안내</h2>
    </div>

    <!-- body -->
    <div class="info-body">
    
    
    <c:if test="${userInfo !=null}">    
        <h3>${userInfo.mname}님 환영합니다</h3>
    </c:if>
        <p>원하는 기능 선택</p>

        <div class="row info-btn">
            <button id="joinBtn" class="btn btn-large btn-info">회원가입</button>
            <button id="loginBtn" class="btn btn-large btn-success">로그인</button>
            <button id="memberListBtn" class="btn btn-large btn-danger">회원 리스트 조회</button>
        </div>

    </div>

    <!-- footer -->
    <div class="info-footer">
        <p>© BitCamp 2018.</p>
    </div>
</div>

<script src="/resources/js/jquery-2.1.0.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/bootswatch.js"></script>

<script>
$(document).ready(function(){
	
	$("#memberListBtn").click(function(){
		if("${userInfo.mid}" == "admin"){
			location.href = "/member/list";
		}else{
			alert("관리자만 열람 가능합니다");
		}
	});
	
	$("#loginBtn").click(function(){
		location.href = "/member/login";
	});
	
	$("#joinBtn").click(function(){
		location.href = "/member/join";
	});
});


</script>
</body>
</html>