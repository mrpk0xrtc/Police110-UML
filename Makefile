build: main.tex
	mkdir -p build
	xelatex -output-directory build -shell-escape main.tex
