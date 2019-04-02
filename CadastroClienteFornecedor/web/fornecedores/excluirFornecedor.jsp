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
        <title>Excluir Fornecedor</title>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
       <h1>Excluir Fornecedor</h1>
       <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosFornecedor e = DadosFornecedor.getFornecedor().get(i);
            if (request.getParameter("excluir") != null) {
                DadosFornecedor.getFornecedor().remove(i);
                response.sendRedirect("listarFornecedor.jsp");
            }
        %>
        <p>Deseja realmente excluir o fornecedor <b><%= e.getNome() %></b>?</p>
        
        <form>
        
        <input type="text" name="i" value="<%=i%>" hidden>
        
        <label>Nome:</label>
        <input disabled type="text" name="nome" value="<%=e.getNome()%>" placeholder="<%=e.getNome()%>"> <br/><br/>
        
        <label>Razão Social:</label>
        <input disabled type="text" name="razaoSocial" value="<%=e.getRazaoSocial()%>" placeholder="<%=e.getRazaoSocial()%>"> <br/><br/>
        
        <label>CNPJ:</label>
        <input disabled type="text" name="cnpj" value="<%=e.getCnpj()%>" placeholder="<%=e.getCnpj()%>"> <br/><br/>
        
        <label>Email:</label>
        <input disabled type="text" name="email" value="<%=e.getEmail()%>" placeholder="<%=e.getEmail()%>"> <br/><br/>
        
        <label>Telefone:</label>
        <input disabled type="text" name="telefone" value="<%=e.getTelefone()%>" placeholder="<%=e.getTelefone()%>"> <br/><br/>
        
        <label>Endereço:</label>
        <input disabled type="text" name="endereco" value="<%=e.getEndereco()%>" placeholder="<%=e.getEndereco()%>"> <br/><br/>
        
        <button>
        <a href="listarEmpresas.jsp" >Voltar</a>
        </button>
        
        <button type="submit" name="excluir">Excluir</button>
        
        </form>
        
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
        </html>
