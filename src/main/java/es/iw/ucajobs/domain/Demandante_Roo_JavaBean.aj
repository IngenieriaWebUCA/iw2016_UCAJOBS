// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.domain;

import es.iw.ucajobs.domain.Demandante;
import es.iw.ucajobs.domain.Inscripcion;
import es.iw.ucajobs.domain.Users;
import java.util.Set;

privileged aspect Demandante_Roo_JavaBean {
    
    public Demandante Demandante.getPerfil() {
        return this.perfil;
    }
    
    public void Demandante.setPerfil(Demandante perfil) {
        this.perfil = perfil;
    }
    
    public Users Demandante.getUsuario() {
        return this.usuario;
    }
    
    public void Demandante.setUsuario(Users usuario) {
        this.usuario = usuario;
    }
    
    public Set<Inscripcion> Demandante.getInscripciones() {
        return this.inscripciones;
    }
    
    public void Demandante.setInscripciones(Set<Inscripcion> inscripciones) {
        this.inscripciones = inscripciones;
    }
    
}
