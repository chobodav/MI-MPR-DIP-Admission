// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.study;

import cz.cvut.fit.mi_mpr_dip.admission.domain.study.Degree;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Version;

privileged aspect Degree_Roo_Jpa_Entity {
    
    declare @type: Degree: @Entity;
    
    @Version
    @Column(name = "version")
    private Integer Degree.version;
    
    public Integer Degree.getVersion() {
        return this.version;
    }
    
    public void Degree.setVersion(Integer version) {
        this.version = version;
    }
    
}
