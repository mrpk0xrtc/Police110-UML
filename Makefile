.PHONY: clean gen_diagrams build

build: *.tex
	mkdir -p build
	xelatex -output-directory build -shell-escape main.tex

gen_diagrams: clean
	plantuml --format svg --output-dir images/ uml/*.uml
	mv uml/images .

clean:
	rm -rf build/
	rm -rf images/
