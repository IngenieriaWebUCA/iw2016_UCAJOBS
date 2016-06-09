package es.iw.ucajobs.web;
import es.iw.ucajobs.domain.Inscripcion;
import es.iw.ucajobs.domain.OfertaTrabajo;
import es.iw.ucajobs.domain.Users;
import java.util.Arrays;
import java.util.List;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/inscripcions")
@Controller
@RooWebScaffold(path = "inscripcions", formBackingObject = Inscripcion.class)
public class InscripcionController {

	

	
}
