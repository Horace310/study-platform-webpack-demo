require('./todo.scss');

var Regular = require('regularjs');

var Todo = Regular.extend({
    name: "todo",
    template: require('./todo.html')
});

module.exports = Todo;

