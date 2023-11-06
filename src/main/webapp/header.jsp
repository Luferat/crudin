<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="model.Page"%>

<%
String titleTag = "CRUDin";
String styleTag = "";

Page thePage = (Page) request.getAttribute("thePage");

if (thePage.getTitle() != "") {
	titleTag += " - " + thePage.getTitle();
}

if (thePage.getStyle() != null) {
	styleTag = "<link rel=\"stylesheet\" href=\"css/" + thePage.getStyle() + "\">";
}
%>

<!DOCTYPE html>
<html>
<head>
<base href="./">
<meta charset="UTF-8">
<title><%=titleTag%></title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<%=styleTag%>
<link rel="icon" href="assets/img/logotipo.png">
</head>
<body>

	<a id="top"></a>

	<div id="wrap">

		<header>
			<div>
				<div id="header">
					<a href="index.jsp" title="CRUDin"> <img
						src="assets/img/logotipo.png" alt="Logotipo de CRUDin"></a>
					<h1>CRUDin</h1>
				</div>
				<form id="search">
					<input type="search" name="q" placeholder="Procurar">
					<button type="submit">
						<i class="fa-solid fa-magnifying-glass fa-fw"></i>
					</button>
				</form>
			</div>
		</header>

		<nav>
			<div id="menu">
				<a href="index.jsp" title="Início"><i
					class="fa-solid fa-house fa-fw"></i><span>Início</span></a> <a
					href="new.jsp" title="Novo"><i
					class="fa-solid fa-circle-plus fa-fw"></i><span>Novo</span></a> <a
					href="contacts.jsp" title="Contatos"><i
					class="fa-solid fa-comments fa-fw"></i><span>Contatos</span></a> <a
					href="about.jsp" title="Sobre"><i
					class="fa-solid fa-circle-info fa-fw"></i><span>Sobre</span></a>
			</div>
		</nav>

		<main>
			<div id="content">