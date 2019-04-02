<%-- 
    Document   : adicionarPessoas
    Created on : 19/10/2018, 14:45:21
    Author     : Leandro/Beatriz/Gabriel
--%>
<%@page import="br.com.fatecpg.web.DadosCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Clientes</title>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
        <h1>Adicionar Clientes</h1>
        <%
            if (request.getParameter("cadastrar") != null) {
                String nome = request.getParameter("nome").toUpperCase();
                String cpf = request.getParameter("cpf");
                String rg = request.getParameter("rg");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                DadosCliente v = new DadosCliente();
                v.setCliente(nome, cpf, rg , email, telefone, endereco);
                DadosCliente.getCliente().add(v);
                response.sendRedirect("listarClientes.jsp");
            }
        %>
        <p>Realize o cadastro de um novo cliente com o formulário abaixo</p>
       <form>
        <label>Nome:</label>
        <input type="text" name="nome" placeholder="Digite o nome da pessoa"> <br/><br/>
        
        <label>CPF:</label>
        <input type="number" name="cpf" placeholder="Digite o CPF"> <br/><br/>
        
        <label>RG:</label>
        <input type="number" name="rg" placeholder="Digite o RG"> <br/><br/>
        
        <label>E-mail:</label>
        <input type="email" name="email" placeholder="Digite o email"> <br/><br/>
        
        <label>Telefone:</label>
        <input type="number" name="telefone" placeholder="Digite o telefone"> <br/><br/>
        
        <label>Endereço:</label>
        <input type="text" name="endereco" placeholder="Digite o endereço"> <br/><br/>
        
        <button>
        <a href="listarClientes.jsp" >Voltar</a>
        </button>
        
        <button type="submit" name="cadastrar">Cadastrar</button>     
       
       </form>
           <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>