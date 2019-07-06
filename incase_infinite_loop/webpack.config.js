const webpack = require("webpack");
const HtmlWebpackPlugin = require("html-webpack-plugin"); // 自动生成html的插件

module.exports = {
  mode: "development",
  entry: "./index.js", // 生成代码的入口
  output: {
    filename: "bundle.js" // 生成代码后的东西，总得在dist里面
  },
  devServer: {
    hot: true // 开启热更新
  },
  plugins: [new HtmlWebpackPlugin(), new webpack.HotModuleReplacementPlugin()]
};
