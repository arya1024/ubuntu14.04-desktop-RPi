openssh-server:
  pkg.installed

mdadm:
  pkg.installed

lvm2:
  pkg.installed

libudev-dev:
  pkg.installed

libboost-dev:
  pkg.installed

libboost-thread-dev:
  pkg.installed

smartmontools:
  pkg.installed

wget:
  pkg.installed

flex:
  pkg.installed

make:
  pkg-installed

byacc:
  pkg-installed

libpcap0.8-dev:
  pkg-installed:

tcpflow:
  archive:
    - extracted
    - name: /opt/
    - source: http://www.circlemud.org/pub/jelson/tcpflow/tcpflow-0.21.tar.gz
    - source_hash: md5=45a5aef6f043312315b7f342afc4a9c5
    - archive_format: tar
    - if_missing: /opt/tcpflow-0.21.tar.gz

crosscompiler:
  archive:
    - extracted
    - name: /opt/
    - source: http://wdscnasbuild01.wdc.com:8081/nexus/content/repositories/thirdparty/Linaro/gcc-linaro-arm-linux-gnueabihf/4.7-2013.01-20130125_linux.tar/gcc-linaro-arm-linux-gnueabihf-4.7-2013.01-20130125_linux.tar.bz2
    - source_hash: md5=ef3d79fe559b34bcaa5bf4e04128c995
    - tar_options: j
    - archive_format: tar
    - if_missing: /opt/gcc-linaro-arm-linux-gnueabihf-4.7-2013.01-20130125_linux/

cc_path:
  file.append:
    - name: /home/vagrant/.bashrc
    - text: export PATH=$PATH:/opt/gcc-linaro-arm-linux-gnueabihf-4.7-2013.01-20130125_linux/bin
cc_prefix:
  file.append:
    - name: /home/vagrant/.bashrc
    - text: export CROSS_COMPILE=arm-linux-gnueabihf-
cc_arch:
  file.append:
    - name: /home/vagrant/.bashrc
    - text: export ARCH=arm