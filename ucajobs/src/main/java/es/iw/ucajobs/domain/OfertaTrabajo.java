package es.iw.ucajobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import es.iw.ucajobs.reference.TipoContrato;
import javax.persistence.Enumerated;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "OFE_SEQ", finders = { "findOfertaTrabajoesByInscritos", "findOfertaTrabajoesByNombre_puesto", "findOfertaTrabajoesBySalario", "findOfertaTrabajoesByLocalizacion" })
public class OfertaTrabajo {

    /**
     */
    @NotNull
    @ManyToOne
    private Trabajo nombre_puesto;

    /**
     */
    private double salario;

    /**
     */
    @NotNull
    @Enumerated
    private TipoContrato tipologia_contrato;

    /**
     */
    private String duracion;

    /**
     */
    @NotNull
    private int vacantes;

    /**
     */
    @ManyToOne
    private Ciudad localizacion;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "oferta")
    private Set<Inscripcion> inscritos = new HashSet<Inscripcion>();
}
