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

    public int calculaSoma(ValoresModel valor) {
        int res = valor.getValor1() + valor.getValor2();
        return res;
    }

    public int calculaSub(ValoresModel valor) {
        int res = valor.getValor1() - valor.getValor2();
        return res;
    }

    public int calculaMult(ValoresModel valor) {
        int res = valor.getValor1() * valor.getValor2();
        return res;
    }

    public double calculaDiv(ValoresModel valor) {
        double res  = valor.getValor1() / valor.getValor2();
        return res;
    }
}
