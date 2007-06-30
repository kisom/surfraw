# $Id$
SUBDIRS		= elvi test

dist_bin_SCRIPTS = surfraw surfraw-update-path opensearch-discover opensearch-genquery
sysconf_DATA	= surfraw.conf surfraw.bookmarks
devel_extra	= banner prebuild
noinst_DATA	= surfraw-bash-completion
man_MANS = surfraw-update-path.1 surfraw.1 elvi.1sr opensearch-discover.1 opensearch-genquery.1
EXTRA_DIST	= surfraw.lsm.in surfraw.IN surfraw-update-path.IN\
                  surfraw.spec.in aclocal.m4 HACKING Makefile.include \
				  surfraw.1.IN elvi.1sr.IN surfraw.bookmarks links.IN \
				  debian/README.Debian debian/changelog debian/compat \
				  debian/control debian/copyright \
				  debian/docs debian/linda.overrides \
				  debian/rules debian/surfraw.dirs \
				  $(devel_extra) surfraw-bash-completion.IN surfraw.conf.IN

CLEANFILES = surfraw surfraw-update-path surfraw-update-path.1 surfraw.spec surfraw.lsm \
			surfraw.1 elvi.1sr links surfraw-bash-completion surfraw.conf surfraw.1 \
			elvi.1sr opensearch-discover.1 opensearch-genquery.1

surfraw: surfraw.IN

surfraw.conf: surfraw.conf.IN

surfraw-update-path: surfraw-update-path.IN

surfraw-bash-completion: surfraw-bash-completion.IN

elvi.1sr: elvi.1sr.IN

surfraw.1: surfraw.1.IN

surfraw-update-path.1 opensearch-discover.1 opensearch-genquery.1: %.1: %
	-rm -f $@
	pod2man $< > $@

links: links.IN

include $(top_srcdir)/Makefile.include

install-data-hook: links
	while read target link ;\
	do \
		ln -sf $$target  $(DESTDIR)/$$link ;\
	done < links

test:
	make -C test test

.PHONY: test


#htdocs: index.html
#	scp index.html surfraw.sourceforge.net:/home/groups/s/su/surfraw/htdocs/index.html
#README: index.html
#	st=`stty -g`; stty cols 80; lynx -dump $< >$@ || rm -f $@; stty $$st
#ftp:
#	scp $(PACKAGE)-$(VERSION).tar.gz proff@ftp.netbsd.org:/pub/NetBSD/misc/proff/
#download:
#	ncftpput -F download.sourceforge.net /incoming $(PACKAGE)-$(VERSION).tar.gz
