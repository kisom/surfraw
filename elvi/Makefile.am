# $Id$
elvidir=$(ELVIDIR)

dist_elvi_SCRIPTS	= \
		  W \
		  alioth \
		  altavista \
		  amazon \
		  archpkg \
		  arxiv \
		  ask \
		  austlii \
		  bbcnews \
		  cddb \
		  cia \
		  cite \
		  cnn \
		  codesearch \
		  ctan \
		  currency \
		  cve \
		  debbugs \
		  debcontents \
		  deblists \
		  deblogs \
		  debpackages \
		  debpts \
		  debsec \
		  debwiki \
		  deja \
		  discogs \
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
		  fsfdir \
		  genpkg \
		  genportage \
		  gutenberg \
		  ixquick \
		  google \
		  happypenguin \
		  imdb \
		  javasun \
		  scpan \
		  slinuxdoc \
		  lastfm \
		  leodict \
		  lsm \
		  musicbrainz \
		  netbsd \
		  openbsd \
		  piratebay \
		  pgpkeys \
		  port \
		  pubmed \
		  rae \
		  rfc \
		  rhyme \
		  scaleplus \
		  scholar \
		  slashdot \
		  sourceforge \
		  stockquote \
		  sunonesearch \
		  thesaurus \
		  translate \
		  w3css \
		  w3html \
		  w3link \
		  w3rdf \
		  wayback \
		  webster \
		  wetandwild \
		  wikipedia \
		  woffle \
		  yahoo \
		  yubnub

if OPENSEARCH
dist_elvi_SCRIPTS	+= opensearch
endif

uninstall-local:
	-rmdir $(DESTDIR)$(PREFIX)/$(ELVIDIR)
