@isTest
public with sharing class AccountBuilderDirectorTest {
	static testMethod void validateState()
	{

		Test.startTest();
		AccountBuilderDirector director = new AccountBuilderDirector();
		Account acc =  director.Construct(new AAC_AccountBuilderTest()) ;
		Test.stopTest();

		System.assertEquals(1, [SELECT count() FROM Lead]);
		System.assertEquals(1, [SELECT count() FROM Contact]);
		System.assertEquals(1, [SELECT count() FROM Account]);
		System.assertEquals('My Contact Name', [SELECT Name FROM Account][0].Name);

	}
}