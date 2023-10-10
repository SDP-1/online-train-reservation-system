package model;

public class TrainShedule {
	private String sration1;
	private String station2;
	private int km;
	
	public TrainShedule(String sration1, String station2, int km) {
		super();
		this.sration1 = sration1;
		this.station2 = station2;
		this.km = km;
	}
	
	public String getSration1() {
		return sration1;
	}
	public void setSration1(String sration1) {
		this.sration1 = sration1;
	}
	public String getStation2() {
		return station2;
	}
	public void setStation2(String station2) {
		this.station2 = station2;
	}
	public int getKm() {
		return km;
	}
	public void setKm(int km) {
		this.km = km;
	}
	
	
	
}
