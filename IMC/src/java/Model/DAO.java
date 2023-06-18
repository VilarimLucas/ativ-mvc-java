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
    
    public int CalculaValor(IMCmodel soma){
        
        double res = (int) (soma.getValor1() + soma.getValor2());
        return res;
        
    }
}
