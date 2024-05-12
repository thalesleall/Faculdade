package unifacef.edu.aula1exemploapi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Mensagem {

    @GetMapping("/noite")
    public String boaNoite(){
        return "Boa noite";
    }

    @GetMapping("/tarde/{nome}")
    public String boaTarde(@PathVariable String nome){
        return "Boa tarde " + nome;
    }
    @GetMapping("/primo/{numero}")
    public static String ehPrimo(@PathVariable int numero) {
        if (numero <= 1) {
            return numero + " Não e primo";
        }
        for (int i = 2; i <= Math.sqrt(numero); i++) {
            if (numero % i == 0) {
                return numero + " Não e primo";
            }
        }
        return numero + " É primo";
    }
}
