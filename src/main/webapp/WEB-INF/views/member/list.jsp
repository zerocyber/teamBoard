<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BitCamp</title>
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/bootswatch.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style type="text/css">
    td {
    text-align: center;
    
    }
    
    </style>
    
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
            <a class="navbar-brand" href="">BitCamp</a>
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
             	<c:if test="${userInfo != null}">
            		<li><a href="">${userInfo.mname}님</a></li>
             	</c:if>
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
        <div class="col-lg-12">
            <!-- ★★★ Tab Panel -->
            <div id="communityList" class="tab-content">
                <!-- ★★★ 가입 커뮤니티 -->
                <div class="tab-pane fade active in" id="joined">
                    <div class="page-header">
                        <h2 id="container">회원목록</h2>
                    </div>
                    
                    <div class="panel panel-default">
                        <div class="panel-body">
                                <div class="input-group">
                                    <input id="searchKeyword" type="text" class="form-control" placeholder="회원명 또는 ID">
                                    <span class="input-group-btn">
                                        <button id="memberSearchBtn" type="button" class="btn btn-primary">검색</button>
                                    </span>
                                </div>
                        </div>
                    </div>

 					<div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th class="text-center">번호</th>
                                <th class="text-center">ID</th>
                                <th class="text-center">회원명</th>
                                <th class="text-center">전화번호</th>
                                <th class="text-center">가입일</th>
                            </tr>
                            </thead>
                            <tbody class="memberList">
                            
                            
                            </tbody>

                        </table>
                        
                        <div class="row">
                        	<div class="col-lg-12 text-center">
	                            <ul class="pagination">        
	                
	                        	</ul>
                        	</div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>




<!-- Footer ========================================================================================== -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <ul class="list-unstyled">
                    <li class="pull-right"><a href="#top">위로 이동</a></li>                    
                    <li class="pull-right"><a href="/member/login">로그인</a></li>                    
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


<script src="/resources/js/jquery-2.1.0.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/bootswatch.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	
	function getMemberList(keyword, page){
		var searchKeyword = "/" + keyword;
		var listPage = "/" + page;
		
		if(typeof page == "undefined"){
			var listPage = "/1";
		}    
		
		if(typeof keyword == "undefined"){
			searchKeyword = "/none";
		}  
	
		$.getJSON("/member/memberList" + searchKeyword + listPage, function(data) {
			var serarchKeyword = $("#searchKeyword").val();
			var str = "";
			
			$(data.list).each(function(){
	            str += "<tr>";
	            str += "	<td class='text-center'>" + this.mno + "</td>";
	            str += "	<td>" + this.mid + "</td>";
	            str += "	<td><a href=''>" + this.mname + "</a></td>";
	            str += "	<td>" + this.phone + "</td>";
	            str += "	<td>" + this.regdate + "</td>";
	            str += "</tr>";
			});
			
			if($(data.list).length == 0){
				str += "<tr>";
				str += "	<td colspan='5' class='text-center'>가입한 회원이 없습니다.</td>";
				str += "</tr>";		
			}
			
			$(".memberList").html(str);
			memberListPaging(data.pm);
		});
	}
	getMemberList();
	
	$("#memberSearchBtn").click(function(){
		var serarchKeyword = $("#searchKeyword").val();
		if(typeof serarchKeyword == "undefined" || serarchKeyword == ""){
			serarchKeyword = "none";
		} 
		getMemberList(serarchKeyword);
	});
	
	function memberListPaging(pm){
		   var str = "";    
		   if(pm.prev){      
		     str += "<li><a href = '"+(pm.startPage -1)+"'> << </a></li>";
		   }    
		   for(var i = pm.startPage, len = pm.endPage; i< len+1; i++){
		   	if(pm.cri.page == i){
		   		str += "<li class='active'><a class='btn btn-xs btn-secondary' href='"+i+"'>"+i+"</a></li>";
		   	}else{
		   		str += "<li><a class='btn-xs btn btn-secondary' href='"+i+"'>"+i+"</a></li>";
		   	}
		   }
		   if(pm.next){      
		     str += "<li><a href = '"+(pm.endpage +1)+"'> >> </a></li>";
		   }
		   $('.pagination').html(str);
	 };
		   
		   /* memberList 페이징 */
		   $(".pagination").on("click","li a",function(e){
		     e.preventDefault();
		     var serarchKeyword = $("#searchKeyword").val();
				if(typeof serarchKeyword == "undefined" || serarchKeyword == ""){
					serarchKeyword = "/none";
				}  
		     var page = $(e.target).text(); // page number
		     getMemberList(serarchKeyword, page);
		   });  
	
});

</script>
</body>
</html>