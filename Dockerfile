FROM centos:7
RUN sed --expression '/tsflags=nodocs/d' --in-place /etc/yum.conf
COPY epel.repo /etc/yum.repos.d/epel.repo
COPY epel-testing.repo /etc/yum.repos.d/epel-testing.repo
COPY bashrc-legacy /root/.bashrc
RUN yum --assumeyes install \
        bash-completion \
        bash-completion-extras \
        epel-rpm-macros \
        python2-rpm-macros \
        python3-rpm-macros \
        rpm-sign \
        rpmdevtools \
        rpmlint \
        tree \
        vim-enhanced \
        wget \
        yum-utils \
        ; yum clean all
ARG REPODATA=1
RUN yum makecache
