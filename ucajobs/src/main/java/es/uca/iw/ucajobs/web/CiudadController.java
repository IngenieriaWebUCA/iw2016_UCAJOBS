package es.uca.iw.ucajobs.web;
import es.uca.iw.ucajobs.domain.Ciudad;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ciudads")
@Controller
@RooWebScaffold(path = "ciudads", formBackingObject = Ciudad.class)
public class CiudadController {
}
