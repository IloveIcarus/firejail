# Firejail profile for ipcalc
# This file is overwritten after every install/update
quiet
# Persistent local customizations
include ipcalc.local
# Persistent global definitions
include globals.local



include disable-common.inc
include disable-devel.inc
include disable-exec.inc
# include disable-interpreters.inc - using perl
include disable-passwdmgr.inc
include disable-programs.inc
# include disable-shell.inc
include disable-write-mnt.inc
include disable-xdg.inc

# include whitelist-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

# apparmor
caps.drop all
ipc-namespace
# machine-id
net none
netfilter
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
# protocol unix
seccomp
shell none
# tracelog

disable-mnt
private
private-bin bash,sh,perl,ipcalc,ipcalc-ng
# private-cache
private-dev
# empty etc directory
private-etc none
private-lib
private-opt none
private-tmp

dbus-user none
dbus-system none

# memory-deny-write-execute
# read-only ${HOME}
