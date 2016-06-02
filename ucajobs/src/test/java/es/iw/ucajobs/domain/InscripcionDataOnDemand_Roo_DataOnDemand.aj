// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.domain;

import es.iw.ucajobs.domain.DemandanteDataOnDemand;
import es.iw.ucajobs.domain.Inscripcion;
import es.iw.ucajobs.domain.InscripcionDataOnDemand;
import es.iw.ucajobs.domain.OfertaTrabajoDataOnDemand;
import es.iw.ucajobs.reference.EstadoInscripcion;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect InscripcionDataOnDemand_Roo_DataOnDemand {
    
    declare @type: InscripcionDataOnDemand: @Component;
    
    private Random InscripcionDataOnDemand.rnd = new SecureRandom();
    
    private List<Inscripcion> InscripcionDataOnDemand.data;
    
    @Autowired
    DemandanteDataOnDemand InscripcionDataOnDemand.demandanteDataOnDemand;
    
    @Autowired
    OfertaTrabajoDataOnDemand InscripcionDataOnDemand.ofertaTrabajoDataOnDemand;
    
    public Inscripcion InscripcionDataOnDemand.getNewTransientInscripcion(int index) {
        Inscripcion obj = new Inscripcion();
        setEstado(obj, index);
        setEstado_inscripcion(obj, index);
        setFecha_inscripcion(obj, index);
        return obj;
    }
    
    public void InscripcionDataOnDemand.setEstado(Inscripcion obj, int index) {
        EstadoInscripcion estado = EstadoInscripcion.class.getEnumConstants()[0];
        obj.setEstado(estado);
    }
    
    public void InscripcionDataOnDemand.setEstado_inscripcion(Inscripcion obj, int index) {
        Boolean estado_inscripcion = Boolean.TRUE;
        obj.setEstado_inscripcion(estado_inscripcion);
    }
    
    public void InscripcionDataOnDemand.setFecha_inscripcion(Inscripcion obj, int index) {
        Date fecha_inscripcion = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setFecha_inscripcion(fecha_inscripcion);
    }
    
    public Inscripcion InscripcionDataOnDemand.getSpecificInscripcion(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Inscripcion obj = data.get(index);
        Long id = obj.getId();
        return Inscripcion.findInscripcion(id);
    }
    
    public Inscripcion InscripcionDataOnDemand.getRandomInscripcion() {
        init();
        Inscripcion obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Inscripcion.findInscripcion(id);
    }
    
    public boolean InscripcionDataOnDemand.modifyInscripcion(Inscripcion obj) {
        return false;
    }
    
    public void InscripcionDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Inscripcion.findInscripcionEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Inscripcion' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Inscripcion>();
        for (int i = 0; i < 10; i++) {
            Inscripcion obj = getNewTransientInscripcion(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
