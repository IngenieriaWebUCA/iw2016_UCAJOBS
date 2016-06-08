package es.iw.ucajobs.web;
import es.iw.ucajobs.domain.Roles;
import es.iw.ucajobs.domain.Users;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/userses")
@Controller
@RooWebScaffold(path = "userses", formBackingObject = Users.class)
@RooWebFinder
public class UsersController {

    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String create(@Valid Users users, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) populateEditForm(uiModel, users);
        try {
            String hashedPassword = Users.sha256(users.getPassword());
            users.setPassword(hashedPassword);
            users.setActivado(true);
            if (users.getRol() == null) users.setRol((Roles.findRolesesByNombreEquals("Usuario Registrado").getSingleResult()));
            users.setFechaRegistro(Calendar.getInstance().getTime());
            uiModel.asMap().clear();
            users.persist();
            return "redirect:/userses/" + encodeUrlPathSegment(users.getId().toString(), httpServletRequest);
        } catch (NoSuchAlgorithmException e) {
        } catch (UnsupportedEncodingException e) {
        }
        return "userses/create";
    }
}
