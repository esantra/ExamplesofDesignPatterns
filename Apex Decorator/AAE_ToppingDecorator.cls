public abstract class AAE_ToppingDecorator implements AAE_Pizza {
	protected AAE_Pizza tempPizza;
	public AAE_ToppingDecorator() {
	}
	public AAE_ToppingDecorator(AAE_Pizza newPizza) {
		tempPizza = newPizza;
	}
	public virtual String getDescription(){
		return tempPizza.getDescription();
	}
	public virtual Double getCost(){
		return tempPizza.getCost();
	}
}