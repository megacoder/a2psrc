# vim: ts=8 sw=8

all:	x.a2psrc

install: x.a2psrc
	install -c x.a2psrc ${HOME}/.a2psrc

uninstall:
	${RM} ${HOME}/.a2psrc

diff:	x.a2psrc ${HOME}/.a2psrc
	diff -uNp x.a2psrc ${HOME}/.a2psrc

import: ${HOME}/.a2psrc
	cp ${HOME}/.a2psrc x.a2psrc
