package exe4;

import javax.swing.*;

public class Main {
    public static void main(String[] args){
        String user = JOptionPane.showInputDialog("Digite \n1. Papel\n2. Pedra\n3. Tesoura");
        Coisa escolhaUsuario;
        if(user.equals("1")){
            escolhaUsuario = new Papel();
        }

        else if(user.equals("2")){
            escolhaUsuario = new Pedra();
        }
        else if(user.equals("2")){
            escolhaUsuario = new Tesoura();
        }
        else {
            escolhaUsuario = new Papel();
            System.out.println("Escolha errada");
        }
        int pc = (int) Math.random() * 10;
        Coisa escolhaPc;
        
        if(pc >= 0 && pc <= 2){
            escolhaPc = new Papel();
        }
        else if(pc >= 3 && pc <= 5){
            escolhaPc = new Pedra();
        }
        else {
            escolhaPc = new Tesoura();
        }

        escolhaUsuario.compara(escolhaPc);
    }
}
