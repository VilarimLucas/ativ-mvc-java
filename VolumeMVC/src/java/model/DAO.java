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
    
    public double calcularVolume(VolumeModel volume){
        
        double res = volume.getLargura() * volume.getAltura() * volume.getComprimento();
        return res;
    }
}
