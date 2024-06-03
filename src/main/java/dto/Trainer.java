package dto;

import java.io.Serializable;

public class Trainer implements Serializable{

	private static final long serialVersionUID = -4274700572038677000L;
	
	private String trainerId; //Ʈ���̳� ��ȣ
	private String tname; //Ʈ���̳� �̸�
	private String description; // �ڱ�Ұ�
	private String ability; //��� ����
	private String ability1; //1
	private String ability2; //2
	private String ability3; //3
	private String lesson; //��� ����
	private String category; //�о�
	private String filename; // �̹��� ���ϸ�
	private int quantity;  //��㺸�� ���� 
	
	
	public Trainer() {
		super();
	}
	
	public Trainer(String trainerId, String tname) {
		this.trainerId = trainerId;
		this.tname = tname;
	}
	public String getTrainerId() {
		return trainerId;
	}
	
	public String getTname() {
		return tname;
	}
	

	public String getDescription() {
		return description;
	}

	public String getcategory() {
		return category;
	}

	public String getFilename() {
		return filename;
	}
	public int getQuantity() {
		return quantity;
	}
	public String getLesson() {
		return lesson;
	}
	public String getAbility() {
		return ability;
	}
	public String getAbility1() {
		return ability1;
	}
	public String getAbility2() {
		return ability2;
	}
	public String getAbility3() {
		return ability3;
	}

	
	
	public void setTrainerId(String trainerId) {
		this.trainerId = trainerId;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}

	public void setDescription(String description) {
		this.description = description;
}

	public void setcategory(String category) {
		this.category = category;
	}
	
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity; 
	}
	public void setLesson(String lesson) {
		this.lesson = lesson;
	}
	public void setAbility(String ability) {
		this.ability = ability;
	}
	public void setAbility1(String ability1) {
		this.ability1 = ability1;
	}
	public void setAbility2(String ability2) {
		this.ability2 = ability2;
	}
	public void setAbility3(String ability3) {
		this.ability3 = ability3;
	}

	
}
