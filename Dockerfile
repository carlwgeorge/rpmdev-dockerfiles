FROM registry.fedoraproject.org/fedora:26
RUN sed --expression '/tsflags=nodocs/d' --in-place /etc/dnf/dnf.conf
COPY bashrc /root/.bashrc
RUN dnf --assumeyes --setopt=deltarpm=false install \
        bash-completion \
        dnf-utils \
        less \
        procps-ng \
        python2-rpm-macros \
        python3-rpm-macros \
        rpm-sign \
        rpmdevtools \
        rpmlint \
        tree \
        vim-enhanced \
        wget \
        ; dnf clean all
ARG REPODATA=1
RUN dnf makecache
