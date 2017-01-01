FROM jenkins
USER root
RUN apt-get update
RUN apt-get install sudo
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
RUN gpasswd -a jenkins root
USER jenkins
