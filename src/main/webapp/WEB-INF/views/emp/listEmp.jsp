<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<c:set var="Emplist" value="${emplist}"></c:set>
			<table class="table table-striped"
				style="border: 1px solid black; text-align: center;">
				<tr>
					<th style="text-align: center;">사원이름</th>
					<th style="text-align: center;">사원번호</th>
					<th style="text-align: center;">직종</th>
					<th style="text-align: center;">담당 매니저 번호</th>
					<th style="text-align: center;">입사일</th>
					<th style="text-align: center;">월급</th>
					<th style="text-align: center;">추가수당</th>
					<th style="text-align: center;">부서번호</th>
				</tr>
				<c:forEach var="i" begin="0" end="${Emplist.size() }">
					<tr>
						<td><a href="view?empno=${Emplist[i].empno}">${Emplist[i].empno }</a></td>
						<td>${Emplist[i].ename }</td>
						<td>${Emplist[i].job }</td>
						<td>${Emplist[i].mgr }</td>
						<td>${Emplist[i].hiredate }</td>
						<td>${Emplist[i].sal }</td>
						<td>${Emplist[i].comm }</td>
						<td>${Emplist[i].deptno }</td>
					</tr>
				</c:forEach>
			</table>
			
			<a href="insert">추가</a><br>

</body>
</html>