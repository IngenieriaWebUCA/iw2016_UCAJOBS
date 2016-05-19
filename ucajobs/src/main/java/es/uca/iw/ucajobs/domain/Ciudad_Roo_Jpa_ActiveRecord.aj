// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.ucajobs.domain;

import es.uca.iw.ucajobs.domain.Ciudad;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Ciudad_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Ciudad.entityManager;
    
    public static final List<String> Ciudad.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nombre");
    
    public static final EntityManager Ciudad.entityManager() {
        EntityManager em = new Ciudad().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Ciudad.countCiudads() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Ciudad o", Long.class).getSingleResult();
    }
    
    public static List<Ciudad> Ciudad.findAllCiudads() {
        return entityManager().createQuery("SELECT o FROM Ciudad o", Ciudad.class).getResultList();
    }
    
    public static List<Ciudad> Ciudad.findAllCiudads(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Ciudad o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Ciudad.class).getResultList();
    }
    
    public static Ciudad Ciudad.findCiudad(Long id) {
        if (id == null) return null;
        return entityManager().find(Ciudad.class, id);
    }
    
    public static List<Ciudad> Ciudad.findCiudadEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Ciudad o", Ciudad.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Ciudad> Ciudad.findCiudadEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Ciudad o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Ciudad.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Ciudad.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Ciudad.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Ciudad attached = Ciudad.findCiudad(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Ciudad.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Ciudad.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Ciudad Ciudad.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Ciudad merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
