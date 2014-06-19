auto kvmbr0
iface kvmbr0 inet dhcp
   pre-up ip tuntap add dev kvmtap0 mode tap group kvm
   pre-up ip link set kvmtap0 up
   bridge_ports eth0 kvmtap0
   bridge_stp off
   bridge_maxwait 0
   bridge_fd      0
   post-down ip link set kvmtap0 down
   post-down ip tuntap del dev kvmtap0 mode tap