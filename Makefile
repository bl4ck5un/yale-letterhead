XELATEX = xelatex
FLAGS   = -interaction=nonstopmode

all: template.pdf

template.pdf: template.tex img/yale_newlogo_yaleblue.eps img/signature.png
	$(XELATEX) $(FLAGS) template.tex

clean:
	rm -f template.pdf *.aux *.log *.out *.fls *.fdb_latexmk

.PHONY: all clean
