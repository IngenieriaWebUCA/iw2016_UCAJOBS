package es.iw.ucajobs.web;
import es.iw.ucajobs.domain.Roles;
import es.iw.ucajobs.domain.Users;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
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
    
	public static Users getUsers(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String email = auth.getName();
        Users usuario = Users.findUsersesByDniEquals(email).getSingleResult();
        return usuario;
    }
	
	public static boolean hasRole(String role) {
        // get security context from thread local
        SecurityContext context = SecurityContextHolder.getContext();
        if (context == null)
            return false;

        Authentication authentication = context.getAuthentication();
        if (authentication == null)
            return false;

        for (GrantedAuthority auth : authentication.getAuthorities()) {
            System.out.println("Comparando autorización >" + auth.getAuthority() + "< con >" + role + "<.");
            if (role.equals(auth.getAuthority()))
                return true;
        }

        return false;
    }
}
