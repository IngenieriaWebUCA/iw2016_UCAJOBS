package es.uca.iw.ucajobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Inscripcion {

    /**
     */
    @NotNull
    private int id;

    /**
     */
    @NotNull
    private String estado_inscripcion;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_inscripcion;

    /**
     */
    @ManyToOne
    private Demandante demandante;

    /**
     */
    @ManyToOne
    private OfertaTrabajo oferta;
}
