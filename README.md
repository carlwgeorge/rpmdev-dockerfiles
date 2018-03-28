# rpmdev-dockerfiles

Dockerfiles for creating utility container images for RPM packagers.

## Build

Dockerfiles for each distro are in separate branches.

* CentOS 6: `docker build --pull --tag rpmdev:el6 'https://github.com/carlwgeorge/rpmdev-dockerfiles.git#el6'`
* CentOS 7: `docker build --pull --tag rpmdev:el7 'https://github.com/carlwgeorge/rpmdev-dockerfiles.git#el7'`
* Fedora 26: `docker build --pull --tag rpmdev:f26 'https://github.com/carlwgeorge/rpmdev-dockerfiles.git#f26'`
* Fedora 27: `docker build --pull --tag rpmdev:f27 'https://github.com/carlwgeorge/rpmdev-dockerfiles.git#f27'`
* Fedora 28: `docker build --pull --tag rpmdev:f28 'https://github.com/carlwgeorge/rpmdev-dockerfiles.git#f28'`
* Fedora 29: `docker build --pull --tag rpmdev:f29 'https://github.com/carlwgeorge/rpmdev-dockerfiles.git#f29'`
