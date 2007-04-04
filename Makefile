# vim: ts=8 sw=8

A2PSDIR	=${HOME}/.a2ps

TARGETS	=all install uninstall diff import
TARGET	=all

SUBDIRS	=sheets

.PHONY:	${TARGETS} ${SUBDIRS}

all::

${TARGETS}::
	${MAKE} TARGET=$@ ${SUBDIRS}

${SUBDIRS}::
	${MAKE} -C $@ ${TARGET}

all::	x.a2psrc

install:: x.a2psrc
	install -d ${A2PSDIR}
	install -c -m 0644 x.a2psrc ${A2PSDIR}/a2psrc

uninstall::
	${RM} ${A2PSDIR}/.a2psrc

diff::	x.a2psrc ${A2PSDIR}/.a2psrc
	diff -uNp x.a2psrc ${A2PSDIR}/a2psrc

import:: ${A2PSDIR}/.a2psrc
	cp ${A2PSDIR}/a2psrc x.a2psrc
