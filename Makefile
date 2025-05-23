VERSION = 4.1.1.2025
FILE_DATE = `date +%Y-%m-%d`

clear:
	rm -rf disk
	rm -rf build


bks:
	rm -rf build/bks disk/bks*
	mkdir -p disk
	mkdir -p build/bks

	cp database.bib build/bks/
	cp -r figures build/bks/
	rm build/bks/figures/*.psd

	cp template.tex build/bks/
	cp LZUThesis.cls build/bks/

	cd build && mv bks 本科生_${VERSION}_${FILE_DATE} && zip -r ../disk/bks.zip 本科生_${VERSION}_${FILE_DATE}

	ls -l disk/


yjs:
	rm -rf build/yjs disk/yjs*
	mkdir -p disk
	mkdir -p build/yjs 

	cp database.bib build/yjs/
	cp -r figures build/yjs/
	rm build/yjs/figures/*.psd

	cp template-PgD\&PhD.tex build/yjs/template.tex
	cp LZUThesis-PgD\&PhD.cls build/yjs/

	cd build && mv yjs 研究生_${VERSION}_${FILE_DATE} && zip -r ../disk/yjs.zip 研究生_${VERSION}_${FILE_DATE}

	ls -l disk/


all: clear yjs bks


test: all
	cd build/本科生_${VERSION}_${FILE_DATE} && xelatex template.tex && biber template && xelatex template.tex && xelatex template.tex
	cd build/研究生_${VERSION}_${FILE_DATE} && xelatex template.tex && biber template && xelatex template.tex && xelatex template.tex


push:
	git tag -d 自动打包
	git tag 自动打包
	git push -u origin2 --tags -f
	git push -u origin --tags -f
