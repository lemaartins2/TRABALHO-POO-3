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
        <title>Adicionar Fornecedor</title>
        <%@include file="../WEB-INF/jspf/header.jspf" %>
    </head>
    <body>
       <h1>Adicionar Fornecedor</h1>
       <%
            if (request.getParameter("cadastrar") != null) {
                String nome = request.getParameter("nome").toUpperCase();
                String razaosocial = request.getParameter("razao-social");
                String cnpj = request.getParameter("cnpj");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                String endereco = request.getParameter("endereco");
                DadosFornecedor e = new DadosFornecedor();
                e.setFornecedor(nome, razaosocial, cnpj, email, telefone, endereco);
                DadosFornecedor.getFornecedor().add(e);
                response.sendRedirect("listarFornecedor.jsp");
            }
        %>
        <p>Realize o cadastro de um novo Fornecedor com o formulário abaixo</p>
        
        <form>
        
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" placeholder="Digite o nome da empresa" required> <br/><br/>
        
        <label for="razao-social">Razão Social:</label>
        <input type="text" id="razao-social" name="razao-social" placeholder="Digite a Razão Social" required> <br/><br/>
        
        <label for="cnpj">CNPJ:</label>
        <input type="number" id="cnpj" name="cnpj" placeholder="Digite o CNPJ da empresa" required> <br/><br/>
        
        <label for="email">E-mail:</label>
        <input type="text" id="email" name="email" placeholder="Digite o e-mail da empresa." required> <br/><br/>
        
        <label for="telefone">Telefone:</label>
        <input type="number" id="telefone" name="telefone" placeholder="Digite o telefone da empresa." required> <br/><br/>
        
        <label for="endereco">Endereço:</label>
        <input type="text" id="endereco" name="endereco" placeholder="Digite o Endereço da empresa." required> <br/><br/>
        
        <button>
        <a href="listarFornecedor.jsp" >Voltar</a>
        </button>
        
        <button type="submit" name="cadastrar">Cadastrar</button>  
        
        </form>
     
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
