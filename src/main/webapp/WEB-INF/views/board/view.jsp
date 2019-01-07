<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
  	  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	  crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<style>
#editorContent {
	height: 600px;
	overflow: scroll;
}
</style>
<body>
<div class="col-sm-12 col-md-12 main" style="margin-top: 50px;">
	<div class="row">
		<div class="text-center">
			<h3>이미지 게시판</h3>
		</div>
	</div>

	<form id="readForm">
		<input type="hidden" name="pno" value="${board.no}">
		<div class="form-group row">
			<div class="col-sm-8 col-sm-offset-2">
				<label for="title">Title</label>
				<div class="row">
					<div class="col-sm-12">
						<input type="text" class="form-control" id="title"
							value="${board.title}" readonly />
					</div>
				</div>
			</div>
		</div>

		<div class="form-group row">
			<div class="col-sm-8 col-sm-offset-2">
				<label for="content">Content</label>

				<div class="form-control" id="editorContent" contenteditable="false">
					<div class="col-sm-12">${board.content}</div>
				</div>
			</div>
		</div>

		<div class="form-group row">
			<div class="col-sm-2 col-sm-offset-8">
				<p class="text-right label label-warning pull-right">${board.mid}</p>
			</div>
		</div>
	</form>

	<div class="row">
		<div class="col-sm-8 col-sm-offset-2">
			<div class="row">
				<div class="col-sm-12 text-center">
					<button id="back" type="button" class="btn btn-xs btn-default">To List</button>
						<button id="modify" type="button" class="btn btn-xs btn-default">Modify</button>
						<button id="remove" type="button" class="btn btn-xs btn-default">Delete</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$("#back").click(function(){
		location.href = "/board/list";
	});
});
</script>

</body>
</html>