// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.personal;

import cz.cvut.fit.mi_mpr_dip.admission.domain.personal.DocumentType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Version;

privileged aspect DocumentType_Roo_Jpa_Entity {
    
    declare @type: DocumentType: @Entity;
    
    @Version
    @Column(name = "version")
    private Integer DocumentType.version;
    
    public Integer DocumentType.getVersion() {
        return this.version;
    }
    
    public void DocumentType.setVersion(Integer version) {
        this.version = version;
    }
    
}