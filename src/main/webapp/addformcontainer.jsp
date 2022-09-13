<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
 <%@page import="com.dao.*, com.bean.Container, java.util.*" %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="css/formstyle.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<title>Adicionar Container</title>
</head>
<body>
<h1>Adicionar Containers</h1>
<div class="container-fluid">

<form action="addcontainerprocess.jsp" method="post">

<table class="center">

<tr>
<td>Nome do Cliente:</td><td><input name="cont_cliente" type="text" required></td>
</tr>
<td>Serial do Container:</td><td><input name="cont_num" id="cont_num" type="text" maxlength="11" required></td><td><button value="Gerar Serial" name="Gerar Serial" type="button" onClick="GerarSerial(4,7)" >Gerar Serial</button></td>
</tr>
<td>Tipo do Container:</td>
<td>20 <input input type="radio" value=20 name="cont_tipo" required>
40 <input input type="radio" value=40 name="cont_tipo" required></td>
</tr>
<td>Status do Container:</td>
<td>Cheio <input input type="radio" value="Cheio" name="cont_status" required>
Vazio <input input type="radio" value="Vazio" name="cont_status" required>
</td>

</tr>
<td>Categoria do Container:</td>
<td>Importa��o <input input type="radio" value="Importa��o"name="cont_categoria" required>
Exporta��o <input input type="radio" value="Exporta��o" name="cont_categoria" required>
</td>
</tr>
<td></td><td><input type="submit"></td><td></td>

</table>


</div>

<script>	
    	 function GerarSerial(charLen, numLen){
      	   var resultado = '';
      	    var chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      	    var nums = '0123456789';
      	    var charsLength = chars.length;
      	    var numsLength = nums.length;
      	    
      	    for ( var i = 0; i < charLen; i++ ) {
      	      resultado += chars.charAt(Math.floor(Math.random() * 
      	 charsLength));
      	   }
      	  for ( var i = 0; i < numLen; i++ ) {
      	      resultado += nums.charAt(Math.floor(Math.random() * 
      	 numsLength));
      	   }
       		document.getElementById('cont_num').value = resultado;   
      }
    	    
    
 </script>

</body>
</html>