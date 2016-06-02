package es.iw.ucajobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = { "findPerfilsByTitulos", "findPerfilsByTrabajos", "findPerfilsByExperiencia" })
public class Perfil {

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Titulo> titulos = new HashSet<Titulo>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Trabajo> trabajos = new HashSet<Trabajo>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Experiencia> experiencia = new HashSet<Experiencia>();
}
