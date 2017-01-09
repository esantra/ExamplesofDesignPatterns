public with sharing class AAD_ATMFacade {
	/*the purpose of the facade class is to centralize the process for an outside client into one
	class */
	//in reality there would be many, many more classes and processes for an atm machine
    AAD_TakeCard takeCard = new AAD_TakeCard();
    AAD_DispenseMoney dispMoney = new AAD_DispenseMoney();

    //This method takes care of processing all steps in sub systems
    public void processSteps(){
    	takeCard.acceptCard('11111111111111111');
    	dispMoney.dispenseMoney(200.00);
    }
}