# $Id$
bin_SCRIPTS	= \
		  alioth \
		  altavista \
		  amazon \
		  appwatch \
		  ask \
		  austlii \
		  bbcnews \
		  britannica \
		  cddb \
		  cite \
		  cnn \
		  currency \
		  debbugs \
		  debcontents \
		  deblists \
		  debpackages \
		  deja \
		  excite \
		  fast \
		  filesearching \
		  freebsd \
		  freedb \
		  ftpfind \
		  ftpsearch \
		  freshmeat \
		  jake \
		  google \
		  happypenguin \
		  imdb \
		  scpan \
		  slinuxdoc \
		  leodict \
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
