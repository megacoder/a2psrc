# vim: ts=8 sw=8

A2PSDIR	=${HOME}/.a2ps
SHTDIR	=${A2PSDIR}/sheets

TARGETS	=all install uninstall diff import
TARGET	=all

SUBDIRS	=

SHEETS	:=$(wildcard *.ssh)
MAPS	:=$(wildcard *.map)

.PHONY:	${TARGETS} ${SUBDIRS}

all::	${SHEETS} ${MAPS}

install:: ${SHEETS} ${MAPS}
	install -d ${SHTDIR}
	install -c -m 0644 ${SHEETS} ${MAPS} ${SHTDIR}/

uninstall::
	cd ${SHTDIR} && ${RM} ${SHEETS}

# ${TARGETS}::
# 	${MAKE} TARGET=$@ ${SUBDIRS}
# 
# ${SUBDIRS}::
# 	${MAKE} -C $@ ${TARGET}
