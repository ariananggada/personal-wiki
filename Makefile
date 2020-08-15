PREFIX = ${HOME}

install:
	@echo installing executable file to ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f wiki ${DESTDIR}${PREFIX}/bin
	@cp -f wiki-search ${DESTDIR}${PREFIX}/bin
	@cp -f wiki-tag ${DESTDIR}${PREFIX}/bin
	@cp -f wiki-tag-raw ${DESTDIR}${PREFIX}/bin
	@chmod 755 ${DESTDIR}${PREFIX}/bin/wiki
	@chmod 755 ${DESTDIR}${PREFIX}/bin/wiki-search
	@chmod 755 ${DESTDIR}${PREFIX}/bin/wiki-tag
	@chmod 755 ${DESTDIR}${PREFIX}/bin/wiki-tag-raw

uninstall:
	@echo removing executable file from ${DESTDIR}${PREFIX}/bin
	@rm -f ${DESTDIR}${PREFIX}/bin/wiki
	@rm -f ${DESTDIR}${PREFIX}/bin/wiki-search
	@rm -f ${DESTDIR}${PREFIX}/bin/wiki-tag
	@rm -f ${DESTDIR}${PREFIX}/bin/wiki-tag-raw

.PHONY: install uninstall
