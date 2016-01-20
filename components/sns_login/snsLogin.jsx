require('./snsLogin.scss');

const React = require('react');
const ReactDOM = require('react-dom');
var $ = require('jquery');

var SnsLogin = React.createClass({
    render: function() {
        return (
                <div className="socialBox j-social-box">
                    <a className="j-slink itm0 f-hide"  target="_self"></a>
                    <a className="j-slink itm1 f-hide"  target="_self"></a>
                    <a className="j-slink itm2 f-hide"  target="_self"></a>
                    <a className="j-slink itm3 f-hide"  target="_self"></a>
                    <a className="j-slink itm4 f-hide"  target="_self"></a>
                    <a className="j-slink itm5 f-hide" target="_self"></a>
                </div>
        );
    }
});

module.exports = SnsLogin;
