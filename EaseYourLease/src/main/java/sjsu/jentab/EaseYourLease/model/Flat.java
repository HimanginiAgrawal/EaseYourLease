package sjsu.jentab.EaseYourLease.model;

import javax.persistence.*;

@Entity
@Table(name = "Flat")
public class Flat {

		@Id
		@Column(name = "id")
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		
		@ManyToOne
		@JoinColumn(name = "apartmentId")
		private Apartment apartment;

		private String flatName;
		private String details;
		private String type;
		private String price;
		private String availability;
		
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}

		public String getFlatName() {
			return flatName;
		}
		public void setFlatName(String flatName) {
			this.flatName = flatName;
		}

		public String getPrice() {
			return price;
		}
		public void setPrice(String price) {
			this.price = price;
		}

		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		
		public String getAvailability() {
			return availability;
		}
		public void setAvailability(String availability) {
			this.availability = availability;
		}
		
		public String getDetails() {
			return details;
		}
		public void setDetails(String details) {
			this.details = details;
		}	
}
