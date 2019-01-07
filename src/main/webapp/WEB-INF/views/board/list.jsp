<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
  	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
</head>
<body>
	<div class="row">
		<div class="col-sm-offset-2 col-sm-8 table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="hidden-xs" style="width: 10%; text-align: center;">글번호</th>
						<th style="text-align: center;">제목</th>
						<th style="text-align: center;">작성자</th>
						<th style="text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="board">
						<tr style="text-align: center">
							<td class="hidden-xs"><c:out value="${board.no}" /></td>
							<td style="text-align: left"><a
								href="/board/view?no=${board.no}"><c:out
										value="${board.title}" /></a></td>
							<td><c:out value="${board.mid}" /></td>
							<td>${board.regDate}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<button id="writeBtn" class="btn btn-info pull-right">글쓰기</button>

		</div>
	</div>
<script type="text/javascript">
$(document).ready(function(){
	$("#writeBtn").click(function(){
		location.href = "/board/write";
	});
});
</script>
</body>
</html>