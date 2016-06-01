// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.web;

import es.iw.ucajobs.domain.Demandante;
import es.iw.ucajobs.domain.Inscripcion;
import es.iw.ucajobs.domain.Users;
import es.iw.ucajobs.web.DemandanteController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect DemandanteController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DemandanteController.create(@Valid Demandante demandante, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, demandante);
            return "demandantes/create";
        }
        uiModel.asMap().clear();
        demandante.persist();
        return "redirect:/demandantes/" + encodeUrlPathSegment(demandante.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DemandanteController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Demandante());
        return "demandantes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String DemandanteController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("demandante", Demandante.findDemandante(id));
        uiModel.addAttribute("itemId", id);
        return "demandantes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DemandanteController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("demandantes", Demandante.findDemandanteEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Demandante.countDemandantes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("demandantes", Demandante.findAllDemandantes(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "demandantes/list";
    }
    
    void DemandanteController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("demandante_fecha_nacimiento_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void DemandanteController.populateEditForm(Model uiModel, Demandante demandante) {
        uiModel.addAttribute("demandante", demandante);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("demandantes", Demandante.findAllDemandantes());
        uiModel.addAttribute("inscripcions", Inscripcion.findAllInscripcions());
        uiModel.addAttribute("userses", Users.findAllUserses());
    }
    
    String DemandanteController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
