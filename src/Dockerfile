
# Barebones OS demo
# ref: https://wiki.osdev.org/Bare_Bones
FROM ubuntu

RUN apt-get update

RUN \
      apt-get update &&\
      apt-get install -y git &&\
      apt-get install -y htop &&\
      apt-get install -y vim &&\
#
# os-Dev packages from ref: https://www.youtube.com/watch?v=Qbx2mCM4SgU
# apt-get install -y grub &&\
# virtualbox installs gcc, python3 already
# Note: virtualbox (below) has no equivalent in raspberry pi OS and does
# not appear to be necessary to run the OS emulation
#      apt-get install -y virtualbox &&\
      apt-get install -y xorriso &&\
      apt-get install -y grub-common &&\
      apt-get install -y nasm &&\
      apt-get install -y qemu &&\
      apt-get install -y gcc &&\
      apt-get install -y g++-8-i686-linux-gnu


RUN useradd osdev
RUN mkdir /home/osdevi
RUN export HOME=/home/osdevi

WORKDIR /home/osdevi

# Define default command.
CMD ["bash"]


#### Windows Quickstart Command
# "C:\Program Files\Git\bin\bash.exe" --login -i "C:\Program Files\Docker Toolbox\start.sh"


#### MacOS Quickstart Command
# bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'


# build this: docker build -t osdevi .
# run this: docker run -it osdevi
# mount and run: # mount a directory and then get to bash to do some work.
# docker run -it --mount type=bind,source=$PWD,target=/home/osdevi osdevi

# Alden Hall: running this docker at Alden must have a different source directory due to network configuration 
# docker run -it --mount type=bind,source=/tmp/osdevi,target=/home/osdevi osdevi
