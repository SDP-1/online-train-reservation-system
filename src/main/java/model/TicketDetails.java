package model;

public class TicketDetails {
	private int  train_number;
	private String start_point;
	private String end_point;
	private String reservation_date;
	private int passenger_count;
	private double price;
	private String trainName;

	public TicketDetails() {}
	
	public TicketDetails(int train_number, String start_point, String end_point, String reservation_date,
			int passenger_count) {
		super();
		this.train_number = train_number;
		this.start_point = start_point;
		this.end_point = end_point;
		this.reservation_date = reservation_date;
		this.passenger_count = passenger_count;
	}

	public TicketDetails(int train_number, String start_point, String end_point, String reservation_date,
			int passenger_count, double price) {
		super();
		this.train_number = train_number;
		this.start_point = start_point;
		this.end_point = end_point;
		this.reservation_date = reservation_date;
		this.passenger_count = passenger_count;
		this.price = price;
	}
	
	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public int getTrain_number() {
		return train_number;
	}

	public void setTrain_number(int train_number) {
		this.train_number = train_number;
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

	public String getReservation_date() {
		return reservation_date;
	}

	public void setReservation_date(String reservation_date) {
		this.reservation_date = reservation_date;
	}

	public int getPassenger_count() {
		return passenger_count;
	}

	public void setPassenger_count(int passenger_count) {
		this.passenger_count = passenger_count;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
}
