#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56288590:69529e781a602d75ac56153d16161c79164091ee; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51393866:50254e30b28bc5c969a2931754c694c4a945f168 EMMC:/dev/block/bootdevice/by-name/recovery 69529e781a602d75ac56153d16161c79164091ee 56288590 50254e30b28bc5c969a2931754c694c4a945f168:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
