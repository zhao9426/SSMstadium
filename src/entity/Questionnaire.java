package entity;

public class Questionnaire {

	private String qid;
	private String user;
	private String serviceAttitude;
	private String facilityManagement;
	private String priceSuggestion;
	private String suggestion;
	public String getServiceAttitude() {
		return serviceAttitude;
	}
	public void setServiceAttitude(String serviceAttitude) {
		this.serviceAttitude = serviceAttitude;
	}


	public String getFacilityManagement() {
		return facilityManagement;
	}
	public void setFacilityManagement(String facilityManagement) {
		this.facilityManagement = facilityManagement;
	}
	public String getPriceSuggestion() {
		return priceSuggestion;
	}
	public void setPriceSuggestion(String priceSuggestion) {
		this.priceSuggestion = priceSuggestion;
	}
		public String getSuggestion() {
		return suggestion;
	}
	public void setSuggestion(String suggestion) {
		this.suggestion = suggestion;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}

	public String getQid() {
		return qid;
	}
	public void setQid(String qid) {
		this.qid = qid;
	}
	
}
