#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:23171072:b5f614084922e5eb58395c59444cde365fadce1c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23068672:f7a9da80c7be9f4192065d1a190fd642862ba300 EMMC:/dev/block/bootdevice/by-name/recovery b5f614084922e5eb58395c59444cde365fadce1c 23171072 f7a9da80c7be9f4192065d1a190fd642862ba300:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
