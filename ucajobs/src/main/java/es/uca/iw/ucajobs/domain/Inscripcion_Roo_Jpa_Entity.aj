// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.uca.iw.ucajobs.domain;

import es.uca.iw.ucajobs.domain.Inscripcion;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Inscripcion_Roo_Jpa_Entity {
    
    declare @type: Inscripcion: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id_")
    private Long Inscripcion.id_;
    
    @Version
    @Column(name = "version")
    private Integer Inscripcion.version;
    
    public Long Inscripcion.getId_() {
        return this.id_;
    }
    
    public void Inscripcion.setId_(Long id) {
        this.id_ = id;
    }
    
    public Integer Inscripcion.getVersion() {
        return this.version;
    }
    
    public void Inscripcion.setVersion(Integer version) {
        this.version = version;
    }
    
}