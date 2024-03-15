<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>
</head>
<body>
<table border="1"  style=" border-collapse: collapse;padding:5px" >
            <h2 >List of users data</h2>
            <tr >
                 <th>ID</th>
                 <th >Name</th>
                  <th>Email</th>
                   <th>Age</th>
                   <th>Date of Birth</th>
            </tr>
            <c:forEach var="student" items="${students}">
                <tr>
                 <td><c:out value="${student.student_id}" /></td>
                    <td><c:out value="${student.name}" /></td>
                    <td><c:out value="${student.email}" /></td>
                    <td><c:out value="${student.age}" /></td>
                    <td><c:out value="${student.dateOfBirth}" /></td>
                </tr>
            </c:forEach>
        </table>

    
</body>
</html>
