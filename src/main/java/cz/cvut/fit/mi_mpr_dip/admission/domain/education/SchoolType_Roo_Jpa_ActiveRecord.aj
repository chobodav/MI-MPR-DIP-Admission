// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.education;

import cz.cvut.fit.mi_mpr_dip.admission.domain.education.SchoolType;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SchoolType_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager SchoolType.entityManager;
    
    public static final EntityManager SchoolType.entityManager() {
        EntityManager em = new SchoolType().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SchoolType.countSchoolTypes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SchoolType o", Long.class).getSingleResult();
    }
    
    public static List<SchoolType> SchoolType.findAllSchoolTypes() {
        return entityManager().createQuery("SELECT o FROM SchoolType o", SchoolType.class).getResultList();
    }
    
    public static SchoolType SchoolType.findSchoolType(Long schoolTypeId) {
        if (schoolTypeId == null) return null;
        return entityManager().find(SchoolType.class, schoolTypeId);
    }
    
    public static List<SchoolType> SchoolType.findSchoolTypeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SchoolType o", SchoolType.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void SchoolType.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SchoolType.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SchoolType attached = SchoolType.findSchoolType(this.schoolTypeId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SchoolType.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SchoolType.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SchoolType SchoolType.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SchoolType merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
