package utn.frd.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import utn.frd.bean.Persona;
import utn.frd.db.PersistentManager;

public class PersonaAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String name;
	private String age;
	private String gender;
	private List<Persona> personas;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	
	public String save(){
		personas = PersistentManager.getInstance();
		int edad = 0;
		try{
		edad = Integer.parseInt(age);
		}catch(Exception e){
		addActionError("Ocurri� un error con la edad");
		return ERROR;
		}
		
		Persona p= new Persona(personas.size(), name, edad, gender);
		personas.add(p);
		
		name=" ";
		age=" ";
		gender=" ";
		
		setName(null);
		setAge(null);
		setGender(null);
		return SUCCESS;
		}
}