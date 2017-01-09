//Angular provided example
//https://docs.angularjs.org/guide/decorators
/* It is important to look for patterns that may already be implemented
in Angular and other languages
There are two ways to register decorators

$provide.decorator, and
module.decorator
Each provide access to a $delegate, which is the instantiated service/directive/filter, prior to being passed to the service that required it.
*/
angular.module('myApp', [])

.config([ '$provide', function($provide) {

  $provide.decorator('$log', [
    '$delegate',
    function $logDecorator($delegate) {

      var originalWarn = $delegate.warn;
      $delegate.warn = function decoratedWarn(msg) {
        msg = 'Decorated Warn: ' + msg;
        originalWarn.apply($delegate, arguments);
      };

      return $delegate;
    }
  ]);
}]);
