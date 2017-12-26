<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		int n1=0, n2=0, n3=0, sum= 0, prom =0;
		
		if (request.getParameter("ok") != null){
			n1 = Integer.parseInt(request.getParameter("text1"));
			n2 = Integer.parseInt(request.getParameter("text2"));
			n3 = Integer.parseInt(request.getParameter("text3"));
			
			sum = n1+n2+n3;
			
			prom = sum/3;
		}
 	%>
 	<h1><center>Suma y Promedio de notas</center></h1>
 	<form action ="SumayPromedio.jsp" method="post">
 		<table border="0">
 			<tr>
 				<td>Ingrese la primera nota:</td>
 				<td><input type="text" name="text1"></td>
 			</tr>
 			<tr>
 				<td>Ingrese la segunda nota:</td>
 				<td><input type="text" name="text2"></td>
 			</tr>
 			<tr>
 				<td>Ingrese la tercera nota:</td>
 				<td><input type="text" name="text3"></td>
 			</tr>
 			<tr>
 				<td colspan="2" align="center"><input type="submit" value="enviar" name="ok" /></td>
 			</tr>
 			<tr>
 				<td>Suma:</td>
 				<td><input type="text" name="text4" value=<% out.print(sum); %>></td>
 			</tr>
 			<tr>
 				<td>Promedio:</td>
 				<td><input type="text" name="text5" value=<% out.print(prom); %>></td>
 			</tr>
 		</table>
 	</form>
</body>
</html>