package org.crudomaven.model;

public class plan {
	private int id;
	private String sName;
	private int importe;
	
	public plan(int id, String sName, int importe) {
		super();
		this.id = id;
		this.sName = sName;
		this.importe = importe;
	}
	
	public plan() {
		
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

	public int getImporte() {
		return importe;
	}

	public void setImporte(int importe) {
		this.importe = importe;
	}

	@Override
	public String toString() {
		return "plan [id=" + id + ", sName=" + sName + ", importe=" + importe + "]";
	}
	
	
}
