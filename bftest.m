% Load Bio-Formats
pkg load bioformats

[s, v] = bfCheckJavaPath()
bfInitLogging('INFO');

r = bfGetReader('test.fake');
r.close();
