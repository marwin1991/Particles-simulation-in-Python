FROM andrewosh/binder-base
#FROM binder-project/binder:binder/images/base/Dockerfile

USER root


RUN apt-get update
RUN pip install numpy && pip install atooms && pip install py3Dmol && pip install pymunk



# Playing with FFMPEG / Jupyter
# Install FFMPEG
RUN wget http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz
RUN tar xvfJ ffmpeg-release-64bit-static.tar.xz
USER root
# Note that we don't know exactly which version of ffmpeg will come down.
RUN ln ffmpeg-*-64bit-static/ffmpeg /usr/local/bin/ffmpeg
