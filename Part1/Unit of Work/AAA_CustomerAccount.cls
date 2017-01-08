public class AAA_CustomerAccount implements AAA_IDBEntity{

	/*** Amanda Fouts
	you can see from here that this class could be implemented for an sObject really
	what counts is that  you could add millions of objects and insert them all at once really
	for this, you would have to use sobject types, etc. but this file is just a super simple
	example that outlines the concepts of the unit of work design pattern
	You might want to implement this to hold a list of sObjects that might be inserted at the
	end of a long line of triggers, for example*/

	private Id accId;
	private String accountName;

	public void setId(Id accountId){
		accId = accountId;
	}
	public Id getId(){
		return accId;
	}
	public void setName(String name){
		accountName = name;
	}
	public String getName(){
		return accountName;
	}
	public void setSObjType(){}
	public Schema.SObjectType getSObjType(){
		return Account.getSobjectType();
	}
	public void insertRecord(){
		Account acc = new Account();
		acc.Name = getName();
		insert acc;

	}
	public void updateRecord(){
		Id recId = getId();
		try{
			Account acc = new Account();
			acc.Id = getId();
			acc.Name = getName();
			update acc;
		} catch (Exception e){
			throw e;
		}
	}
	public List<AAA_IDBEntity> Load(){
		List<AAA_IDBEntity> entitiesList = new List<AAA_IDBEntity>();
		return entitiesList;
	}

}