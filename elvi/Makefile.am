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
		  cia \
		  cite \
		  cnn \
		  currency \
		  cve \
		  debbugs \
		  debcontents \
		  deblists \
		  deblogs \
		  debpackages \
		  debpts \
		  deja \
		  dmoz \
		  ebay \
		  etym \
		  excite \
		  fast \
		  foldoc \
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
		  rae \
		  rfc \
		  rhyme \
		  slashdot \
		  sundocs \
		  sourceforge \
		  stockquote \
		  scaleplus \
		  sunsolve \
		  thesaurus \
		  translate \
		  w3css \
		  w3html \
		  w3link \
		  w3rdf \
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

