package com.test.jsp;

public class Student {
	
	//${s1.l}
	//- getAddress()
	
	private String name;
	private String gender;
	private String aaa;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return aaa;
	}
	public void setAddress(String address) {
		this.aaa = address;
	}
	
	@Override
	public String toString() {
		return "Student [name=" + name + ", gender=" + gender + ", address=" + aaa + "]";
	}

}
