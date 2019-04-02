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
public class DadosCliente {
    private String nome;
    private String cpf;
    private String rg;
    private String email;
    private String telefone;
    private String endereco;

    public void setCliente(String nome, String cpf, String rg, String email, String telefone, String endereco){
        this.setNome(nome);
        this.setCpf(cpf);
        this.setRG(rg);
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
    
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    public String getRG() {
        return rg;
    }

    public void setRG(String rg) {
        this.rg = rg;
    }
    
    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
    private static ArrayList<DadosCliente> cliente;
    
    public static ArrayList<DadosCliente> getCliente(){
        if(cliente == null){
            cliente = new ArrayList<>();
            
        }
        return cliente;
    }
    
}
