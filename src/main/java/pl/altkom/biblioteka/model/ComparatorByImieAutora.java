/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pl.altkom.biblioteka.model;

import java.util.Comparator;

/**
 *
 * @author kursant7
 */
public class ComparatorByImieAutora implements Comparator<Ksiazka> {

    @Override
    public int compare(Ksiazka o1, Ksiazka o2) {
        String imie1 = new String(o1.getImieAutora());
        String imie2 = new String(o2.getImieAutora());

        return imie1.compareTo(imie2);
    }

}
