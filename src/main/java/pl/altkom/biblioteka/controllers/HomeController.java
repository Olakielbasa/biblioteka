package pl.altkom.biblioteka.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.altkom.biblioteka.dao.BibliotekaDao;
import pl.altkom.biblioteka.model.Ksiazka;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @Autowired
    private BibliotekaDao md;

    /**
     * Simply selects the home view to render by returning its name.
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        logger.info("Welcome home! The client locale is {}.", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date);

        model.addAttribute("serverTime", formattedDate);

        return "home";
    }

    @RequestMapping(value = "/home2", method = RequestMethod.GET)
    public String home2(Locale locale, Model model, HttpServletRequest request) {
        boolean zmiana = false;
        int id = 0;
        int atrybut = 0;
        String wyrazenie = "";

        if (request.getParameter("filter") != null) {
            System.out.println(request.getParameter("wyrazenie"));
            atrybut = Integer.parseInt(request.getParameter("kategoria"));
            wyrazenie = request.getParameter("wyrazenie");
        }

        if ((request.getParameter("sort") != null)) {
            md.setSort(Integer.parseInt(request.getParameter("sort")));
        }

        if ((request.getParameter("id") != null)
                && (request.getParameter("action") != null)) {
            if (request.getParameter("action").equals("delete")) {
                md.removeKsiazka(Integer.parseInt(request.getParameter("id")));
            }
            if (request.getParameter("action").equals("update")) {
                zmiana = true;
                id = Integer.parseInt(request.getParameter("id"));
                model.addAttribute("towar", md.getKsiazka(id));
            }
        }

        // md.addKsiazka(new Ksiazka(0,"Buty","Letnie",200.0,30,"Obuwie"));
        model.addAttribute("home2", md.getAllSortedKsiazka(atrybut, wyrazenie));
        model.addAttribute(new Ksiazka());
        return "home2";
    }


}
