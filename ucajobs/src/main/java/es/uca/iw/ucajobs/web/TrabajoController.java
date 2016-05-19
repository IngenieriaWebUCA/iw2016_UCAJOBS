package es.uca.iw.ucajobs.web;
import es.uca.iw.ucajobs.domain.Trabajo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/trabajoes")
@Controller
@RooWebScaffold(path = "trabajoes", formBackingObject = Trabajo.class)
public class TrabajoController {
}
