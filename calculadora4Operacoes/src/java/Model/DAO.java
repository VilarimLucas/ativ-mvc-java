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

    public int calculaSoma(CalculadoraModel valor) {
        int res = valor.getValor1() + valor.getValor2();
        valor.setMensagem("Soma OK");
        return res;
    }

    public int calculaSub(CalculadoraModel valor) {
        int res = valor.getValor1() - valor.getValor2();
        valor.setMensagem("Subtração OK");
        return res;
    }

    public int calculaMult(CalculadoraModel valor) {
        int res = valor.getValor1() * valor.getValor2();
        valor.setMensagem("Multiplicação OK");
        return res;
    }

    public double calculaDiv(CalculadoraModel valor) {
        double res = 0;
        String mensagem;
        if (valor.getValor2() == 0) {
            valor.setMensagem("O segundo valor não pode ser zero. Por favor, insira um valor diferente de zero.");
        } else {
            res = valor.getValor1() / valor.getValor2();
            valor.setMensagem("Divisao OK");
        }
        return res;
    }
}
