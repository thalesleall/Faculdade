package unifacef.edu.netflix.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import unifacef.edu.netflix.model.entity.FilmeEntity;
import unifacef.edu.netflix.model.repository.FilmeRepository;

@Service
public class FilmeService {

    @Autowired//Injeção de dependência
    FilmeRepository injecao;
    public void insere(FilmeEntity filme){
        // Executamos um metodo sem instanciar um objeto
        injecao.save(filme);
    }
}
