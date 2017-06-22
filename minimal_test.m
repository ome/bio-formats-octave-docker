% Load Bio-Formats
pkg load bioformats

% Check the Bio-Formats version and initialize logging
[s, v] = bfCheckJavaPath()
bfInitLogging('INFO');

test_bfopen('tubhiswt-3D/tubhiswt_C0.ome.tif');

% Increase the debugging verbosity
loci.common.DebugTools.setRootLevel('DEBUG');

test_bfopen('tubhiswt-3D/tubhiswt_C0.ome.tif');
