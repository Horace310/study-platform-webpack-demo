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
        require.ensure(['./showImageMore.js'],function(require){   //showImageMore.js 是 CommonJs模块
            this.setState({src: bigImage})
            var changeColor = require('./showImageMore.js');
            changeColor();
        }.bind(this))

        //require()commonJS 也不会先执行，对commonJS 打包方式不同 this 为null ,也同ensure,会懒加载
       /* require(['./showImageMore.js'],function(changeColor){   //showImageMore.js 是 CommonJs模块
            this.setState({src: bigImage})
            var changeColor = require('./showImageMore.js');
            changeColor();
        }.bind(this));*/

        //require.ensure() 无论什么模块都不执行
        require.ensure(['./showImageMore_AMD.js'],function(require){   //showImageMore_AMD.js 是 AMD模块,
            this.setState({src: bigImage})
            var changeColor = require('./showImageMore_AMD.js');
            changeColor();
        }.bind(this))

        //require()AMD 先执行 this为null,
     /*   require(['./showImageMore_AMD.js'],function(changeColor){   //showImageMore_AMD.js 是 AMD模块
            this.setState({src: bigImage})
            changeColor = require('./showImageMore_AMD.js');
            changeColor();
        }.bind(this))*/
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
