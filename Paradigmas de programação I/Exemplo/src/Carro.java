public class Carro {
    public String marca, modelo, cor;
    public boolean motor; //True = Ligado ; False = Desligado
    public int ano;
    public float velAtual;
    public Carro(String marca, String modelo, String cor, int ano, boolean motor, float velAtual){
        this.marca = marca;
        this.modelo = modelo;
        this.cor = cor;
        this.ano = ano;
        this.motor = motor;
        this.velAtual = velAtual;
    }

    public void mostra(){
        System.out.println("\nMarca: " + this.marca + "\nModelo: " + this.modelo + "\nCor: " + this.cor + "\nAno: " + this.ano + "\nMotor: " + this.motor + "\nVelocidade: " + this.velAtual);
    }
    public void ligar(){
        if(!this.motor){
          this.motor = true;
        }
    }
    public void desligar(){
        if(this.motor){
            this.motor = false;
        }
    }
    public void acelerar(float x){
        if(this.motor){
            this.velAtual += x;
        }
    }
    public void freiar(float x){
        if(this.motor && this.velAtual != 0) {
            this.velAtual -= x;
        }
    }
}
