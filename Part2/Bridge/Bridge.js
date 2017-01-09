//important to note that this is a very simple example
//Bridge pattern is introduced after the two classes are present
//in order to bridge the two classes (think two interfaces for larger implementations)
var ClassFruit = function(apple, banana, pear){
  this.apple = apple;
  this.banana = banana;
  this.pear = pear;
}

var ClassVegetables = function(broccoli){
    this.broccoli = broccoli;
}

var BridgeFruitsAndVegetablesClass{
  this.fruits = new ClassFruit(apple, banana, pair);
  this.vegetables = new ClassVegetables(broccoli);
}
