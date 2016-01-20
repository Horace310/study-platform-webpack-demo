/**
 * Created by lianxu-admin on 2016/1/19.
 */
require('../scss/page1.scss');
var FormDialog = require('../components/login_dialog/loginDialog.jsx');
const React = require('react');
const ReactDOM = require('react-dom');
var $ = require("jquery");

ReactDOM.render(
    <FormDialog></FormDialog>,
    $('#j-login-form')[0]
);