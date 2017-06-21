% Load Bio-Formats
pkg load bioformats

[s, v] = bfCheckJavaPath()
bfInitLogging('INFO');

test_bfopen('tubhiswt-3D/tubhiswt_C0.ome.tif');
