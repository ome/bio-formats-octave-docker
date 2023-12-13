Bio-Formats Octave
==================


[![Actions Status](https://github.com/ome/bio-formats-octave-docker/workflows/Build/badge.svg)](https://github.com/ome/bio-formats-octave-docker/actions)

This container contains GNU Octave with the latest Bio-Formats package 
installed.

Usage
-----

The following command:

    docker run --rm -it openmicroscopy/bio-formats-octave

should start an interactive Octave console from which Bio-Formats can be loaded using:

    octave:1>  pkg load bioformats
    octave:1>  bfCheckJavaPath;

References
----------

For more information see
https://docs.openmicroscopy.org/latest/bio-formats/users/octave/index.html
