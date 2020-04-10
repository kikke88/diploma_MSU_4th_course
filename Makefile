all: main.pdf

view:
	if which xdg-open > /dev/null; \
	then xdg-open main.pdf; \
 	else open main.pdf; \
	fi 

main.pdf: ./main.tex ./input/* ./images/*
	pdflatex $<
	
		
clean:
	rm -rf *.aux \
	       *.fdb_latexmk \
	       *.fls \
	       *.log \
	       *.out \
	       *.synctex.gz \
	       *.toc
