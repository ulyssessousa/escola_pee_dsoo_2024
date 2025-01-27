/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.escolapee2024.dao;

import com.escolapee2024.modelo.Departamento;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ulyss
 */
public class DAODepartamento {
    private ConexaoBanco conexaoBanco;
    private String mensagem;
    
    public DAODepartamento(){
        conexaoBanco = ConexaoBanco.getConexaoBanco();
        
    }
    
    public ArrayList<Departamento> selecionarTodos(){
        try {
            String strSQL = "select * from departamento;";
            ArrayList<Departamento> departamentos = new ArrayList<>();
            Statement statement = conexaoBanco.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery(strSQL);
            while(resultSet.next()){
                int codigo = resultSet.getInt("codigodepartamento");
                String nome = resultSet.getString("nome");
                String sigla = resultSet.getString("sigla");
                Departamento depAtual = new Departamento(codigo, nome, sigla);
                departamentos.add(depAtual);
            }
            mensagem = "Seleção realizada com sucesso.";
            return departamentos;
        } catch (SQLException ex) {
            mensagem = "Erro: " + ex.getMessage();
            return null;
        }
        
    }

    public String getMensagem() {
        return mensagem;
    }
    
    
}
