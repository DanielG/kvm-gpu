all:
clean:

install:
# kvm-gpu
	mkdir -p $(DESTDIR)/usr/bin
	install -m 755 kvm-gpu $(DESTDIR)/usr/bin

# vfio-bind
	mkdir -p $(DESTDIR)/usr/sbin
	install -m 755 vfio-bind $(DESTDIR)/usr/sbin

# udev
	mkdir -p $(DESTDIR)/lib/udev/rules.d
	install -m 644 50-kvm-gpu-*.rules $(DESTDIR)/lib/udev/rules.d

# ulimits
	mkdir -p $(DESTDIR)/etc/security/limits.d/
	install -m 644 kvm-gpu.conf $(DESTDIR)/etc/security/limits.d/

# examples
	mkdir -p $(DESTDIR)/usr/share/doc/kvm-gpu/examples
	install -m 644 kvmtap.interface.ex $(DESTDIR)/usr/share/doc/kvm-gpu/examples
