# $Id$
SUBDIRS		= elvi test

bin_SCRIPTS = surfraw surfraw-update-path
if OPENSEARCH
dist_bin_SCRIPTS = opensearch-discover opensearch-genquery
endif
devel_extra	= banner prebuild
noinst_DATA	= surfraw-bash-completion
man_MANS = surfraw-update-path.1 surfraw.1 elvi.1sr
if OPENSEARCH
man_MANS += opensearch-discover.1 opensearch-genquery.1
endif
EXTRA_DIST	= surfraw.lsm.in surfraw.IN surfraw-update-path.IN\
                  surfraw.spec.in aclocal.m4 HACKING Makefile.include \
		  surfraw.1.IN elvi.1sr.IN surfraw.bookmarks links.IN \
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

install-data-hook: links surfraw.conf
	chmod -x surfraw.conf elvi.1sr surfraw.1
	mkdir -p $(DESTDIR)@sysconfdir@/xdg/surfraw
	cp surfraw.conf $(DESTDIR)@sysconfdir@/xdg/surfraw/conf
	cp surfraw.bookmarks $(DESTDIR)@sysconfdir@/xdg/surfraw/bookmarks
	while read target link ;\
	do \
		ln -sf $$target  $(DESTDIR)/$$link ;\
	done < links
if OPENSEARCH
	ln -sf elvi.1sr.gz $(DESTDIR)/@mandir@/man1/opensearch.1sr.gz
endif
if INSTALLSR
	ln -sf surfraw $(DESTDIR)/@bindir@/sr
	ln -sf surfraw.1.gz $(DESTDIR)/@mandir@/man1/sr.1.gz
endif

uninstall-local: links
	-rm -f $(DESTDIR)@sysconfdir@/xdg/surfraw/conf
	-rm -f $(DESTDIR)@sysconfdir@/xdg/surfraw/bookmarks
	rmdir $(DESTDIR)@sysconfdir@/xdg/surfraw 2>/dev/null
	rmdir $(DESTDIR)@sysconfdir@/xdg 2>/dev/null
	while read target link ;\
	do \
		rm -f $(DESTDIR)/$$link ;\
	done < links
if OPENSEARCH
	rm -f $(DESTDIR)/@mandir@/man1/opensearch.1sr.gz
endif
if INSTALLSR
	rm -f $(DESTDIR)/@bindir@/sr
	rm -f $(DESTDIR)/@mandir@/man1/sr.1.gz
endif


submit-lsm: surfraw.lsm
	mail -s add LSM@qqx.org < $<

test: all
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
