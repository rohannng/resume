CC = xelatex
PDF_X = rohan_grover_resume_x.pdf
TEX_X = rohan_grover_resume_x.tex
PDF = rohan_grover_resume.pdf
TEX = rohan_grover_resume.tex

default : short x

short: clean_short
	${CC} ${TEX}

x: clean_x
	${CC} ${TEX_X}

clean: clean_short clean_x
	
clean_short:
	rm -f ${PDF}

clean_x:
	rm -f ${PDF_X}