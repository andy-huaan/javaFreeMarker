package entity;

import java.io.Serializable;

public class Users implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//姓名
	private String name;
	//年龄
	private int age;
	//性别
	private String sex;
	
	public Users(){
		
	}
	
	public Users(String name,int age,String sex){
		this.name = name;
		this.age = age;
		this.sex = sex;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
}
