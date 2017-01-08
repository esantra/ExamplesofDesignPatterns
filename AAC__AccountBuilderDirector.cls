public with sharing class AccountBuilderDirector {
	public AccountBuilderDirector() {
	}
	/*Builder is mostly concerned with the creation of new objects instead of (like facade)
	interfacing with a new system*/
	public Account Construct(AAC_IAccountBuilder accBuilder){
		accBuilder.createLead();
		accBuilder.createContact();
		accBuilder.createAccount();
		return accBuilder.getAccount();
	}
}