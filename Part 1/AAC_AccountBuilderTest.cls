@isTest
public class AAC_AccountBuilderTest implements AAC_IAccountBuilder {
	//Define the method signature to be implemented in classes that implements the interface
	//Example method
	private Account acc = new Account();

	@isTest
	public static void testOne(){
		//do nothing
	}

	public void createLead(){
		Lead l = new Lead(LastName='LastName', Company='ABC Company');
		insert l;
	}

	public void createContact(){
		Contact c = new Contact (
			FirstName = 'Contact',
			LastName = 'LastName',
			AccountId = acc.Id,
			Email = 'xyzmail@mail.com'
		);
		insert c;
	}

	public void createAccount(){
		acc.Name = 'My Contact Name';
		insert acc;
	}

	public Account getAccount(){
		return acc;
	}
}