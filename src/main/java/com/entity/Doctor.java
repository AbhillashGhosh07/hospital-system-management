package com.entity;


public class Doctor {
	private int Id;
	private String fullName;
	private String dob;
	private String qualification;
	private String specialist;
	private String email;
	private String mobileNo;
	private String password;
	
	public Doctor() {}
	
	public Doctor(String fullName, String dob, String qualification, String specialist, String email, String mobileNo,
			String password) {
		super();
		this.fullName = fullName;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.mobileNo = mobileNo;
		this.password = password;
	}


	public Doctor(int Id,String fullName, String dob, String qualification, String specialist, String email, String mobileNo,
			String password) {
		super();
		this.Id=Id;
		this.fullName = fullName;
		this.dob = dob;
		this.qualification = qualification;
		this.specialist = specialist;
		this.email = email;
		this.mobileNo = mobileNo;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getSpecialist() {
		return specialist;
	}

	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Doctor [Id=" + Id + ", fullName=" + fullName + ", dob=" + dob + ", qualification=" + qualification
				+ ", specialist=" + specialist + ", email=" + email + ", mobileNo=" + mobileNo + ", password="
				+ password + "]";
	}
	
}
