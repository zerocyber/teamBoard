<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BitCamp</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootswatch.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- Main Navigation ========================================================================================== -->
<div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">BitCamp</a>
        </div>
        <div class="navbar-collapse collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav">
                <li class="active">
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">회원관리</a>
                	<ul class="dropdown-menu">
                        <li><a href="#">회원등록</a></li>
                        <li><a href="#">회원목록</a></li>
                    </ul>
                </li>
                <li>
                	<a href="#" class="dropdown-toggle" data-toggle="dropdown">미디어관리</a>
                	<ul class="dropdown-menu">
                        <li><a href="#">미디어등록</a></li>
                        <li><a href="#">미디어목록</a></li>
                    </ul>
                </li>
                <li><a href="#">대출관리</a></li>
                <li><a href="#">공지사항</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${ContextPath}/member/logout">로그아웃 (userId)</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">설정 <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">개인정보</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>


<!-- Container ======================================================================================= -->
<div class="container">
	<div class="row">
	
<!-- ★★★ Contents -->
        <div class="col-lg-12">
            <div class="page-header2">
                <h3>회원정보</h3>
            </div>


            <div class="table-responsive">
                <table class="table table-bordered">
                    <colgroup>
                        <col width="120">
                        <col width="*">
                        <col width="120">
                        <col width="*">
                    </colgroup>
                    <tbody>
                    <tr>
                        <th class="text-center">ID</th>
                        <td class="text-left">
                        	<input type="text" class="form-control" placeholder="아이디" value="gglim">
                        </td>
                        <th class="text-center">회원명</th>
                        <td class="text-left">
                        	<input type="text" class="form-control" placeholder="이름" value="임경균">
                        </td>
                    </tr>
                    <tr>
                        <th class="text-center">생년월일</th>
                        <td class="text-left">                        
                        	<input type="text" class="form-control" placeholder="이름" value="2014.02.19">                       	
                        </td>
                        <th class="text-center">성별</th>
                        <td class="text-left">
                        	<div class="radio">
	                            <label>
	                                <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
	                                남자
	                            </label>
	                        </div>
	                        <div class="radio">
	                            <label>
	                                <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
	                                여자
	                            </label>
	                        </div>	                       	
                        </td>
                    </tr>
                    <tr>
                        <th class="text-center">전화번호</th>
                        <td class="text-left">
                        	<input type="text" class="form-control" placeholder="이름" value="010-0000-00000"> 	
                        </td>
                        <th class="text-center">주소</th>
                        <td class="text-left">
                        	<input type="text" class="form-control" placeholder="이름" value="서울시 금천구 가산동">	
                       	</td>
                    </tr>
                    </tbody>
                </table>
            </div>

            
            <div class="pull-right">
                <a href="#" class="btn btn-success btn-default">저장</a>
                <a href="./list.html" class="btn btn-large btn-default">목록</a>
            </div>

        </div>
      </div>

<!-- Footer ========================================================================================== -->
     <footer>
        <div class="row">
            <div class="col-lg-12">
                <ul class="list-unstyled">
                    <li class="pull-right"><a href="#top">위로 이동</a></li>                    
	                  <li><a href="#">BitCamp 홈</a></li>                    
                    <li><a href="#">이용약관</a></li>
                    <li><a href="#">도움말</a></li>
                    <li><a href="#">회원탈퇴</a></li>                  
                </ul>
                <p>© BitCamp 2018.</p>
            </div>
        </div>
    </footer>
</div>


<script src="js/jquery-2.1.0.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootswatch.js"></script>
</body>
</html>