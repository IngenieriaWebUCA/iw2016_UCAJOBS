package es.iw.ucajobs.web;
import es.iw.ucajobs.domain.Roles;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/roleses")
@Controller
@RooWebScaffold(path = "roleses", formBackingObject = Roles.class)
@RooWebFinder
public class RolesController {
}
