
package pl.altkom.biblioteka.model;

import java.util.Comparator;

public class ComparatorByPochodzenieAutora implements Comparator<Ksiazka> {

    @Override
    public int compare(Ksiazka o1, Ksiazka o2) {
        String pochodzenie1 = new String(o1.getPochodzenieAutora());
        String pochodzenie2 = new String(o2.getPochodzenieAutora());

        return pochodzenie1.compareTo(pochodzenie2);
    }

}
    

