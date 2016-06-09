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
	
@RequestMapping(method = RequestMethod.POST, produces = "text/html")
	public String create(@Valid Inscripcion inscripcion, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) throws NoSuchAlgorithmException, UnsupportedEncodingException {
		if (bindingResult.hasErrors()) populateEditForm(uiModel, inscripcion);
        inscripcion.setEstado_inscripcion(true);
		inscripcion.setFecha_inscripcion(Calendar.getInstance().getTime());
		inscripcion.setEstado(EstadoInscripcion.Recibida);
		uiModel.asMap().clear();
		inscripcion.persist();
        return "inscripcions/create";
	}
	

	
}
