FROM openmicroscopy/octave:0.1.0
MAINTAINER ome-devel@lists.openmicroscopy.org.uk

ARG VERSION=5.5.2

USER root
RUN apt-get update && apt-get install -y wget unzip

USER octave
RUN wget downloads.openmicroscopy.org/bio-formats/$VERSION/artifacts/bioformats-octave-$VERSION.tar.gz
RUN wget downloads.openmicroscopy.org/bio-formats/$VERSION/artifacts/bioformats_package.jar
RUN echo "/home/octave/bioformats_package.jar" >> /home/octave/javaclasspath.txt


RUN echo "pkg install bioformats-octave-$VERSION.tar.gz" | octave

RUN wget --user-agent docker https://downloads.openmicroscopy.org/images/OME-TIFF/2016-06/tubhiswt-3D.zip
RUN unzip tubhiswt-3D.zip
ADD *.m /home/octave/
