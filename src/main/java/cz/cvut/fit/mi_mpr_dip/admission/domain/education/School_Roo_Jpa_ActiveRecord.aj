// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.education;

import cz.cvut.fit.mi_mpr_dip.admission.domain.education.School;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect School_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager School.entityManager;
    
    public static final EntityManager School.entityManager() {
        EntityManager em = new School().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long School.countSchools() {
        return entityManager().createQuery("SELECT COUNT(o) FROM School o", Long.class).getSingleResult();
    }
    
    public static List<School> School.findAllSchools() {
        return entityManager().createQuery("SELECT o FROM School o", School.class).getResultList();
    }
    
    public static School School.findSchool(Long id) {
        if (id == null) return null;
        return entityManager().find(School.class, id);
    }
    
    public static List<School> School.findSchoolEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM School o", School.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void School.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void School.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            School attached = School.findSchool(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void School.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void School.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public School School.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        School merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
