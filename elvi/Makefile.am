# $Id$
bin_SCRIPTS	= \
		  altavista \
		  amazon \
		  appwatch \
		  ask \
		  austlii \
		  britannica \
		  cite \
		  cnn \
		  currency \
		  debbugs \
		  debcontents \
		  debpackages \
		  deja \
		  excite \
		  fast \
		  filesearching \
		  freebsd \
		  ftpfind \
		  ftpsearch \
		  freshmeat \
		  jake \
		  google \
		  slinuxdoc \
		  netbsd \
		  openbsd \
		  pubmed \
		  raging \
		  rhyme \
		  slashdot \
		  sundocs \
		  sourceforge \
		  stockquote \
		  scaleplus \
		  sunsolve \
		  swhois \
		  thesaurus \
		  translate \
		  W \
		  webster \
		  wetandwild \
		  woffle \
		  xxx \
		  yahoo
sysconf_DATA	= surfraw_elvi.list

EXTRA_DIST	= $(bin_SCRIPTS)

surfraw_elvi.list: $(bin_SCRIPTS)
	cat $(bin_SCRIPTS)|egrep '^#.*elvis:'|sed 's/^.*elvis: *//'|sort > $@
