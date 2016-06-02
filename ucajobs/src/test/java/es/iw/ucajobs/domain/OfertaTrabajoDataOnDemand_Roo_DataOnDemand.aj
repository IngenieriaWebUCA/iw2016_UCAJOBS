// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.domain;

import es.iw.ucajobs.domain.CiudadDataOnDemand;
import es.iw.ucajobs.domain.OfertaTrabajo;
import es.iw.ucajobs.domain.OfertaTrabajoDataOnDemand;
import es.iw.ucajobs.domain.Trabajo;
import es.iw.ucajobs.domain.TrabajoDataOnDemand;
import es.iw.ucajobs.reference.EstadoOferta;
import es.iw.ucajobs.reference.TipoContrato;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect OfertaTrabajoDataOnDemand_Roo_DataOnDemand {
    
    declare @type: OfertaTrabajoDataOnDemand: @Component;
    
    private Random OfertaTrabajoDataOnDemand.rnd = new SecureRandom();
    
    private List<OfertaTrabajo> OfertaTrabajoDataOnDemand.data;
    
    @Autowired
    CiudadDataOnDemand OfertaTrabajoDataOnDemand.ciudadDataOnDemand;
    
    @Autowired
    TrabajoDataOnDemand OfertaTrabajoDataOnDemand.trabajoDataOnDemand;
    
    public OfertaTrabajo OfertaTrabajoDataOnDemand.getNewTransientOfertaTrabajo(int index) {
        OfertaTrabajo obj = new OfertaTrabajo();
        setDescripcion(obj, index);
        setDuracion(obj, index);
        setEstado(obj, index);
        setNombre_puesto(obj, index);
        setSalario(obj, index);
        setTipologia_contrato(obj, index);
        setVacantes(obj, index);
        return obj;
    }
    
    public void OfertaTrabajoDataOnDemand.setDescripcion(OfertaTrabajo obj, int index) {
        String descripcion = "descripcion_" + index;
        obj.setDescripcion(descripcion);
    }
    
    public void OfertaTrabajoDataOnDemand.setDuracion(OfertaTrabajo obj, int index) {
        String duracion = "duracion_" + index;
        obj.setDuracion(duracion);
    }
    
    public void OfertaTrabajoDataOnDemand.setEstado(OfertaTrabajo obj, int index) {
        EstadoOferta estado = EstadoOferta.class.getEnumConstants()[0];
        obj.setEstado(estado);
    }
    
    public void OfertaTrabajoDataOnDemand.setNombre_puesto(OfertaTrabajo obj, int index) {
        Trabajo nombre_puesto = trabajoDataOnDemand.getRandomTrabajo();
        obj.setNombre_puesto(nombre_puesto);
    }
    
    public void OfertaTrabajoDataOnDemand.setSalario(OfertaTrabajo obj, int index) {
        double salario = new Integer(index).doubleValue();
        obj.setSalario(salario);
    }
    
    public void OfertaTrabajoDataOnDemand.setTipologia_contrato(OfertaTrabajo obj, int index) {
        TipoContrato tipologia_contrato = TipoContrato.class.getEnumConstants()[0];
        obj.setTipologia_contrato(tipologia_contrato);
    }
    
    public void OfertaTrabajoDataOnDemand.setVacantes(OfertaTrabajo obj, int index) {
        int vacantes = index;
        obj.setVacantes(vacantes);
    }
    
    public OfertaTrabajo OfertaTrabajoDataOnDemand.getSpecificOfertaTrabajo(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        OfertaTrabajo obj = data.get(index);
        Long id = obj.getId();
        return OfertaTrabajo.findOfertaTrabajo(id);
    }
    
    public OfertaTrabajo OfertaTrabajoDataOnDemand.getRandomOfertaTrabajo() {
        init();
        OfertaTrabajo obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return OfertaTrabajo.findOfertaTrabajo(id);
    }
    
    public boolean OfertaTrabajoDataOnDemand.modifyOfertaTrabajo(OfertaTrabajo obj) {
        return false;
    }
    
    public void OfertaTrabajoDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = OfertaTrabajo.findOfertaTrabajoEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'OfertaTrabajo' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<OfertaTrabajo>();
        for (int i = 0; i < 10; i++) {
            OfertaTrabajo obj = getNewTransientOfertaTrabajo(i);
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
