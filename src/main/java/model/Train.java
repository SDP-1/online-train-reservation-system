package model;

public class Train {
	
	private int id;
	private String name;
	private String start;
	private String end;
	private int seatCount;
	private int availableSeatCount;
	
	
	public Train(int id, String name, String start, String end, int seatCount, int availableSeatCount) {
		super();
		this.id = id;
		this.name = name;
		this.start = start;
		this.end = end;
		this.seatCount = seatCount;
		this.availableSeatCount = availableSeatCount;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public int getSeatCount() {
		return seatCount;
	}
	public void setSeatCount(int seatCount) {
		this.seatCount = seatCount;
	}
	public int getAvailableSeatCount() {
		return availableSeatCount;
	}
	public void setAvailableSeatCount(int availableSeatCount) {
		this.availableSeatCount = availableSeatCount;
	}

	
}
