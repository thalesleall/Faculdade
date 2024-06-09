package unifacef.edu.netflix.model.dto;

public class FilmeDTO {
    private Long id;
    private String nome;
    private float nota;
    private int anoLancamento;

    public FilmeDTO(Long id, String nome, float nota, int anoLancamento) {
        this.id = id;
        this.nome = nome;
        this.nota = nota;
        this.anoLancamento = anoLancamento;
    }

    public FilmeDTO() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public float getNota() {
        return nota;
    }

    public void setNota(float nota) {
        this.nota = nota;
    }

    public int getAnoLancamento() {
        return anoLancamento;
    }

    public void setAnoLancamento(int anoLancamento) {
        this.anoLancamento = anoLancamento;
    }
}
