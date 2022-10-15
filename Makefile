CC = xelatex
PREFIX = rohan_grover_resume

default : short x

short: clean_short
	for ROLE in sdm pe;\
	do\
		${CC} ${PREFIX}_"$$ROLE".tex;\
	done;

x: clean_x
	for ROLE in sdm pe;\
	do\
		${CC} ${PREFIX}_"$$ROLE"_x.tex;\
	done;

clean: clean_short clean_x
	
clean_short:
	for ROLE in sdm pe;\
	do\
		rm -f ${PREFIX}_"$$ROLE".pdf;\
	done;

clean_x:
	for ROLE in sdm pe;\
	do\
		rm -f ${PREFIX}_"$$ROLE"_x.pdf;\
	done;