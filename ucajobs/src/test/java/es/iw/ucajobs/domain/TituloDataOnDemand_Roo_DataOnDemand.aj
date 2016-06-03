// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.domain;

import es.iw.ucajobs.domain.Titulo;
import es.iw.ucajobs.domain.TituloDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect TituloDataOnDemand_Roo_DataOnDemand {
    
    declare @type: TituloDataOnDemand: @Component;
    
    private Random TituloDataOnDemand.rnd = new SecureRandom();
    
    private List<Titulo> TituloDataOnDemand.data;
    
    public Titulo TituloDataOnDemand.getNewTransientTitulo(int index) {
        Titulo obj = new Titulo();
        setNombre(obj, index);
        return obj;
    }
    
    public void TituloDataOnDemand.setNombre(Titulo obj, int index) {
        String nombre = "nombre_" + index;
        obj.setNombre(nombre);
    }
    
    public Titulo TituloDataOnDemand.getSpecificTitulo(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Titulo obj = data.get(index);
        Long id = obj.getId();
        return Titulo.findTitulo(id);
    }
    
    public Titulo TituloDataOnDemand.getRandomTitulo() {
        init();
        Titulo obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Titulo.findTitulo(id);
    }
    
    public boolean TituloDataOnDemand.modifyTitulo(Titulo obj) {
        return false;
    }
    
    public void TituloDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Titulo.findTituloEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Titulo' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Titulo>();
        for (int i = 0; i < 10; i++) {
            Titulo obj = getNewTransientTitulo(i);
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
