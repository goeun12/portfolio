<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="resources/css/tipWrite.css?after" rel="stylesheet">
    <title>팁 수정 페이지</title>
  <style>
   @font-face {
    font-family: 'MinSans-Regular';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

#honey_title{background:#f9ae98;
				width: 50%; height:50px;
				margin-left:25%;
				margin-block-end:0;
				margin-top: 80px;
				text-align:center;
				text-decoration:none;
				font-size:25px; font-weight:700;
				line-height:50px; border-radius:5px;}	

  </style>
</head>
<body>
    
    <jsp:include page="../common/header.jsp"/>
    
    <div class="container-fluid">
       <div class="container-fluid">
    	<div id="honey_title">
    		<p>꿀팁 게시판</p>
  		</div>
        
        
      
	<form class="needs-validation" method="POST" action="${contextPath}/update.tip">
        			<input type="hidden" value="${ b.boardNo }" name="boardNo"/>
					<input type="hidden" value="${ page }" name="page"/>
            <div>
                <div class="input-group mb-3" id="write_title">
                    <input style="text-size:20px" type="text" name="title" class="form-control" id="title" aria-label="Username" required aria-describedby="basic-addon1" value="${b.title}">
                </div>
                <div>
                    <textarea class="form-control" name="content" id="content" style="resize: none;">${b.content}</textarea>
                </div>
            </div>
            <br>
            <div class="mx-auto" style="width: 80px;">
                <button type="submit" class="btn btn-primary me-md-2" id ="submit_button">등록</button>
            </div>
        </form>
        </div>
        
        
                <jsp:include page="../common/footer.jsp"/>
        </div>
        
</body>
</html>