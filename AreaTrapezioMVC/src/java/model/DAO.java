/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author alexs
 */
public class DAO {
    
    public double calcularArea(AreaModel area){
        
        double res = ((area.getBaseMaior() + area.getBaseMenor()) * area.getAltura())/2;
        return res;
    }
}
