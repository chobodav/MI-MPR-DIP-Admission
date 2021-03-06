package cz.cvut.fit.mi_mpr_dip.admission.domain.personal;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;

import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Document {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long documentId;

	@NotNull
	@ManyToOne(cascade = CascadeType.ALL)
	private DocumentType documentType;

	@NotNull
	private String number;
}
