package es.iw.ucajobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "EM_SEQ", finders = { "findEmpresasByNombreLike", "findEmpresasByActividadLike" })
public class Empresa {

    /**
     */
    @NotNull
    @Size(min = 9, max = 9)
    private String cif;

    /**
     */
    @NotNull
    @Size(min = 2)
    private String nombre;

    /**
     */
    @NotNull
    private String actividad;

    /**
     */
    @NotNull
    private String email;

    /**
     */
    @NotNull
    private String empleados;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Ciudad> ciudades = new HashSet<Ciudad>();

    /**
     */
    @OneToOne
    private Users usuario;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL)
    private Set<OfertaTrabajo> ofertas = new HashSet<OfertaTrabajo>();
}
