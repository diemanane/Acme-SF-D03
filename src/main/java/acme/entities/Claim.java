
package acme.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.URL;

import acme.client.data.AbstractEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Claim extends AbstractEntity {

	// Serialisation identifier -----------------------------------------------

	private static final long	serialVersionUID	= 1L;

	// Attributes -------------------------------------------------------------

	@Column(unique = true)
	@NotBlank
	@NotNull
	@Pattern(regexp = "C-[0-9]{4}")
	private String				code;

	@NotNull
	@Past
	private Date				instantiationMoment;

	@NotNull
	@NotBlank
	@Length(min = 1, max = 75)
	private String				heading;

	@NotBlank
	@NotNull
	@Length(min = 1, max = 100)
	private String				description;

	@NotNull
	@NotBlank
	@Length(min = 1, max = 100)
	private String				department;

	@Email
	private String				email;

	@URL
	private String				optionalLink;

	// Derived attributes -----------------------------------------------------

	// Relationships ----------------------------------------------------------

}
