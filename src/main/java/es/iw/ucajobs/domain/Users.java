package es.iw.ucajobs.domain;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Date;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import es.iw.ucajobs.reference.Sexo;
import javax.persistence.Enumerated;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(finders = {"findUsersesByUsuarioEquals", "findUsersesByNombreEquals", "findUsersesByDniEquals" })
public class Users {

    /**
     */
    @NotNull
    @Size(min = 8)
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
    private String email;

    /**
     */
    @NotNull
    @Size(min = 4)
    private String usuario;

    /**
     */
    @NotNull
    @Size(min = 6)
    private String password;

    private boolean activado = true;

    /**
     */
    @NotNull
    @ManyToOne
    private Roles rol;

    /**
     */
    @NotNull
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(style = "M-")
    private Date fechaRegistro = Calendar.getInstance().getTime();

    public static String sha256(String password) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        digest.update(password.getBytes("UTF-8"));
        byte[] hash = digest.digest();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < hash.length; i++) stringBuffer.append(Integer.toString((hash[i] & 0xff) + 0x100, 16).substring(1));
        return stringBuffer.toString();
    }

    /**
     */
    @NotNull
    @Enumerated
    private Sexo sexo;
}
