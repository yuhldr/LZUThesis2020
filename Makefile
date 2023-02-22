VERSION = 3.2.1
FILE_DATE = `date +%Y-%m-%d`

clear:
	rm -rf disk


bks:
	rm -rf disk/bks disk/本科生模板-*
	mkdir -p disk/bks

	cp -r bib disk/bks/
	cp -r figures disk/bks/

	cp template.tex disk/bks/
	cp LZUThesis.cls disk/bks/

	zip -r disk/本科生模板-${VERSION}-${FILE_DATE}.zip disk/bks/



yjs:
	rm -rf disk/yjs disk/研究生模板-*
	mkdir -p disk/yjs 

	cp -r bib disk/yjs/
	rm disk/yjs/bib/lzubib.bst
	cp -r figures disk/yjs/

	cp template-PgD\&PhD.tex disk/yjs/
	cp LZUThesis-PgD\&PhD.cls disk/yjs/

	zip -r disk/研究生模板-${VERSION}-${FILE_DATE}.zip disk/yjs/


all: clear yjs bks
