/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.escolapee2024.controle;

import com.escolapee2024.dao.DAODepartamento;
import com.escolapee2024.modelo.Departamento;
import java.util.ArrayList;

/**
 *
 * @author ulyss
 */
public class ControleDepartamento {
    private String mensagem;
    private DAODepartamento daoDepartamento;
    
    public ControleDepartamento(){
        daoDepartamento = new DAODepartamento();
    }
    
    public ArrayList<Departamento> selecionarTodos(){
        ArrayList<Departamento> departamentos = daoDepartamento.selecionarTodos();
        mensagem = daoDepartamento.getMensagem();
        return departamentos;
    }

    public String getMensagem() {
        return mensagem;
    }
    
    public boolean inserirDepartamento(String nome, String sigla){
        Departamento departamento = new Departamento(0, nome, sigla);
        boolean inseriu = daoDepartamento.inserirDepartamento(departamento);
        mensagem = daoDepartamento.getMensagem();
        return inseriu;
        
    }
    
    public boolean excluirDepartamento(int codigoDepartamento){
        boolean excluiu = daoDepartamento.excluirDepartamento(codigoDepartamento);
        mensagem = daoDepartamento.getMensagem();
        return excluiu;
    }
    
}
