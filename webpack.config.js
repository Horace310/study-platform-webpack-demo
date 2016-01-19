var webpack = require('webpack');
var CommonsChunkPlugin = require("webpack/lib/optimize/CommonsChunkPlugin");
var HtmlWebpackPlugin = require('html-webpack-plugin');
var OpenBrowserPlugin = require('open-browser-webpack-plugin');

module.exports = {
  entry: {
    index: ['./js/index.js', 'webpack/hot/dev-server', 'webpack-dev-server/client?http://localhost:8080']
  },
  output: {
    path: __dirname + '/build/',
    filename: '[name].bind.js',
    publicPath: '/build/',
    chunkFilename: "[id].chunk.js"
  },
  module: {
    loaders:[
      {
        test: /\.jsx?$/,
        exclude: /node_modules/,
        loader: 'babel',
        query: {
          presets: ['react', 'es2015']
        }
      },{
        test: /\.scss$/,
        loader: 'style-loader!css-loader!sass-loader'
      },{
        test: /\.(png|jpg)$/,
        loader: 'url-loader?limit=8192'
      },{
        test: /\html$/,
        loader: 'html-loader'
      }
    ]
  },
  plugins: [
    new CommonsChunkPlugin('common.js'),
    new webpack.HotModuleReplacementPlugin(),
    new HtmlWebpackPlugin(),
    new OpenBrowserPlugin({
      url: 'http://localhost:8080/build/'
    })

  ],
  externals: {
    //'jquery': 'jQuery'  //require("jquery") => 取全局的jQuery变量
  }
};
