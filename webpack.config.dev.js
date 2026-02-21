const { merge } = require('webpack-merge');
const common = require('./webpack.common.js');

module.exports = merge(common, {
  mode: 'development',
  devtool: 'inline-source-map',
  devServer: {
    liveReload: true,
    hot: true,
    open: true,
    static: ['./'],
  },
  watchOptions: {
    ignored: ['**/node_modules', '**/.git'],
    aggregateTimeout: 300,
    poll: false,
  },
  snapshot: {
    managedPaths: [/^(.+?[\\/]node_modules[\\/])/],
  },
});
