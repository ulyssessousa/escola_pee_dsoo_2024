/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.escolapee2024.controle;

import com.escolapee2024.dao.ConexaoBanco;

/**
 *
 * @author ulyss
 */
public class ControleConexaoBanco {
    private ConexaoBanco conexaoBanco;
    private String mensagem;
    private boolean conexaoAberta;

    public ControleConexaoBanco() {
        conexaoBanco = ConexaoBanco.getConexaoBanco();
        
    }
    
    public boolean abrirConexao(){
        conexaoAberta = conexaoBanco.abrirConexao();
        mensagem = conexaoBanco.getMensagem();
        return conexaoAberta;
    }
    
    public boolean fecharConexao(){
        conexaoAberta = conexaoBanco.fecharConexao();
        mensagem = conexaoBanco.getMensagem();
        return conexaoAberta;
    }

    public String getMensagem() {
        return mensagem;
    }

    public boolean isConexaoAberta() {
        return conexaoAberta;
    }
    
    
}
