package es.uca.iw.ucajobs.web;
import es.uca.iw.ucajobs.domain.Titulo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/tituloes")
@Controller
@RooWebScaffold(path = "tituloes", formBackingObject = Titulo.class)
public class TituloController {
}
