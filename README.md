Bio-Formats Octave
==================

[![Build Status](https://travis-ci.org/openmicroscopy/bio-formats-octave-docker.svg)](https://travis-ci.org/openmicroscopy/bio-formats-octave-docker)
[![Docker build](https://img.shields.io/docker/build/openmicroscopy/bio-formats-octave.svg)](https://hub.docker.com/r/openmicroscopy/bio-formats-octave)

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
