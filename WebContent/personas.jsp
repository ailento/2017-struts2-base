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

</body>
</html>