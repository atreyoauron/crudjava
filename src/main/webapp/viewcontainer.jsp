<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
 <%@page import="com.dao.*, com.bean.Container, java.util.*" %>
    
    
   <%List<Container> listaCont = AppDao.getAllContainerRecords();
   
   
   
   
   request.setAttribute("cont", listaCont);
   %>
    
    
<!DOCTYPE html>
<html>
<head>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Visualizar Containers</title>
</head>
<body>
<h1>Visualização de Containers</h1>

<div class="container-fluid">
<table class ="table">



<th>ID</th><th>Nome Cliente</th><th>Serial</th><th>Tipo</th><th>Status</th><th>Categoria</th>

<c:forEach items="${cont}" var="container">
<tr>
<td>${container.getCont_id()}</td>
<td>${container.getCont_cliente()}</td>
<td>${container.getCont_num()}</td>
<td>${container.getCont_tipo()}</td>
<td>${container.getCont_status()}</td>
<td>${container.getCont_categoria()}</td>
</tr>
</c:forEach>



</table>

</div>

</body>
</html>