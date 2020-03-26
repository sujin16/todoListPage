package kr.or.todolist.dto;

public class TodoDto {
	private Long id;
	private String name;
	private int sequence;
	private String title;
	private String type;
	
	 
	public TodoDto( String title,String name,int sequence) {
		super();
		this.name = name;
		this.sequence = sequence;
		this.title = title;
	}

	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSequence() {
		return sequence;
	}
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "id=" + id + ", name=" + name + ", sequence=" + sequence + ", title=" + title + ", type=" + type;
	}
	
	

}
