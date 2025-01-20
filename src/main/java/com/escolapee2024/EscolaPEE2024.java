/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package com.escolapee2024;

import com.escolapee2024.dao.ConexaoBanco;

/**
 *
 * @author ulyss
 */
public class EscolaPEE2024 {

    public static void main(String[] args) {
        ConexaoBanco conexaoBanco = ConexaoBanco.getConexaoBanco();
        System.out.println("Teste: Abrir conexão");
        conexaoBanco.abrirConexao();
        System.out.println(conexaoBanco.getMensagem());
        System.out.println("--------------------\n\n");
        System.out.println("Teste: Fechar conexão");
        conexaoBanco.fecharConexao();
        System.out.println(conexaoBanco.getMensagem());
    }
}
