<%-- 
    Document   : alterarVeiculos
    Created on : 19/10/2018, 14:13:02
    Author     : Leandro/Beatriz/Gabriel
--%>
<%@page import="br.com.fatecpg.web.DadosCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Clientes</title>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
      <h1>Alterar Clientes</h1>
      <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosCliente v = DadosCliente.getCliente().get(i);
            if (request.getParameter("alterar") != null) {
                String Nome = request.getParameter("Nome").toUpperCase();
                String Cpf = request.getParameter("Cpf");
                String Rg = request.getParameter("rg");
                String Email = request.getParameter("Email");
                String Telefone = request.getParameter("Telefone");
                String Endereco = request.getParameter("endereco");
                v.setCliente(Nome, Cpf, Rg, Email, Telefone, Endereco);
                DadosCliente.getCliente().set(i, v);
                response.sendRedirect("listarClientes.jsp");
            }
        %>
      <form>
      <input type="text" name="i" value="<%=i%>" hidden> <br/><br/>
      
      <label>Nome:</label>
      <input type="text" name="Nome" value="<%=v.getNome()%>" placeholder="<%=v.getNome()%>"> <br/><br/>
      
      <label>Cpf:</label>
      <input type="text" name="Cpf" value="<%=v.getCpf()%>" placeholder="<%=v.getCpf()%>"> <br/><br/>
      
      <label>Rg:</label>
      <input type="text" name="rg" value="<%=v.getRG()%>" placeholder="<%=v.getRG()%>"> <br/><br/>
      
      <label>E-mail:</label>
      <input type="text" name="Email" value="<%=v.getEmail()%>" placeholder="<%=v.getEmail()%>"> <br/><br/>
      
      <label>Telefone:</label>
      <input type="text" name="Telefone" value="<%=v.getTelefone()%>" placeholder="<%=v.getTelefone()%>"> <br/><br/>
      
      <label>Endereço:</label>
      <input type="text" name="endereco" value="<%=v.getEndereco()%>" placeholder="<%=v.getEndereco()%>"> <br/><br/>
      
      
      
      <button>
      <a href="listarPessoas.jsp" >Voltar</a>
      </button>
      
      <button type="submit" name="alterar">Alterar</button>     
      
      </form>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
