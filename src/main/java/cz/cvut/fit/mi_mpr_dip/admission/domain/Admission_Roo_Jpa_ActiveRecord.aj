// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package cz.cvut.fit.mi_mpr_dip.admission.domain;

import cz.cvut.fit.mi_mpr_dip.admission.domain.Admission;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Admission_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Admission.entityManager;
    
    public static final EntityManager Admission.entityManager() {
        EntityManager em = new Admission().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Admission.countAdmissions() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Admission o", Long.class).getSingleResult();
    }
    
    public static List<Admission> Admission.findAllAdmissions() {
        return entityManager().createQuery("SELECT o FROM Admission o", Admission.class).getResultList();
    }
    
    public static Admission Admission.findAdmission(Long id) {
        if (id == null) return null;
        return entityManager().find(Admission.class, id);
    }
    
    public static List<Admission> Admission.findAdmissionEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Admission o", Admission.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Admission.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Admission.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Admission attached = Admission.findAdmission(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Admission.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Admission.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Admission Admission.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Admission merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}