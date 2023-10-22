package model;

public class ReservationSearch {

	private String start_point;
	private String end_point;
	private String recervation_date;
	private int pacenger_count;
	
	
	public ReservationSearch(String start_point, String end_point, String recervation_date, int pacenger_count) {
		super();
		this.start_point = start_point;
		this.end_point = end_point;
		this.recervation_date = recervation_date;
		this.pacenger_count = pacenger_count;
	}
	
	public String getStart_point() {
		return start_point;
	}
	public void setStart_point(String start_point) {
		this.start_point = start_point;
	}
	public String getEnd_point() {
		return end_point;
	}
	public void setEnd_point(String end_point) {
		this.end_point = end_point;
	}
	public String getRecervation_date() {
		return recervation_date;
	}
	public void setRecervation_date(String recervation_date) {
		this.recervation_date = recervation_date;
	}
	public int getPacenger_count() {
		return pacenger_count;
	}
	public void setPacenger_count(int pacenger_count) {
		this.pacenger_count = pacenger_count;
	}

	
	
}
