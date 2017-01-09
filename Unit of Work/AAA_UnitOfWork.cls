public class AAA_UnitOfWork{

	private List<AAA_IDBEntity> changedList = new List<AAA_IDBEntity>();
	private List<AAA_IDBEntity> newList = new List<AAA_IDBEntity>();

	public void addEntity(AAA_IDBEntity sObj){
		newList.add(sObj);
	}

	public void updateEntity(AAA_IDBEntity sObj){
		changedList.add(sObj);
	}

	public void commitEntity(){
		try{

			for(AAA_IDBEntity entity : changedList){
				entity.updateRecord();
			}
			for(AAA_IDBEntity entity : newList){
				entity.insertRecord();
			}
		} catch (Exception e){
			throw e;
		}
	}

}