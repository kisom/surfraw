# $Id$
bin_SCRIPTS	= \
		  alioth \
		  altavista \
		  amazon \
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
