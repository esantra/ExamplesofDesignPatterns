//inspired from the helpful example here:
//http://www.dofactory.com/javascript/strategy-design-pattern
var Shopping = function() {
    this.store = "";
};

Shopping.prototype = {
    setStrategy: function(company) {
        this.store = company;
    },

    calculate: function(item) {
        return this.store.calculate(item);
    }
};

var Sears = function() {
    this.calculate = function(item) {
        // calculations...
        return "$45.95";
    }
};

var Macys = function() {
    this.calculate = function(item) {
        // calculations...
        return "$39.40";
    }
};

var Amazon = function() {
    this.calculate = function(item) {
        // calculations...
        return "$23.20";
    }
};

// log helper

var log = (function() {
    var log = "";

    return {
        add: function(msg) { log += msg + "\n"; },
        show: function() { console.log(log); log = ""; }
    }
})();

function run() {
    var item = { from: "76712", to: "10012", weigth: "lkg" };

    // the 3 strategies

    var sears = new Sears();
    var macys = new Macys();
    var amazon = new Amazon();

    var shopping = new Shopping();

    shopping.setStrategy(sears);
    log.add("Sears Strategy: " + shopping.calculate(item));
    shopping.setStrategy(macys);
    log.add("Macys Strategy: " + shopping.calculate(item));
    shopping.setStrategy(amazon);
    log.add("Amazon Strategy: " + shopping.calculate(item));

    log.show();
}

run();
