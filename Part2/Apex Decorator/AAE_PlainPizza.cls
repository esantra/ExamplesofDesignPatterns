public with sharing class AAE_PlainPizza implements AAE_Pizza{
	/*this example taken from https://github.com/pafnat/Java_Patterns_Tutorial/blob/master/src/com/pafnat/tutorial/patterns/_11_/Decorator/
	which I thought was the best ever and simplest explanation of the decorator pattern.*/
	public String getDescription(){
		return 'Thin Dough';
	}
	public Double getCost(){
		return 4.00;
	}
}