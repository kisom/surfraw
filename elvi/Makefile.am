# $Id$
elvidir=$(ELVIDIR)

elvi_SCRIPTS	= \
		  alioth \
		  altavista \
		  amazon \
		  ask \
		  austlii \
		  bbcnews \
		  cddb \
		  cite \
		  cnn \
		  currency \
		  debbugs \
		  debcontents \
		  deblists \
		  debpackages \
		  deja \
		  ebay \
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
		  pgpkeys \
		  pubmed \
		  rfc \
		  rhyme \
		  sharereactor \
		  slashdot \
		  sundocs \
		  sourceforge \
		  stockquote \
		  scaleplus \
		  sunsolve \
		  thesaurus \
		  translate \
		  webster \
		  wetandwild \
		  wikipedia \
		  woffle \
		  xxx \
		  yahoo
sysconf_DATA	= surfraw_elvi.list

EXTRA_DIST	= $(elvi_SCRIPTS)

CLEANFILES = surfraw_elvi.list

surfraw_elvi.list: $(elvi_SCRIPTS)
	cat $(elvi_SCRIPTS)|egrep '^#.*elvis:'|sed 's/^.*elvis: *//'|sort > $@

