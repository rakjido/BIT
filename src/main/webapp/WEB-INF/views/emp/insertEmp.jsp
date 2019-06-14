<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Emp</title>
</head>
<body>
	<form action="" method="post">
		Empno : <input type="text" name="empno"/><br>
		Ename : <input type="text" name="ename"/><br>
		Job : <input type="text" name="job" value="MANAGER"/><br>
		MGR : <input type="text" name="mgr" value="7698"/><br>
		HireDate : <input type="text" name="hiredate" value="2019-03-12"/><br>
		Sal : <input type="text" name="sal"/><br>
		Comm : <input type="text" name="comm"/><br>
		Deptno : <input type="text" name="deptno" value="20"/><br>
														
		<input type="submit" value="insert"><br>
	</form>
</body>
</html>