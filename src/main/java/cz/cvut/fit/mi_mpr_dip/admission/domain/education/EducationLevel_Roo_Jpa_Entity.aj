// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.education;

import cz.cvut.fit.mi_mpr_dip.admission.domain.education.EducationLevel;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Version;

privileged aspect EducationLevel_Roo_Jpa_Entity {
    
    declare @type: EducationLevel: @Entity;
    
    @Version
    @Column(name = "version")
    private Integer EducationLevel.version;
    
    public Integer EducationLevel.getVersion() {
        return this.version;
    }
    
    public void EducationLevel.setVersion(Integer version) {
        this.version = version;
    }
    
}
