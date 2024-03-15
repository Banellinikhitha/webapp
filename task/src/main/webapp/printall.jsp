<%@page import="task.dto.Register"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%List <Register> list=(List<Register>)request.getAttribute("list");%>
   <table style="font-size:20px" >
          <tr>
           <td>id</td>
           <td>Name</td>
          <td>Email</td>
          <td>Age</td>
               <td>Date_Of_Birth</td>
               
          </tr>
          <%for(Register s:list) {%>
          <tr>
            <td><%=s.getId() %></td>
            <td><%= s.getName()%></td>
            <td><%=s.getEmail() %></td>
            <td><%=s.getAge() %></td>
           <td><%=s.getDate() %></td>
           
          </tr>
          <%} %>
         </table>
</body>
</html>