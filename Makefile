.PHONY: clean gen_diagrams build

build: *.tex
	mkdir -p build
	xelatex -output-directory build -shell-escape main.tex
	xelatex -output-directory build -shell-escape main.tex

partial: *.tex
	mkdir -p build
	xelatex -output-directory build -shell-escape main.tex

gen_diagrams:
	rm -rf images/
	plantuml --charset UTF-8 --format svg --output-dir images/ uml/*.uml
	mv uml/images .

gen_logo:
	mkdir -p build
	magick logo.png -alpha set -channel A -evaluate multiply 0.1 +channel build/logo.png

clean:
	rm -rf build/
	rm -rf images/
