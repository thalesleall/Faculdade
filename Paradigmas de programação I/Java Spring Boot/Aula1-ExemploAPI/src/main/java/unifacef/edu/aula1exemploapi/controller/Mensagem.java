package unifacef.edu.aula1exemploapi.controller;

import org.springframework.web.bind.annotation.*;

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
    @PostMapping("/insere")
    public String insere(){
        return "Recurso inserido no servidor";
    }

    @DeleteMapping("/remove")
    public String remove(){
        return "Recurso removido do servidor";
    }

    @PutMapping("/atualiza")
    public String atualiza(){
        return "Recursos foram atualizados no servidor";
    }

    @PatchMapping("/atualiza/{id}")
    public String atualiza(@PathVariable int id){
        return "Recurso com id " + id + " atualizado no servidor";
    }
}
