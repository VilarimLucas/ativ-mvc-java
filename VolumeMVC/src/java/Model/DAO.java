/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author alexs
 */
public class DAO {
    
      public int CalculaValor(VolumeModel soma){
        
        int res = soma.getValor1() * soma.getValor2() * soma.getValor3();
        return res;
        
    }
    
}
