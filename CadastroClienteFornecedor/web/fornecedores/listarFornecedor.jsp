<%-- 
    Document   : listarEmpresas
    Created on : 13/10/2018, 13:34:02
    Author     : Leandro/Beatriz/Gabriel
--%>

<%@page import="br.com.fatecpg.web.DadosFornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fornecedores</title>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
       <h1>Fornecedores</h1>
       <p>Lista dos fornecedores cadastrados no sistema</p>
       <br/>
       <button>
       <a href="adicionarFornecedor.jsp" >Adicionar Fornecedor</a>
       </button> 
       <br/><br/><br/>
       <table border=1 cellspacing=0 cellpadding=2 >
       <thead>
        <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Razão Social</th>
        <th>CNPJ</th>
        <th>E-mail</th>
        <th>Telefone</th>
        <th>Endereço</th>
        <th>Opções</th>
          </tr>
            </thead>
        
                                <%
                                    for (DadosFornecedor de : DadosFornecedor.getFornecedor()) {
                                    int i = DadosFornecedor.getFornecedor().indexOf(de);
                                %>
                                <tr>
                                    <td><%=i%></td>
                                    <td><%=de.getNome()%></td>
                                    <td><%=de.getRazaoSocial()%></td>
                                    <td><%=de.getCnpj()%></td>
                                    <td><%=de.getEmail()%></td>
                                    <td><%=de.getTelefone()%></td>
                                    <td><%=de.getEndereco()%></td>
                                    <td>
                                        <button>
                                            <a href="alterarFornecedor.jsp?i=<%=i%>" > Alterar </a>
                                        </button>
                                        <button>
                                            <a href="excluirFornecedor.jsp?i=<%=i%>"> Remover </a>  
                                        </button>
                                    </td>
                                </tr>
                                <%}%>
       </table>
                            
           
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
