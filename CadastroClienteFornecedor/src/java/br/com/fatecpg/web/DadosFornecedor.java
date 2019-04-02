/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.web;

import java.util.ArrayList;

/**
 *
 * @author Julio
 */
public class DadosFornecedor {
    private String nome;
    private String razaoSocial;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereco;
    
    public void setFornecedor(String nome, String razaoSocial, String cnpj, String email, String telefone, String endereco){
        this.setNome(nome);
        this.setRazaoSocial(razaoSocial);
        this.setCnpj(cnpj);
        this.setEmail(email);
        this.setTelefone(telefone);
        this.setEndereco(endereco);
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
    private static ArrayList<DadosFornecedor> fornecedor;
    
    public static ArrayList<DadosFornecedor> getFornecedor(){
        if(fornecedor == null){
            fornecedor = new ArrayList<>();
            
        }
        return fornecedor;
    }

}
