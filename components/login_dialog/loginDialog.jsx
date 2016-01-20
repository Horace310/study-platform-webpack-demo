require('./loginDialog.scss');

var loginForm = require('../login_form/loginForm.html');
var loginFormFun = require('../login_form/loginForm.js');

var SnsLogin =  require('../sns_login/snsLogin.jsx');

const React = require('react');
const ReactDOM = require('react-dom');
var $ = require('jquery');

var LoginDialog = React.createClass({
    getInitialState: () => {
        return{name:"网易"}
    },
    doclick: function() {
        this.setState({name: "云课堂"})
    },
    render: function() {
        return (
            <div className="dialog-outter" onClick={this.doclick}>
                <h2>你好，{this.state.name}!</h2>
                <div className="login-dialog">
                    <div className="left">
                        <div dangerouslySetInnerHTML={{__html:loginForm }}></div>
                    </div>
                    <div className="middle"></div>
                    <div className="right">
                        <SnsLogin></SnsLogin>
                    </div>
                </div>
            </div>
        );
    },
    componentDidMout: function(){
        loginFormFun()
    }
});


module.exports = LoginDialog;



