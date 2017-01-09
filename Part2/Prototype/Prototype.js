/* Inspired from: http://www.dofactory.com/javascript/prototype-design-pattern
It is important to note that every JS object has a prototype and the prototype*/
function AnimalPrototype(proto) {
    this.proto = proto;

    this.clone = function () {
        var animal = new Animal();
        animal.feet = proto.feet;
        animal.tail = proto.tail;
        animal.fin = proto.fin;

        return animal;
    };
}

function Animal(feet, tail, fin) {

    this.feet = feet;
    this.tail = tail;
    this.fin = fin;

    this.setAnimalProperties = function () {
        console.log('feet ' + this.feet);
        console.log('tail ' + this.tail);
        console.log('fin ' + this.fin);
    };
}

function run() {

    var proto = new Animal(4, true, false);
    var prototype = new AnimalPrototype(proto);
    var animal = prototype.clone();
    animal.setAnimalProperties();
}

run();
