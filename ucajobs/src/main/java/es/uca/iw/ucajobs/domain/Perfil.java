package es.uca.iw.ucajobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.OneToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Perfil {

    /**
     */
    @NotNull
    private int id;

    /**
     */
    @NotNull
    private String trayectoria;

    /**
     */
    @NotNull
    private String foto;

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perfil")
    private Set<Titulo> titulos = new HashSet<Titulo>();

    /**
     */
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "perfil")
    private Set<Trabajo> trabajos = new HashSet<Trabajo>();
}
