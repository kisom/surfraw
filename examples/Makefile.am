noinst_SCRIPTS = uzbl_load_url_from_surfraw
EXTRA_DIST     = README uzbl_load_url_from_surfraw.IN hooks.lua
CLEANFILES     = uzbl_load_url_from_surfraw

uzbl_load_url_from_surfraw: uzbl_load_url_from_surfraw.IN
	-rm -f $@ $@.tmp
	sed -e 's,@AWK\@,${AWK},g;' $? > $@.tmp
	chmod +x $@.tmp
	mv $@.tmp $@

