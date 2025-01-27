/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.escolapee2024.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ulyss
 */
public class ConexaoBanco {
    private String usuario;
    private String senha;
    private String url;
    private Connection connection;
    private String mensagem;
    private static ConexaoBanco conexaoBanco;
    private String driver;
    private boolean conectado;
    
    private ConexaoBanco(){
        usuario = "root";
        senha = "1234";
        url = "jdbc:mysql://127.0.0.1/escola_pee_dsoo";
        driver = "com.mysql.cj.jdbc.Driver";
    }
    
    public static ConexaoBanco getConexaoBanco(){
        if (conexaoBanco == null){
            conexaoBanco = new ConexaoBanco();
        }
        return conexaoBanco;
    }
    
    public boolean abrirConexao(){
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, usuario, senha);
            mensagem = "Conexão estabelecida com sucesso.";
            conectado = true;
            return true;
        } catch (ClassNotFoundException ex) {
            mensagem = "Erro ao carregar o driver";
            conectado = false;
            return false;
        } catch (SQLException ex) {
            mensagem = "Erro ao tentar estabelecer conexão com o Banco de Dados";
            conectado = false;
            return false;
        }catch (Exception ex) {
            mensagem = "Outra exceção";
            conectado = false;
            return false;
        }
    }
    
    public boolean fecharConexao(){
        try {
            if (conectado){
                connection.close();
                mensagem = "Conexão fechada com sucesso.";
                conectado = false;
                return true;
            }else{
                mensagem = "O banco já estava desconectado";
                return false;
            }
        } catch (SQLException ex) {
            mensagem = "Erro ao tentar fechar a conexão.";
            return false;
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public String getMensagem() {
        return mensagem;
    }
    
    
}
