#!/bin/sh
##################################################################
#                                                                #
# RamDrive                      Version: 1.0                     #
#                                                                #
# Written by: Nergahak                                           #
# Created: 08/12/2015           Last Modified: 08/12/2015        #
#                                                                #
##################################################################
# File System: ext2                                              #
# Size: 512 MB                                                   #
######################################################################

dd if=/dev/zero of=/dev/ram0 bs=1k count=524288
mke2fs -L RamDrive -v -m 0 /dev/ram0 524288
mkdir /media/ramdrive
mount -t ext2 /dev/ram0 /media/ramdrive
chmod -R 777 /media/ramdrive
