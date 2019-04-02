<%-- 
    Document   : adicionarEmpresa.jsp
    Created on : 18/10/2018, 16:16:00
    Author     : Leandro/Beatriz/Gabriel
--%>
<%@page import="br.com.fatecpg.web.DadosFornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Fornecedor</title>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
    <h1>Alterar Fornecedor</h1>
     <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosFornecedor e = DadosFornecedor.getFornecedor().get(i);
            if (request.getParameter("alterar") != null) {
                String nome = request.getParameter("nome").toUpperCase();
                String razaosocial = request.getParameter("razaoSocial");
                String cnpj = request.getParameter("cnpj");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                e.setFornecedor(nome, razaosocial, cnpj, email, telefone, endereco);
                DadosFornecedor.getFornecedor().set(i, e);
                response.sendRedirect("listarFornecedor.jsp");
            }
        %>
        
        <p>Realize uma alteração do fornecedor <b><%= e.getNome() %></b> com o formulário abaixo</p>
        <form>
      <input type="text" name="i" value="<%=i%>" hidden>
      
      <label>Nome:</label>
      <input type="text" name="nome" value="<%=e.getNome()%>" placeholder="<%=e.getNome()%>"> <br/><br/>
      
      <label>Razão Social:</label>
      <input type="text" name="razaoSocial" value="<%=e.getRazaoSocial()%>" placeholder="<%=e.getRazaoSocial()%>"> <br/><br/>
      
      <label>CNPJ:</label>
      <input type="text" name="cnpj" value="<%=e.getCnpj()%>" placeholder="<%=e.getCnpj()%>"> <br/><br/>
      
      <label>E-mail:</label>
      <input type="text" name="email" value="<%=e.getEmail()%>" placeholder="<%=e.getEmail()%>"> <br/><br/>
      
      <label>Telefone:</label>
      <input type="text" name="telefone" value="<%=e.getTelefone()%>" placeholder="<%=e.getTelefone()%>"> <br/><br/>
      
      <label>Endereço:</label>
      <input type="text" name="endereco" value="<%=e.getEndereco()%>" placeholder="<%=e.getEndereco()%>"> <br/><br/>
      
        <button>
        <a href="listarEmpresas.jsp" class="btn btn-primary">Voltar</a>
        </button>
      
      <button type="submit" name="alterar">Alterar </button>
      
        </form>
         <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
