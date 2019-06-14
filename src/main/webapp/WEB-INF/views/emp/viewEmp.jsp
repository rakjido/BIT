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
			<table class="table table-striped"
				style="border: 1px solid black; text-align: center;">
				<tr>
					<th style="text-align: center;">사원번호</th>
					<th style="text-align: center;">사원이름</th>
					<th style="text-align: center;">직종</th>
					<th style="text-align: center;">담당 매니저 번호</th>
					<th style="text-align: center;">입사일</th>
					<th style="text-align: center;">월급</th>
					<th style="text-align: center;">추가수당</th>
					<th style="text-align: center;">부서번호</th>
				</tr>
				<tr>
					<td>${emp.empno }</td>
					<td>${emp.ename }</td>
					<td>${emp.job }</td>
					<td>${emp.mgr }</td>
					<td>${emp.hiredate }</td>
					<td>${emp.sal }</td>
					<td>${emp.comm }</td>
					<td>${emp.deptno }</td>
				</tr>
			</table>

			<a href="update?empno=${emp.empno}">수정</a><br>
			<a href="delete?empno=${emp.empno}">삭제</a><br>
			<a href="list">목록</a><br>
</body>
</html>