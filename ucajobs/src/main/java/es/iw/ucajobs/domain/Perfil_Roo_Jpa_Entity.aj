// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.domain;

import es.iw.ucajobs.domain.Perfil;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Perfil_Roo_Jpa_Entity {
    
    declare @type: Perfil: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Perfil.id;
    
    @Version
    @Column(name = "version")
    private Integer Perfil.version;
    
    public Long Perfil.getId() {
        return this.id;
    }
    
    public void Perfil.setId(Long id) {
        this.id = id;
    }
    
    public Integer Perfil.getVersion() {
        return this.version;
    }
    
    public void Perfil.setVersion(Integer version) {
        this.version = version;
    }
    
}