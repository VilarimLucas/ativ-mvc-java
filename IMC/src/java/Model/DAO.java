/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author vilar
 */
public class DAO {

    public double calcularIMCHomem(IMC imc) {
        double res = (72.7 * imc.getAltura()) - 58;
        return res;
    }

    public double calcularIMCMulher(IMC imc) {
        double res = (61.1 * imc.getAltura()) - 44.7;
        return res;
    }

}
