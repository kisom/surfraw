# $Id$
SUBDIRS		= elvi

bin_SCRIPTS	= surfraw
sysconf_DATA	= surfraw.conf
devel_extra	= banner prebuild
EXTRA_DIST	= surfraw.lsm.in surfraw.in surfraw.spec.in \
                  aclocal.m4 HACKING \
		  $(devel_extra)

htdocs: index.html
	scp index.html surfraw.sourceforge.net:/home/groups/s/su/surfraw/htdocs/index.html
README: index.html
	st=`stty -g`; stty cols 80; lynx -dump $< >$@ || rm -f $@; stty $$st
ftp:
	scp $(PACKAGE)-$(VERSION).tar.gz proff@ftp.netbsd.org:/pub/NetBSD/misc/proff/
#download:
#	ncftpput -F download.sourceforge.net /incoming $(PACKAGE)-$(VERSION).tar.gz
