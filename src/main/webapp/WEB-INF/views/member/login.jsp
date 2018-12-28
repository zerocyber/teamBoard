<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>BitCamp</title>

    <style type="text/css">
        body {
            padding-top: 100px;
            padding-bottom: 40px;
            background-color: #ecf0f1;
        }
        .login-header {
            max-width: 400px;
            padding: 15px 29px 25px;
            margin: 0 auto;
            background-color: #2c3e50;
            color: white;
            text-align: center;
            -webkit-border-radius: 15px 15px 0px 0px;
            -moz-border-radius: 15px 15px 0px 0px;
            border-radius: 15px 15px 0px 0px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .login-footer {
            max-width: 400px;
            margin: 0 auto 20px;
            padding-left: 10px;
        }
        .form-signin {
            max-width: 400px;
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
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 15px;
        }
        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }
        .form-btn {
            text-align: center;
            padding-top: 20px;
        }

    </style>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/bootswatch.min.css" rel="stylesheet">
</head>

<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/bootswatch.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$("#loginBtn").click(function(){
		
		var mid = $("#inputEmail").val();
		var mpassword = $("#inputPassword").val();
		console.log(mid);
		console.log(mpassword);
		
		if(mid != "" && mpassword != ""){
			$.ajax({
				url: '/member/loginCheck',
				type: 'POST',
				data: {mid : mid, mpassword : mpassword},		
				success: function(data){
					if(data === 0){
						alert("로그인 정보를 다시 확인해주세요")
					}else{
						$(".form-signin").submit();
					}
				}
				
			})
		}
	});
	
});

</script>

<div class="container">

    <!-- header -->
    <div class="login-header">
        <h2 class="form-signin-heading">BitCamp</h2>
    </div>

    <!-- form -->
    <form class="form-signin" action="/member/login" method="post">
        <input name="mid" type="text" class="form-control" id="inputEmail" placeholder="아이디">
        <input name="mpassword" type="password" class="form-control" id="inputPassword" placeholder="비밀번호">
       
        <div class="row form-btn">
            <button id="loginBtn" class="btn btn-large btn-warning" type="button">로그인</button>
            <a href="/member/join" class="btn btn-large btn-default">회원가입</a>
        </div>
    </form>

    <!-- footer -->
    <div class="login-footer">
        <p>© BitCamp 2018.</p>
    </div>
</div>


</body>
</html>