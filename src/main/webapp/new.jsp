<%@ page import="model.Page"%>

<%
String feedback = (String) request.getAttribute("feedback");
String error = (String) request.getAttribute("error");
Page thePage = new Page("Novo Registro", "new.css", "new.js");
request.setAttribute("thePage", thePage);
%>

<jsp:include page="header.jsp" />

<article>

	<h2>Novo Registro</h2>

	<div class="tabs">
		<button id="item">Item</button>
		<button id="owner">Propriet&aacute;rio</button>
	</div>

	<div class="form-frame">

		<div id="formitem">

			<h3>Cadastro de Item</h3>

			<form method="post" action="newitem.jsp">

				<% if (feedback != null) { %>
				<div class="feedback"><%=feedback%></div>
				<% } %>
				
				<% if (error != null) { %>
				<div class="error"><%=error%></div>
				<% } %>

				<p>
					<label for="itemname">Nome:</label> <input type="text"
						name="itemname" id="itemname" placeholder="Nome do item" required
						minlength="3" value="item">
				</p>

				<p>
					<label for="itemdescription">Descri&ccedil;&atilde;o:</label>
					<textarea name="itemdescription" id="itemdescription"
						placeholder="Descri&ccedil;&atilde;o do item" required
						minlength="5">Apenas um item</textarea>
				</p>

				<p>
					<label for="itemlocation">Localiza&ccedil;&atilde;o:</label> <input
						type="text" name="itemlocation" id="itemlocation"
						placeholder="Localiza&ccedil;&atilde;o do item" required
						minlength="3" value="Em um canto qualquer">
				</p>

				<p>
					<button type="submit">Salvar</button>
					<small>&larr; Clique somente uma vez.</small>
				</p>

			</form>

		</div>
		<div id="formowner">

			<h3>Cadastro de Propriet&aacute;rio</h3>

			<form method="post" action="newitem.jsp">

				<%
				if (feedback != null) {
				%>
				<div><%=feedback%></div>
				<%
				}
				%>

				<p>
					<label for="ownername">Nome:</label> <input type="text"
						name="ownername" id="ownername"
						placeholder="Nome do propriet&aacute;rio" required minlength="3">
				</p>

				<p>
					<label for="owneremail">E-mail:</label> <input type="email"
						name="owneremail" id="owneremail"
						placeholder="E-mail do propriet&aacute;rio" required>
				</p>

				<p>
					<label for="ownerpassword">Senha:</label> <input type="text"
						name="ownerpassword" id="ownerpassword"
						placeholder="Senha do propriet&aacute;rio" required minlength="5">
				</p>

				<p>
					<button type="submit">Salvar</button>
					<small>&larr; Clique somente uma vez.</small>
				</p>

			</form>

		</div>

	</div>

</article>

<jsp:include page="footer.jsp" />