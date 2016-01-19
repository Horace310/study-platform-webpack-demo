require('./snsLogin.scss');

var formHtml = require('../login_form/loginForm.html');

const React = require('react');
const ReactDOM = require('react-dom');
var $ = require('jquery');

var Hello = React.createClass({
    getInitialState: () => {
        return{name:"cqh"}
    },
    doclick: function() {
        this.setState({name: "lulu"})
    },
    render: function() {
        return (
            <h1 onClick={this.doclick}>
                Hello, world! {this.state.name}
                <div dangerouslySetInnerHTML={{__html:formHtml }}></div>
            </h1>
        );
    }
});

ReactDOM.render(
    <Hello></Hello>,
    $('#j-login-form')[0]
);

require('../login_form/loginForm.js');