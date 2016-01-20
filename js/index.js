/**
 * Created by lianxu-admin on 2016/1/19.
 */
require('../scss/index.scss');

var TodoMVC = require('../components/todoMVC/todoMVC.js');

var todos = [
    {completed: true, description: "sleep" },
    {completed: false, description: "work" }
]
var app = new TodoMVC({
    data: {todos: todos}
}).$inject("#todoapp")