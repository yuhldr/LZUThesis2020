VERSION = 3.2.1
FILE_DATE = `date +%Y-%m-%d`

clear:
	rm -rf disk
	rm -rf build


bks:
	rm -rf build/bks disk/本科生模板*
	mkdir -p disk
	mkdir -p build/bks

	cp -r bib build/bks/
	cp -r figures build/bks/

	cp template.tex build/bks/
	cp LZUThesis.cls build/bks/

	zip -r disk/本科生模板_${VERSION}_${FILE_DATE}.zip build/bks/

	ls -l disk/


yjs:
	rm -rf build/yjs disk/研究生模板*
	mkdir -p disk
	mkdir -p build/yjs 

	cp -r bib build/yjs/
	rm build/yjs/bib/lzubib.bst
	cp -r figures build/yjs/

	cp template-PgD\&PhD.tex build/yjs/template.tex
	cp LZUThesis-PgD\&PhD.cls build/yjs/

	zip -r disk/研究生模板_${VERSION}_${FILE_DATE}.zip build/yjs/

	ls -l disk/


all: clear yjs bks
