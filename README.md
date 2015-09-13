kvm-gpu
=======

kvm-gpu provides utilities, init scripts and configuration files to setup a host
system for passthrough of GPUs and other PCIe devices to virtual machines using
the KVM hypervisor.

Building
--------

```
# apt-get install dpkg-dev
$ dpkg-buildpackage -uc -us
```

Built .deb will land in `../`
