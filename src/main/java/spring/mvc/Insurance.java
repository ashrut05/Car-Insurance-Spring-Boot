/*
 *	Ashrut Sharma - 301107609
 *  Assignment 01
 *  Spring Web MVC Application
 *  Insurance.java
 */
package spring.mvc;

/*
 *  Insurance bean that contains necessary properties and 
 *  methods to handle user input.
 */
public class Insurance {
	private String firstName;
	private String lastname;
	private String phone;
	private String email;
	private String adrlin1;
	private String adrlin2;
	private String city;
	private String state;
	private String zipCode;
	private String vin;
	private String carBrand;
	private String carModel;
	private String year;
	private double kms;
	private int drivers;
	private int driving;
	private String commute;
	private String insured;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getAdrlin1() {
		return adrlin1;
	}
	public void setAdrlin1(String adrlin1) {
		this.adrlin1 = adrlin1;
	}
	
	public String getAdrlin2() {
		return adrlin2;
	}
	public void setAdrlin2(String adrnlin2) {
		this.adrlin2 = adrnlin2;
	}
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	public String getState() {
		return state;
	}
	public void setRegion(String state) {
		this.state = state;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	
	public String getCarBrand() {
		return carBrand;
	}
	public void setCarBrand(String carBrand) {
		this.carBrand = carBrand;
	}
	
	public String getCarModel() {
		return carModel;
	}
	public void setCarModel(String carModel) {
		this.carModel = carModel;
	}
	
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	
	public double getKms() {
		return kms;
	}
	public void setKms(double kms) {
		this.kms = kms;
	}
	
	public int getDrivers() {
		return drivers;
	}
	public void setDrivers(int drivers) {
		this.drivers = drivers;
	}

	public int getDriving() {
		return driving;
	}
	public void setDriving(int driving) {
		this.driving = driving;
	}
	
	public String getCommute() {
		return commute;
	}
	public void setCommute(String commute) {
		this.commute = commute;
	}
	
	public String getInsured() {
		return insured;
	}
	public void setInsured(String insured) {
		this.insured = insured;
	}
	
	public Insurance(String firstName, String lastname, String phone, String email, String adrlin1, String adrlin2, String city, 
					String state, String zipCode, String vin, String carBrand, String carModel, String year, double kms, 
					int drivers, int driving, String commute, String insured) {
		super();
		this.firstName = firstName;
		this.lastname = lastname;
		this.phone = phone;
		this.email = email;
		this.adrlin1 = adrlin1;
		this.adrlin2 = adrlin2;
		this.city = city;
		this.state = state;
		this.zipCode = zipCode;
		this.vin = vin;
		this.carBrand = carBrand;
		this.carModel = carModel;
		this.year = year;
		this.kms = kms;
		this.drivers = drivers;
		this.driving = driving;
		this.commute = commute;
		this.insured = insured;
	}
	
	public boolean validateUserInput() {
		boolean isDataValid = true;
		return isDataValid;
	}
	
	
	public double calculateQuotation() {
		double insuranceCost = 100.00; //base cost
		if(validateUserInput()) {
			if(this.kms > 0 && this.kms < 50000) {
				insuranceCost += FIFTYK;
			} else if(this.kms > 50000 && this.kms < 100000){
				insuranceCost += HUNDREDK;
			}
			
			if(this.drivers > 1) {
				insuranceCost += (PER_PERSON * drivers);
			}
			
			if(this.driving > 5) {
				insuranceCost -=  EXPERIENCE;
			}
			
			if(this.insured == "Yes") {
				insuranceCost -= INSURED;
			}
		}
		
		return insuranceCost;
	}
	
	private final double FIFTYK = 100.00;
	private final double HUNDREDK = 200.00;
	private final double PER_PERSON = 50.00;
	private final double EXPERIENCE = 10.00;
	private final double INSURED = 10.00;
}
