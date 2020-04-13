all: view

view: build
	if which xdg-open > /dev/null; \
	then xdg-open main.pdf; \
 	else open main.pdf; \
	fi 

build: main.pdf

main.pdf: ./main.tex ./input/* ./images/*
	latexmk -pdf $<
	
		
clean:
	rm -rf *.aux \
	       *.fdb_latexmk \
	       *.fls \
	       *.log \
	       *.out \
	       *.synctex.gz \
	       *.toc \
	       *.nav \
	       *.snm
