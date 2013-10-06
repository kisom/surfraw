SUBDIRS		= elvi test examples

bin_SCRIPTS = surfraw surfraw-update-path
if OPENSEARCH
dist_bin_SCRIPTS = opensearch-discover opensearch-genquery
endif
devel_extra	= banner prebuild
noinst_DATA	= surfraw-bash-completion surfraw.bookmarks
man_MANS = surfraw-update-path.1 surfraw.1 elvi.1sr
if OPENSEARCH
man_MANS += opensearch-discover.1 opensearch-genquery.1
endif

debian_extra = debian/NEWS debian/README.Debian debian/changelog debian/compat debian/control \
				debian/copyright debian/docs debian/postrm debian/rules debian/source/format \
				debian/surfraw-extra.files debian/surfraw-extra.install debian/watch

EXTRA_DIST	= surfraw.lsm.in surfraw.IN surfraw-update-path.IN\
                  surfraw.spec.in aclocal.m4 HACKING  \
		  surfraw.1.IN elvi.1sr.IN surfraw.bookmarks links.IN \
		  surfraw-bash-completion.IN surfraw.conf.IN \
		  $(devel_extra) $(debian_extra)

CLEANFILES = surfraw surfraw-update-path surfraw-update-path.1 surfraw.spec surfraw.lsm \
		surfraw.1 elvi.1sr links surfraw-bash-completion surfraw.conf surfraw.1 \
		elvi.1sr opensearch-discover.1 opensearch-genquery.1

BUILT_SOURCES = surfraw.conf

# we cannot portably combine single suffix rules and separated dependencies
# so we have to explicitly specify all the .IN rules

surfraw: surfraw.IN
	-rm -f $@ $@.tmp
	sed -e 's,@VERSION\@,${VERSION},g; '\
	    -e 's,@ELVIDIR\@,${ELVIDIR},g; '\
	    -e 's,@AWK\@,${AWK},g; '\
	    -e 's,@sysconfdir\@,${sysconfdir},g ' $? > $@.tmp
	chmod +x $@.tmp
	mv $@.tmp $@

surfraw.conf: surfraw.conf.IN
	-rm -f $@ $@.tmp
	sed -e 's,@prefix\@,${prefix},g; '\
	    -e 's,@TEXTBROWSER\@,${TEXTBROWSER},g; '\
	    -e 's,@GRAPHICALBROWSER\@,${GRAPHICALBROWSER},g; ' $? > $@.tmp
	chmod +x $@.tmp
	mv $@.tmp $@

surfraw-update-path: surfraw-update-path.IN
	-rm -f $@ $@.tmp
	sed -e 's,@ELVIDIR\@,${ELVIDIR},g; ' $? > $@.tmp
	chmod +x $@.tmp
	mv $@.tmp $@

surfraw-bash-completion: surfraw-bash-completion.IN
	-rm -f $@ $@.tmp
	sed -e 's,@ELVIDIR\@,${ELVIDIR},g; ' $? > $@.tmp
	chmod +x $@.tmp
	mv $@.tmp $@

elvi.1sr: elvi.1sr.IN
	-rm -f $@ $@.tmp
	sed -e 's,@ELVIDIR\@,${ELVIDIR},g; ' $? > $@.tmp
	chmod +x $@.tmp
	mv $@.tmp $@

surfraw.1: surfraw.1.IN
	-rm -f $@ $@.tmp
	sed -e 's,@ELVIDIR\@,${ELVIDIR},g; '\
	    -e 's,@sysconfdir\@,${sysconfdir},g' $? > $@.tmp
	chmod +x $@.tmp
	mv $@.tmp $@

links: links.IN
	-rm -f $@ $@.tmp
	sed -e 's,@mandir\@,${mandir},g; ' $? > $@.tmp
	chmod +x $@.tmp
	mv $@.tmp $@

surfraw-update-path.1: surfraw-update-path
	-rm -f $@
	pod2man $? > $@

 opensearch-discover.1: opensearch-discover
	-rm -f $@
	pod2man $? > $@

opensearch-genquery.1: opensearch-genquery
	-rm -f $@
	pod2man $? > $@

install-data-hook: links
	chmod -x surfraw.conf elvi.1sr surfraw.1
	mkdir -p $(DESTDIR)@sysconfdir@/xdg/surfraw
	cp surfraw.conf $(DESTDIR)@sysconfdir@/xdg/surfraw/conf
	cp $(top_srcdir)/surfraw.bookmarks $(DESTDIR)@sysconfdir@/xdg/surfraw/bookmarks
	while read target link ;\
	do \
		ln -sf $$target  $(DESTDIR)/$$link ;\
	done < links
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
if INSTALLSR
	rm -f $(DESTDIR)/@bindir@/sr
	rm -f $(DESTDIR)/@mandir@/man1/sr.1.gz
endif


submit-lsm: surfraw.lsm
	mail -s add LSM@qqx.org < $?

test: all surfraw.conf
	make -C test test

.PHONY: test
