FROM jupyter/scipy-notebook

USER root


RUN apt-get update
RUN pip install numpy && pip install atooms && pip install py3Dmol && pip install pymunk



# Playing with FFMPEG / Jupyter
# Install FFMPEG
RUN wget https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz
RUN tar xvfJ ffmpeg-release-amd64-static.tar.xz
USER root
# Note that we don't know exactly which version of ffmpeg will come down.
RUN ln ffmpeg-*-amd64-static/ffmpeg /usr/local/bin/ffmpeg

WORKDIR /home/lab1
RUN git clone https://github.com/marwin1991/Particles-simulation-in-Python
