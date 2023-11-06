<%@ page import="model.Page"%>

<%
Page thePage = new Page("Título", "arquivocss", "arquivojs");
request.setAttribute("thePage", thePage);
%>

<jsp:include page="header.jsp" />

<article>
	<h2>T�tulo Provis�rio</h2>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
		Repellat ipsa exercitationem, hic illum eum quidem velit tempora
		deleniti magni quasi cumque eveniet. Corporis eos doloribus et eaque
		necessitatibus! Placeat, quaerat!</p>
</article>

<jsp:include page="footer.jsp" />