package es.uca.iw.ucajobs.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(sequenceName = "OFE_SEQ")
public class Demandante {
	
	 /**
     */
    @NotNull
    private int id;
    
    /**
     */
    @NotNull
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
    private String sexo;

    /**
     */
    @NotNull
    private String telefono;

    /**
     */
    private String email;

    /**
     */
    @NotNull
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date fecha_nacimiento;
    
    /**
     */
    @NotNull
    private int id_perfil;
}
