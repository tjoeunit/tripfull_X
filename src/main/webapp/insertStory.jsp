<%@page contentType="text/html; charset=UTF-8"%>
<%@ include file="import/top.jsp" %>

<style>
.story_insert{
	color: white;
	font: bold;
	width: 1200px;
}
.insert_story_subject{
	border-style: black thick;
	background-color: #58CCFF;
	width: 120px;
}
.insert_story_writer{
	background-color: #58CCFF;
}

.insert_story_content{
	background-color: #58CCFF;
	height: 700px;
}
.insert_story_file{
	background-color: #58CCFF;
}

</style>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여행 이야기 등록</title>
</head>
<body>
<!-- <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
 -->
 <script src="ckeditor/ckeditor.js"></script>

	</script>
	<center>
		<h1>여행 이야기</h1>
		<form action="insertStory.do" method="post" enctype="multipart/form-data">
			<table class="story_insert">
				<tr>
					<td class="insert_story_subject">제목</td>
					<td><input type="text"/></td>
				</tr>
				<tr>
					<td class="insert_story_writer">작성자</td>
					<td><input type="text" readonly="readonly"/></td>
				</tr>
				<tr>
					<td class="insert_story_content">내용</td>
					<td>
					<!-- id -> class 수정 예정 -->
						<textarea id="story_editor1"></textarea>
						 <script>
	                        CKEDITOR.replace( 'story_editor1');
	                	</script>
					</td>
				</tr>
				<tr>
				<hr>
					<td colspan="2" align="center"><input type="submit" value=" 새글 등록 " /></td>
				</tr>
			</table>
		</form>
		<br>
		<a href="getStoryList.jsp">글 목록 가기</a>
	</center>
</body>
</html>

<%@ include file="import/bottom.jsp" %>