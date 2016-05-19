package es.uca.iw.ucajobs.domain;
import javax.validation.constraints.NotNull;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Trabajo {
	
	 /**
     */
    @NotNull
    private int id;

    /**
     */
    @NotNull
    private String nombre;
}
