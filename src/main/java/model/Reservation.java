package model;

public class Reservation extends TicketDetails{
	
	
	private int recervationNo;
	private int userid;
	private String reservationPlaceDate;
	private double unitPrice;
	private double totalPrice;
	
	public Reservation(int train_number, String start_point, String end_point, String reservation_date,
			int passenger_count, int recervationNo, int userid, String reservationPlaceDate, double unitPrice,
			double totalPrice) {
		
		super(train_number, start_point, end_point, reservation_date, passenger_count);
		
		this.recervationNo = recervationNo;
		this.userid = userid;
		this.reservationPlaceDate = reservationPlaceDate;
		this.unitPrice = unitPrice;
		this.totalPrice = totalPrice;
	}

	public int getRecervationNo() {
		return recervationNo;
	}

	public void setRecervationNo(int recervationNo) {
		this.recervationNo = recervationNo;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getReservationPlaceDate() {
		return reservationPlaceDate;
	}

	public void setReservationPlaceDate(String reservationPlaceDate) {
		this.reservationPlaceDate = reservationPlaceDate;
	}

	public double getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
}
