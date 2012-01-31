// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain.personal;

import cz.cvut.fit.mi_mpr_dip.admission.domain.personal.Gender;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Gender_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Gender.entityManager;
    
    public static final EntityManager Gender.entityManager() {
        EntityManager em = new Gender().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Gender.countGenders() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Gender o", Long.class).getSingleResult();
    }
    
    public static List<Gender> Gender.findAllGenders() {
        return entityManager().createQuery("SELECT o FROM Gender o", Gender.class).getResultList();
    }
    
    public static Gender Gender.findGender(Long genderId) {
        if (genderId == null) return null;
        return entityManager().find(Gender.class, genderId);
    }
    
    public static List<Gender> Gender.findGenderEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Gender o", Gender.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Gender.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Gender.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Gender attached = Gender.findGender(this.genderId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Gender.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Gender.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Gender Gender.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Gender merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
