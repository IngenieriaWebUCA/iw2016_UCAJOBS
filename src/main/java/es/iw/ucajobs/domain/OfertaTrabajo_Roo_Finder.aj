// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.domain;

import es.iw.ucajobs.domain.Ciudad;
import es.iw.ucajobs.domain.Inscripcion;
import es.iw.ucajobs.domain.OfertaTrabajo;
import es.iw.ucajobs.domain.Trabajo;
import java.util.Set;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect OfertaTrabajo_Roo_Finder {
    
    public static Long OfertaTrabajo.countFindOfertaTrabajoesByInscritos(Set<Inscripcion> inscritos) {
        if (inscritos == null) throw new IllegalArgumentException("The inscritos argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT COUNT(o) FROM OfertaTrabajo AS o WHERE");
        for (int i = 0; i < inscritos.size(); i++) {
            if (i > 0) queryBuilder.append(" AND");
            queryBuilder.append(" :inscritos_item").append(i).append(" MEMBER OF o.inscritos");
        }
        TypedQuery q = em.createQuery(queryBuilder.toString(), Long.class);
        int inscritosIndex = 0;
        for (Inscripcion _inscripcion: inscritos) {
            q.setParameter("inscritos_item" + inscritosIndex++, _inscripcion);
        }
        return ((Long) q.getSingleResult());
    }
    
    public static Long OfertaTrabajo.countFindOfertaTrabajoesByLocalizacion(Ciudad localizacion) {
        if (localizacion == null) throw new IllegalArgumentException("The localizacion argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM OfertaTrabajo AS o WHERE o.localizacion = :localizacion", Long.class);
        q.setParameter("localizacion", localizacion);
        return ((Long) q.getSingleResult());
    }
    
    public static Long OfertaTrabajo.countFindOfertaTrabajoesByNombre_puesto(Trabajo nombre_puesto) {
        if (nombre_puesto == null) throw new IllegalArgumentException("The nombre_puesto argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM OfertaTrabajo AS o WHERE o.nombre_puesto = :nombre_puesto", Long.class);
        q.setParameter("nombre_puesto", nombre_puesto);
        return ((Long) q.getSingleResult());
    }
    
    public static Long OfertaTrabajo.countFindOfertaTrabajoesBySalario(double salario) {
        EntityManager em = OfertaTrabajo.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM OfertaTrabajo AS o WHERE o.salario = :salario", Long.class);
        q.setParameter("salario", salario);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoesByInscritos(Set<Inscripcion> inscritos) {
        if (inscritos == null) throw new IllegalArgumentException("The inscritos argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM OfertaTrabajo AS o WHERE");
        for (int i = 0; i < inscritos.size(); i++) {
            if (i > 0) queryBuilder.append(" AND");
            queryBuilder.append(" :inscritos_item").append(i).append(" MEMBER OF o.inscritos");
        }
        TypedQuery<OfertaTrabajo> q = em.createQuery(queryBuilder.toString(), OfertaTrabajo.class);
        int inscritosIndex = 0;
        for (Inscripcion _inscripcion: inscritos) {
            q.setParameter("inscritos_item" + inscritosIndex++, _inscripcion);
        }
        return q;
    }
    
    public static TypedQuery<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoesByInscritos(Set<Inscripcion> inscritos, String sortFieldName, String sortOrder) {
        if (inscritos == null) throw new IllegalArgumentException("The inscritos argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM OfertaTrabajo AS o WHERE");
        for (int i = 0; i < inscritos.size(); i++) {
            if (i > 0) queryBuilder.append(" AND");
            queryBuilder.append(" :inscritos_item").append(i).append(" MEMBER OF o.inscritos");
        }
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" " + sortOrder);
            }
        }
        TypedQuery<OfertaTrabajo> q = em.createQuery(queryBuilder.toString(), OfertaTrabajo.class);
        int inscritosIndex = 0;
        for (Inscripcion _inscripcion: inscritos) {
            q.setParameter("inscritos_item" + inscritosIndex++, _inscripcion);
        }
        return q;
    }
    
    public static TypedQuery<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoesByLocalizacion(Ciudad localizacion) {
        if (localizacion == null) throw new IllegalArgumentException("The localizacion argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        TypedQuery<OfertaTrabajo> q = em.createQuery("SELECT o FROM OfertaTrabajo AS o WHERE o.localizacion = :localizacion", OfertaTrabajo.class);
        q.setParameter("localizacion", localizacion);
        return q;
    }
    
    public static TypedQuery<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoesByLocalizacion(Ciudad localizacion, String sortFieldName, String sortOrder) {
        if (localizacion == null) throw new IllegalArgumentException("The localizacion argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM OfertaTrabajo AS o WHERE o.localizacion = :localizacion");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<OfertaTrabajo> q = em.createQuery(queryBuilder.toString(), OfertaTrabajo.class);
        q.setParameter("localizacion", localizacion);
        return q;
    }
    
    public static TypedQuery<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoesByNombre_puesto(Trabajo nombre_puesto) {
        if (nombre_puesto == null) throw new IllegalArgumentException("The nombre_puesto argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        TypedQuery<OfertaTrabajo> q = em.createQuery("SELECT o FROM OfertaTrabajo AS o WHERE o.nombre_puesto = :nombre_puesto", OfertaTrabajo.class);
        q.setParameter("nombre_puesto", nombre_puesto);
        return q;
    }
    
    public static TypedQuery<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoesByNombre_puesto(Trabajo nombre_puesto, String sortFieldName, String sortOrder) {
        if (nombre_puesto == null) throw new IllegalArgumentException("The nombre_puesto argument is required");
        EntityManager em = OfertaTrabajo.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM OfertaTrabajo AS o WHERE o.nombre_puesto = :nombre_puesto");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<OfertaTrabajo> q = em.createQuery(queryBuilder.toString(), OfertaTrabajo.class);
        q.setParameter("nombre_puesto", nombre_puesto);
        return q;
    }
    
    public static TypedQuery<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoesBySalario(double salario) {
        EntityManager em = OfertaTrabajo.entityManager();
        TypedQuery<OfertaTrabajo> q = em.createQuery("SELECT o FROM OfertaTrabajo AS o WHERE o.salario = :salario", OfertaTrabajo.class);
        q.setParameter("salario", salario);
        return q;
    }
    
    public static TypedQuery<OfertaTrabajo> OfertaTrabajo.findOfertaTrabajoesBySalario(double salario, String sortFieldName, String sortOrder) {
        EntityManager em = OfertaTrabajo.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM OfertaTrabajo AS o WHERE o.salario = :salario");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<OfertaTrabajo> q = em.createQuery(queryBuilder.toString(), OfertaTrabajo.class);
        q.setParameter("salario", salario);
        return q;
    }
    
}
