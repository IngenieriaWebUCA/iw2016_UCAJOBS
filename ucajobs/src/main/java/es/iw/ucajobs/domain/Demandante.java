package es.iw.ucajobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "DE_SEQ")
public class Demandante {

    /**
     */
    @NotNull
    @Size(min = 9, max = 9)
    private String dni;

    /**
     */
    @NotNull
    private String nombre;

    /**
     */
    @NotNull
    private String apellidos;

    /**
     */
    @NotNull
    private String direccion;

    /**
     */
    @NotNull
    @Size(min = 9, max = 9)
    private String telefono;

    /**
     */
    @NotNull
    private String email;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_nacimiento;

    /**
     */
    @ManyToOne
    private Demandante perfil;

    /**
     */
    @OneToOne
    private Users usuario;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "demandante")
    private Set<Inscripcion> inscripciones = new HashSet<Inscripcion>();
}
