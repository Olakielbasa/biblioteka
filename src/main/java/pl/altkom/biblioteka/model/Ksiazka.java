package pl.altkom.biblioteka.model;

import java.io.Serializable;
import java.util.Comparator;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
        
public class Ksiazka implements Serializable, Comparable {

    private long id;
    @NotEmpty(message="Pole nie może być puste")
    private String tytul;
    @NotEmpty(message="Pole nie może być puste")
    private String opis;
    @NotEmpty(message="Pole nie może być puste")
    private String imieAutora;
    @NotEmpty(message="Pole nie może być puste")
    private String nazwiskoAutora;
    private String pochodzenieAutora;
    @NotEmpty(message="Pole nie może być puste")
    @Min(1)
    private Integer ilosc;
    @NotEmpty(message="Pole nie może być puste")
    private String kategoria;



    public Ksiazka(long id, String tytul, String opis, String imieAutora, String nazwiskoAutora, String pochodzenieAutora, int ilosc, String kategoria) {
        this.id = id;
        this.tytul = tytul;
        this.opis = opis;
        this.imieAutora = imieAutora;
        this.nazwiskoAutora = nazwiskoAutora;
        this.pochodzenieAutora = pochodzenieAutora;
        this.ilosc = ilosc;
        this.kategoria = kategoria;
    }

    public Ksiazka() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getImieAutora() {
        return imieAutora;
    }

    public void setImieAutora(String imieAutora) {
        this.imieAutora = imieAutora;
    }

    public String getNazwiskoAutora() {
        return nazwiskoAutora;
    }

    public void setNazwiskoAutora(String nazwiskoAutora) {
        this.nazwiskoAutora = nazwiskoAutora;
    }

    public String getPochodzenieAutora() {
        return pochodzenieAutora;
    }

    public void setPochodzenieAutora(String pochodzenieAutora) {
        this.pochodzenieAutora = pochodzenieAutora;
    }

    public int getIlosc() {
        return ilosc;
    }

    public void setIlosc(Integer ilosc) {
        this.ilosc = ilosc;
    }

    public String getKategoria() {
        return kategoria;
    }

    public void setKategoria(String kategoria) {
        this.kategoria = kategoria;
    }

    @Override
    public int compareTo(Object o) {
        return -1;
    }
}
