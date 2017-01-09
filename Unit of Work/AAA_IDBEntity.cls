public interface AAA_IDBEntity{

	void setId(Id passedId);
	Id getId();
	void setName(String name);
	String getName();
	void setSObjType();
	Schema.SObjectType getSobjType();
	void insertRecord();
	void updateRecord();
	List<AAA_IDBEntity> Load();

}