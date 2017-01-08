public with sharing class AAE_Mozzarella extends AAE_ToppingDecorator{
	/*this example taken from https://github.com/pafnat/Java_Patterns_Tutorial/blob/master/src/com/pafnat/tutorial/patterns/_11_/Decorator/
	which I thought was the best ever and simplest explanation of the decorator pattern.*/

	/* I think you can gather the important concept from these four files only in that for each
	pizza, instead of calculating the full cost and description in each class, with the decorator
	pattern, you can use functions to calculate it for you*/

	public AAE_Mozzarella(AAE_Pizza newPizza){
		super(newPizza);
		System.debug('Adding Dough');
		System.debug('Adding Moz');
	}

	public override String getDescription(){
		return tempPizza.getDescription() + ', Mozzarella';
	}

	public override Double getCost(){
		return tempPizza.getCost() + .50;
	}

}