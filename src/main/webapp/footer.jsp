<%@ page import="model.Page"%>

<%
String titleTag = "CRUDin";
String scriptTag = "";

Page thePage = (Page) request.getAttribute("thePage");
if (thePage.getScript() != "") {
	scriptTag = "<script src=\"js/" + thePage.getScript() + "\"></script>";
}
%>

</div>
</main>
<footer>
	<div>
		<a href="index.jsp"><i class="fa-solid fa-house fa-fw"></i></a>
		<div id="license">
			&copy; 2023 Eu Mesmo! <small><a href="policies.jsp">Pol&iacute;ticas
					de Privacidade</a></small>
		</div>
		<a href="#top"><i class="fa-solid fa-circle-up fa-fw"></i></a>
	</div>
</footer>

</div>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="js/index.js"></script>
<%=scriptTag%>

</body>

</html>