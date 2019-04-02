<%-- 
    Document   : pessoas
    Created on : 19/10/2018, 14:34:27
    Author     : Leandro/Beatriz/Gabriel
--%>

<%@page import="br.com.fatecpg.web.DadosCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <h1>Clientes</h1>
      <p>Lista dos clientes cadastrados no sistema</p>
      <br/>
      <button>
      <a href="adicionarClientes.jsp">Adicionar Cliente</a> 
      </button>
      <br/><br/><br/>
      <table border=1 cellspacing=0 cellpadding=2  >
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>CPF</th>
                                    <th>RG</th>
                                    <th>Email</th>
                                    <th>Telefone</th>
                                    <th>Endereco</th>
                                    <th>Opções</th>
                                </tr>
                            </thead>
                            <%
                                for (DadosCliente dv : DadosCliente.getCliente()) {
                                int i = DadosCliente.getCliente().indexOf(dv);
                            %>
                            <tr>
                                <td><%=i%></td>
                                <td><%=dv.getNome()%></td>
                                <td><%=dv.getCpf()%></td>
                                <td><%=dv.getRG()%></td>
                                <td><%=dv.getEmail()%></td>
                                <td><%=dv.getTelefone()%></td>
                                <td><%=dv.getEndereco()%></td>
                                <td>
                                    <button>
                                    <a href="alterarClientes.jsp?i=<%=i%>"> Alterar </a>
                                    </button>
                                    <button> 
                                    <a href="excluirClientes.jsp?i=<%=i%>"> Remover </a>
                                    </button>
                                    </td>
                            </tr>
                            <%}%>
      </table>
                            <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
