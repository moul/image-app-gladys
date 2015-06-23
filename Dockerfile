## -*- docker-image-name: "armbuild/scw-app-gladys:latest" -*-
FROM armbuild/scw-app-nodejs:latest
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get update \
 && apt-get install -y -q \
    build-essential \
    git \
    libasound2-dev \
 && apt-get clean

RUN git clone https://github.com/GladysProject/Gladys.git gladys
RUN cd gladys && npm install


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
