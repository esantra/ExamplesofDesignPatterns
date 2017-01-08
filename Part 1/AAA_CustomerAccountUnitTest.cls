@isTest
private class AAA_CustomerAccountUnitTest {

	@isTest static void testUpdateCustomerAccount() {
		Account acc = new Account(Name = 'Customer Account 0');
		insert acc;

		AAA_CustomerAccount customer = new AAA_CustomerAccount();
		customer.setName('Customer Account 1');
		customer.setId(acc.Id);

		System.assertEquals(1, [SELECT COUNT() FROM Account]);

		AAA_UnitOfWork uow = new AAA_UnitOfWork();
		uow.updateEntity(customer);
		uow.commitEntity();

		System.assertEquals(1, [SELECT COUNT() FROM Account]);
		System.assertEquals('Customer Account 1', [SELECT Id, Name FROM Account].Name);


	}

	@isTest static void testInsertCustomerAccount() {

		AAA_CustomerAccount customer = new AAA_CustomerAccount();
		customer.setName('Customer Account 0');

		System.assertEquals(0, [SELECT COUNT() FROM Account]);

		AAA_UnitOfWork uow = new AAA_UnitOfWork();
		uow.addEntity(customer);
		uow.commitEntity();

		System.assertEquals(1, [SELECT COUNT() FROM Account]);
		System.assertEquals('Customer Account 0', [SELECT Id, Name FROM Account].Name);


	}

}