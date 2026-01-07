.PHONY: clean build

build: *.tex
	mkdir -p build
	xelatex -output-directory build -shell-escape main.tex

clean:
	rm -rf build/
