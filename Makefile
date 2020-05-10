all: view

view: build
	if which xdg-open > /dev/null; \
	then xdg-open main.pdf && xdg-open updated_presentation_main.pdf; \
 	else open main.pdf && open updated_presentation_main.pdf; \
	fi

build: main.pdf updated_presentation_main.pdf

main.pdf: ./main.tex ./input/* ./images/*
	latexmk -pdf $<

updated_presentation_main.pdf: ./updated_presentation_main.tex
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

rm_pdf:
	rm -rf *.pdf