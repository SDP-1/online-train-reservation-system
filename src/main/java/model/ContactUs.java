package model;

public class ContactUs implements Complane{
	
	private String name;
	private String email;
	private String mobile;
	private String subject;
	private String message;
	
	public ContactUs(String name, String email, String mobile, String subject, String message) {
		super();
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.subject = subject;
		this.message = message;
	}

	@Override
	public String get_sender_name() {
		// TODO Auto-generated method stub
		return name;
	}

	@Override
	public String get_sender_email() {
		// TODO Auto-generated method stub
		return email;
	}

	@Override
	public String get_sender_mobile() {
		// TODO Auto-generated method stub
		return mobile;
	}

	@Override
	public String get_subject() {
		// TODO Auto-generated method stub
		return subject;
	}

	@Override
	public String get_message() {
		// TODO Auto-generated method stub
		return message;
	}
	
	@Override
	public String toString() {
		String details="";
		
		details += "sender name : " + name + "\n";
		details += "sender email : " + email + "\n";
		details += "sender mobile : " + mobile + "\n";
		details += "message subject : " + subject + "\n";
		details += "message content : " + message + "\n";
		
		return email;
	}

}
