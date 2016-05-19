package es.uca.iw.ucajobs.domain;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "OFE_SEQ")
public class OfertaTrabajo {

    /**
     */
    @NotNull
    private int id;

    /**
     */
    @NotNull
    private String nombre_puesto;

    /**
     */
    private Double salario;

    /**
     */
    @NotNull
    private String tipologia_contrato;

    /**
     */
    @NotNull
    private String duracion;

    /**
     */
    private Double vacantes;
}
