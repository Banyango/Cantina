const { merge } = require('webpack-merge');
const common = require('./webpack.common.js');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const CopyPlugin = require('copy-webpack-plugin');

module.exports = merge(common, {
  mode: 'production',
  plugins: [
    new HtmlWebpackPlugin({
      template: './index.html',
      minify: false,
    }),
    new HtmlWebpackPlugin({
      template: './components.html',
      filename: 'components.html',
      minify: false,
    }),
    new HtmlWebpackPlugin({
      template: './custom-ralph.html',
      filename: 'custom-ralph.html',
      minify: false,
    }),
    new HtmlWebpackPlugin({
      template: './local-functions.html',
      filename: 'local-functions.html',
      minify: false,
    }),
    new CopyPlugin({
      patterns: [
        { from: 'img', to: 'img' },
        { from: 'css', to: 'css' },
        { from: 'js/vendor', to: 'js/vendor' },
        { from: 'img/icon.png', to: 'icon.png' },
        { from: 'robots.txt', to: 'robots.txt' },
        { from: '404.html', to: '404.html' },
        { from: 'agents-md.html', to: 'agents-md.html' },
        { from: 'site.webmanifest', to: 'site.webmanifest' },
      ],
    }),
  ],
});
