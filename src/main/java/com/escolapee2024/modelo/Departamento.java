/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.escolapee2024.modelo;

/**
 *
 * @author ulyss
 */
public class Departamento {
    private int codigoDepartamento;
    private String nome;
    private String sigla;

    public Departamento() {
    }

    public Departamento(int codigoDepartamento, String nome, String sigla) {
        this.codigoDepartamento = codigoDepartamento;
        this.nome = nome;
        this.sigla = sigla;
    }

    public int getCodigoDepartamento() {
        return codigoDepartamento;
    }

    public void setCodigoDepartamento(int codigoDepartamento) {
        this.codigoDepartamento = codigoDepartamento;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }
    
    
}
