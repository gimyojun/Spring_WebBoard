<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri= "http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="../include/header.jsp" %>

<div class="row">
	<div class="col-lg-12">

      <p>
         You're chatting as "2014722087" <strong data-bind="text: userName"></strong>
      </p>
      
         <textarea rows="15" cols="60" readonly="readonly" data-bind="text: chatContent">2018-12-15 15:46 "2014722016">> Hello</textarea>
         
      <p>
         <input id="message" name="message" type="text" data-bind="value: message" />
         <button id="post" type="submit" data-bind="click: postMessage">Post</button>
         <button id="delete" type="submit" data-bind="click: deleteMessage">Delete</button>
      </p>      
      
		
		
		
		
		
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class ="panel-heading">
				Board List page
				<button id='regBtn' type = "button" onclick="location.href='/board/register'" class="btn btn-xs pull-right">Register
				New Board</button>
			</div><!-- /.panel-heading -->
			
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>#번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					
					<c:forEach var="boardVO" items="${list}">
						<tr>
							<td>${boardVO.bno}</td>
							<td><a href = '/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
							<td>${boardVO.writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
								value="${boardVO.regdate}"/></td>
							<td><span class="badge bg-red"><c:out value="${boardVO.viewcnt}"/></span></td>
						</tr>
					</c:forEach>
				</table>
			
			</div><!--  end panel-body -->
			
		</div> <!-- end panel -->
	</div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<script>
	var result = '${msg}';
	
	if(result=='SUCCESS'){
		alert("처리가 완료되었습니다.");
	}
</script>
<%@include file="../include/footer.jsp"%>