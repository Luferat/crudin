<%@ page import="model.Page"%>
<%@ page import="model.SingleItem"%>
<%@ page import="model.SingleOwner"%>
<%@ page import="java.util.ArrayList"%>

<%
ArrayList<SingleItem> items = (ArrayList<SingleItem>) request.getAttribute("items");
ArrayList<SingleOwner> owners = (ArrayList<SingleOwner>) request.getAttribute("owners");
String items_error = (String) request.getAttribute("items_error");

Page thePage = new Page("");
request.setAttribute("thePage", thePage);
%>

<jsp:include page="header.jsp" />

<article>
	<h2>Listagem Geral</h2>

	<div class="grid">

		<div class="grid_col">

			<h3>Items cadastrados:</h3>

			<ul>
				<%
				for (int i = 0; i < items.size(); i++) {
					int id = items.get(i).getId();
					String name = items.get(i).getName();
				%>
				<li><a href="itemview.jsp?id=<%=id%>"><%=name%></a></li>
				<%
				}
				%>
			</ul>

		</div>

		<div class="grid_col">

			<h3>Propriet&aacute;rios cadastrados:</h3>

			<ul>
				<%
				for (int i = 0; i < owners.size(); i++) {
					int id = owners.get(i).getId();
					String name = owners.get(i).getName();
				%>
				<li><a href="ownerview.jsp?id=<%=id%>"><%=name%></a></li>
				<%
				}
				%>
			</ul>

		</div>

	</div>


</article>

<jsp:include page="footer.jsp" />