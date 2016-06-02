// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.iw.ucajobs.domain;

import es.iw.ucajobs.domain.OfertaTrabajo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Version;

privileged aspect OfertaTrabajo_Roo_Jpa_Entity {
    
    declare @type: OfertaTrabajo: @Entity;
    
    @Id
    @SequenceGenerator(name = "ofertaTrabajoGen", sequenceName = "OFE_SEQ")
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "ofertaTrabajoGen")
    @Column(name = "id")
    private Long OfertaTrabajo.id;
    
    @Version
    @Column(name = "version")
    private Integer OfertaTrabajo.version;
    
    public Long OfertaTrabajo.getId() {
        return this.id;
    }
    
    public void OfertaTrabajo.setId(Long id) {
        this.id = id;
    }
    
    public Integer OfertaTrabajo.getVersion() {
        return this.version;
    }
    
    public void OfertaTrabajo.setVersion(Integer version) {
        this.version = version;
    }
    
}
