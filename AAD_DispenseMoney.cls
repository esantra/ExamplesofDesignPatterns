public with sharing class AAD_DispenseMoney {
	public AAD_DispenseMoney() {

	}
	public void dispenseMoney(Decimal amountTendered){
		System.debug('Here is ' + amountTendered);
	}
}