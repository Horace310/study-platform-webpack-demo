require('./showImage.scss');
var smallImage = require('../../res/images/components/show_image/small.png');
var bigImage = require('../../res/images/components/show_image/big.jpg');

const React = require('react');
const ReactDOM = require('react-dom');
require('./showImage.scss')



var ShowImage = React.createClass({
    getInitialState: () => {
        return{src: smallImage}
    },
    doclick: function() {
        require.ensure(['./showImageMore.js'],function(){   //showImageMore.js 是 CommonJs模块
            this.setState({src: bigImage})
            var changeColor = require('./showImageMore.js');
            changeColor();
        }.bind(this))
    },
    render: function() {
        return (
            <div className="outter"  onClick={this.doclick}>
                <h1>
                    点击更新图片
                </h1>
                <img src={this.state.src}/>
            </div>
        );
    }
});

module.exports = ShowImage;
