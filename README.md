# omnibus docker

This project intends to ship with out of the box build container images. This enables you to build packages without having all build dependencies installed on your local machine.

# Usage

Run `./build.sh`. This builds all the container and sets the alias for your machine. Currently this packages includes the following operating systems:

- `omnibus-ubuntu` - Ubuntu 14.04
- `omnibus-centos` - CentOS 7

Once its build, just use it with the normal omnibus commands:

```
./build
source ./env.sh'
git clone git@github.com:chef/inspec.git
git checkout chris-rock/omnibus
cd omnibus
omnibus-deb build inspec
```
