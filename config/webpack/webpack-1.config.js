module.exports = {
  mode: 'production',
  entry: './src/index.ts',
  output: {
    filename: 'bundle-$i.js',
  },
  module: {
    rules: [
      {
        test: /\.tsx?$/,
        use: 'ts-loader',
      },
    ],
  },
};
