CC = xelatex
PREFIX = rohan_grover_resume
ROLES = sdm pe
VERSIONS =  "" _x
DT = $(shell date +%Y%m%d)

default : render

render: clean
	for ROLE in ${ROLES};\
	do\
		for VERSION in ${VERSIONS};\
		do\
			${CC} --jobname=${PREFIX}_"$$ROLE""$$VERSION"_${DT} ${PREFIX}_"$$ROLE""$$VERSION".tex;\
		done;\
	done;

clean: 
	for ROLE in ${ROLES};\
	do\
		rm -f ${PREFIX}_"$$ROLE"*.pdf;\
	done;
