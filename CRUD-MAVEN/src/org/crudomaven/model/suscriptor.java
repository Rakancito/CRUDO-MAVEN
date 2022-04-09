package org.crudomaven.model;

//import java.sql.Date;

public class suscriptor {
	private int id;
    private String sName;
    private String sLastName;
    private String sSecondLastName;
    private String sService;
    private String Date;
    private int iPlan;
    private int iStatus;
    
    public suscriptor(int id, String sName, String sLastName, String sSecondLastName, String sService,
			String date, int iPlan, int iStatus) {
		super();
		this.id = id;
		this.sName = sName;
		this.sLastName = sLastName;
		this.sSecondLastName = sSecondLastName;
		this.sService = sService;
		this.Date = date;
		this.iPlan = iPlan;
		this.iStatus = iStatus;
	}
    
    public suscriptor() {
    	
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	public String getsLastName() {
		return sLastName;
	}

	public void setsLastName(String sLastName) {
		this.sLastName = sLastName;
	}

	public String getsSecondLastName() {
		return sSecondLastName;
	}

	public void setsSecondLastName(String sSecondLastName) {
		this.sSecondLastName = sSecondLastName;
	}

	public String getsService() {
		return sService;
	}

	public void setsService(String sService) {
		this.sService = sService;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		this.Date = date;
	}

	public int getiPlan() {
		return iPlan;
	}

	public void setiPlan(int iPlan) {
		this.iPlan = iPlan;
	}

	public int getiStatus() {
		return iStatus;
	}

	public void setiStatus(int iStatus) {
		this.iStatus = iStatus;
	}

	@Override
	public String toString() {
		return "suscriptor [id=" + id + ", sName=" + sName + ", sLastName=" + sLastName + ", sSecondLastName="
				+ sSecondLastName + ", sService=" + sService + ", Date=" + Date + ", iPlan=" + iPlan + ", iStatus="
				+ iStatus + "]";
	}
    
    
}
