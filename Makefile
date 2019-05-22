CC = xelatex
PDF = rohan_grover_resume.pdf
TEX = rohan_grover_resume.tex
PDF_SHORT = rohan_grover_resume_short.pdf
TEX_SHORT = rohan_grover_resume_short.tex

default : short full

short: clean_short
	${CC} ${TEX_SHORT}

full: clean_full
	${CC} ${TEX}

clean: clean_full clean_short
	
clean_full:
	rm -f ${PDF}

clean_short:
	rm -f ${PDF_SHORT}