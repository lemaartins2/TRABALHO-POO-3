<%-- 
    Document   : excluirPessoas
    Created on : 17/10/2018, 14:31:45
    Author     : Leandro/Beatriz/Gabriel
--%>
<%@page import="br.com.fatecpg.web.DadosCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Clientes</title>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
    </head>
    <h1>Excluir Cliente</h1>
    <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosCliente v = DadosCliente.getCliente().get(i);
            if (request.getParameter("excluir") != null) {
                DadosCliente.getCliente().remove(i);
                response.sendRedirect("listarClientes.jsp");
            }
        %>
        <p>Deseja realmente excluir o Cliente <b><%= v.getNome() %></b>?</p>
        
        <form>
        
        <input type="text" name="i" value="<%=i%>" hidden>
        
        <label>Nome:</label>
        <input disabled type="text" name="nome" value="<%=v.getNome()%>" placeholder="<%=v.getNome()%>"> <br/><br/>
        
        <label>CPF:</label>
        <input disabled type="text" name="cpf" value="<%=v.getCpf()%>" placeholder="<%=v.getCpf()%>"> <br/><br/>
        
        <label>RG:</label>
        <input disabled type="text" name="rg" value="<%=v.getRG()%>" placeholder="<%=v.getRG()%>"> <br/><br/>
        
        <label>Email:</label>
        <input disabled type="text" name="email" value="<%=v.getEmail()%>" placeholder="<%=v.getEmail()%>"> <br/><br/>
        
        <label>Telefone:</label>
        <input disabled type="text" name="telefone" value="<%=v.getTelefone()%>" placeholder="<%=v.getTelefone()%>"> <br/><br/>
        
        <label>Endereço:</label>
        <input disabled type="text" name="endereco" value="<%=v.getEndereco()%>" placeholder="<%=v.getEndereco()%>"> <br/><br/>
        
        
        <button>
        <a href="listarClientes.jsp" class="btn btn-primary">Voltar</a>
        </button>
        
        <button type="submit" class="btn btn-danger" name="excluir">Excluir</button>     
        
        </form>
              <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>