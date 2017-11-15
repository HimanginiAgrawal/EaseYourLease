package sjsu.jentab.EaseYourLease.model;

import javax.persistence.*;

@Entity
@Table(name = "Tenant")
public class Tenant {

		@Id
		@Column(name = "id")
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;

		private String firstName;
		private String lastName;
		private String rentDate;
		private String contact;
						
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}

		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getRentDate() {
			return rentDate;
		}
		public void setRentDate(String rentDate) {
			this.rentDate = rentDate;
		}
		
		public String getContact() {
			return contact;
		}
		public void setContact(String contact) {
			this.contact = contact;
		}		
}

