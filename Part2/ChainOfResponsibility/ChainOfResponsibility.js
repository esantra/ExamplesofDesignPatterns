//see if a letter is contained in a word
//inspired from this simple example:
//http://www.dofactory.com/javascript/chain-of-responsibility-design-pattern
var Request = function(word) {
    this.containerWord = word;
    console.log("Container Word " + word);
}

Request.prototype = {
    isIncluded: function(char) {
        if(this.containerWord.includes(char)){
          console.log(char + ' character included');
        }
        return this;
    }
}

function run() {
    var request = new Request("Spring");
    request.isIncluded('a').isIncluded('b').isIncluded('i').isIncluded('S');
}

run();
