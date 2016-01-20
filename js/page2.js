/**
 * Created by lianxu-admin on 2016/1/19.
 */
require('../scss/page2.scss');

var ShowImage = require('../components/show_image/showImage.jsx');
const React = require('react');
const ReactDOM = require('react-dom');
var $ = require("jquery");

ReactDOM.render(
    <ShowImage></ShowImage>,
    $('#j-show-image')[0]
);