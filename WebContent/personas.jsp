<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
<head>
	<title>Diseño 2017</title>
</head>
<body>

	<h1>Personas</h1>
    <s:form action="save">
        <s:textfield label="Nombre" name="name"></s:textfield>
        <s:textfield label="Edad" name="age"></s:textfield>
        <s:radio label="Genero" name="gender" list="#{'Femenino':'Femenino','Masculino':'Masculino'}" />
        <s:submit></s:submit>
        <s:actionerror/>
    </s:form>
	    <table>
			<tr>
			<th>ID</th>
			<th>NOMBRE</th>
			<th>EDAD</th>
			<th>GENERO</th>
			</tr>
			<s:iterator value="personas" var="p">
			<tr>
			<td><s:property value="#p.id"/></td>
			<td><s:property value="#p.name"/></td>
			<td><s:property value="#p.age"/></td>
			<td><s:property value="#p.gender"/></td>
			</tr>
			</s:iterator>
		</table>

</body>
</html>