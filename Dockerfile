FROM hansd/base-14.04
MAINTAINER Hans Donner <hans.donner@pobox.com>

# install required packages
# - for tornado: gcc build-essential python-dev
#
RUN apt-get install -y \
       glusterfs-server

# move config
RUN mv /etc/glusterfs /etc/glusterfs.def

# add scripts and install dependencies
ADD scripts /docker/
RUN chmod +x /docker/*

# default entrypoint
ENTRYPOINT ["/docker/start"]


EXPOSE 111 24007 38465 38466 38467 49152 49153 49154 49155 49156 49157 49158 49159
