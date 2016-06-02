// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.domain;

import es.iw.ucajobs.domain.Users;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Users_Roo_Finder {
    
    public static Long Users.countFindUsersesByDniEquals(String dni) {
        if (dni == null || dni.length() == 0) throw new IllegalArgumentException("The dni argument is required");
        EntityManager em = Users.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Users AS o WHERE o.dni = :dni", Long.class);
        q.setParameter("dni", dni);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Users.countFindUsersesByNombreEquals(String nombre) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        EntityManager em = Users.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Users AS o WHERE o.nombre = :nombre", Long.class);
        q.setParameter("nombre", nombre);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Users.countFindUsersesByUsuarioEquals(String usuario) {
        if (usuario == null || usuario.length() == 0) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Users.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Users AS o WHERE o.usuario = :usuario", Long.class);
        q.setParameter("usuario", usuario);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Users> Users.findUsersesByDniEquals(String dni) {
        if (dni == null || dni.length() == 0) throw new IllegalArgumentException("The dni argument is required");
        EntityManager em = Users.entityManager();
        TypedQuery<Users> q = em.createQuery("SELECT o FROM Users AS o WHERE o.dni = :dni", Users.class);
        q.setParameter("dni", dni);
        return q;
    }
    
    public static TypedQuery<Users> Users.findUsersesByDniEquals(String dni, String sortFieldName, String sortOrder) {
        if (dni == null || dni.length() == 0) throw new IllegalArgumentException("The dni argument is required");
        EntityManager em = Users.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Users AS o WHERE o.dni = :dni");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Users> q = em.createQuery(queryBuilder.toString(), Users.class);
        q.setParameter("dni", dni);
        return q;
    }
    
    public static TypedQuery<Users> Users.findUsersesByNombreEquals(String nombre) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        EntityManager em = Users.entityManager();
        TypedQuery<Users> q = em.createQuery("SELECT o FROM Users AS o WHERE o.nombre = :nombre", Users.class);
        q.setParameter("nombre", nombre);
        return q;
    }
    
    public static TypedQuery<Users> Users.findUsersesByNombreEquals(String nombre, String sortFieldName, String sortOrder) {
        if (nombre == null || nombre.length() == 0) throw new IllegalArgumentException("The nombre argument is required");
        EntityManager em = Users.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Users AS o WHERE o.nombre = :nombre");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Users> q = em.createQuery(queryBuilder.toString(), Users.class);
        q.setParameter("nombre", nombre);
        return q;
    }
    
    public static TypedQuery<Users> Users.findUsersesByUsuarioEquals(String usuario) {
        if (usuario == null || usuario.length() == 0) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Users.entityManager();
        TypedQuery<Users> q = em.createQuery("SELECT o FROM Users AS o WHERE o.usuario = :usuario", Users.class);
        q.setParameter("usuario", usuario);
        return q;
    }
    
    public static TypedQuery<Users> Users.findUsersesByUsuarioEquals(String usuario, String sortFieldName, String sortOrder) {
        if (usuario == null || usuario.length() == 0) throw new IllegalArgumentException("The usuario argument is required");
        EntityManager em = Users.entityManager();
        StringBuilder queryBuilder = new StringBuilder("SELECT o FROM Users AS o WHERE o.usuario = :usuario");
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            queryBuilder.append(" ORDER BY ").append(sortFieldName);
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                queryBuilder.append(" ").append(sortOrder);
            }
        }
        TypedQuery<Users> q = em.createQuery(queryBuilder.toString(), Users.class);
        q.setParameter("usuario", usuario);
        return q;
    }
    
}
