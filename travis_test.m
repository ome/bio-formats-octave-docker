% Load Bio-Formats
pkg load bioformats

% Check the Bio-Formats version and initialize logging
[s, v] = bfCheckJavaPath()
bfInitLogging('INFO');

arg_list = argv();
test_bfopen(arg_list{1});

% Increase the debugging verbosity
javaMethod('setRootLevel', 'loci.common.DebugTools', 'DEBUG');

test_bfopen(arg_list{1});
