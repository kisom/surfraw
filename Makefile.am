# $Id$
SUBDIRS		= elvi

bin_SCRIPTS	= surfraw surfraw-update-path W
sysconf_DATA	= surfraw.conf surfraw.bookmarks
devel_extra	= banner prebuild
man_MANS = surfraw-update-path.1 surfraw.1 elvi.1sr
EXTRA_DIST	= surfraw.lsm.in surfraw.IN surfraw-update-path.IN\
                  surfraw.spec.in aclocal.m4 HACKING Makefile.include \
				  surfraw.1.in elvi.1sr.in W surfraw.bookmarks links.IN \
				  debian/changelog debian/config debian/control debian/copyright \
				  debian/docs debian/linda.overrides debian/postinst \
				  debian/prerm debian/rules debian/surfraw.dirs debian/templates \
				  debian/po/POTFILES.in debian/po/templates.pot  \
				  $(devel_extra)

CLEANFILES = surfraw surfraw-update-path surfraw-update-path.1 surfraw.spec surfraw.lsm \
			surfraw.1 elvi.1sr links

surfraw: surfraw.IN

surfraw-update-path: surfraw-update-path.IN

surfraw-update-path.1: surfraw-update-path
	-rm -f $@
	pod2man $< > $@

links: links.IN

include $(top_srcdir)/Makefile.include

install-data-hook: links
	while read target link ;\
	do \
		ln -sf $$target  $(DESTDIR)/$$link ;\
	done < links

#htdocs: index.html
#	scp index.html surfraw.sourceforge.net:/home/groups/s/su/surfraw/htdocs/index.html
#README: index.html
#	st=`stty -g`; stty cols 80; lynx -dump $< >$@ || rm -f $@; stty $$st
#ftp:
#	scp $(PACKAGE)-$(VERSION).tar.gz proff@ftp.netbsd.org:/pub/NetBSD/misc/proff/
#download:
#	ncftpput -F download.sourceforge.net /incoming $(PACKAGE)-$(VERSION).tar.gz
