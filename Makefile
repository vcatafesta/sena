SHELL=/bin/bash
DESTDIR=
BINDIR=${DESTDIR}/opt/sena
DOCDIR=${DESTDIR}/opt/sena/doc
INFODIR=${DESTDIR}/usr/share/doc/sena
#MODE=775
MODE=664
DIRMODE=755

.PHONY: build

install:
	@echo "            Sena for Linux"
	@echo ":: Aguarde, instalando software sena em: ${BINDIR}"
	@mkdir -p ${BINDIR}
	@mkdir -p ${DOCDIR}
	@mkdir -p ${INFODIR}
	@install -d -m 1777 ${BINDIR}
	@install -m 4755 sena ${BINDIR}/sena
	@install -m ${MODE} resultadosena.txt ${BINDIR}/resultadosena.txt
	@mkdir -p ${INFODIR}
	@cp Makefile ChangeLog INSTALL LICENSE MAINTAINERS README.md ${DOCDIR}/
	@cp Makefile ChangeLog INSTALL LICENSE MAINTAINERS README.md ${INFODIR}/
	@echo ":: Feito! Sena for Linux software instalado em: ${BINDIR}"
	@echo
	@echo -e "uso:"
	@echo "	cd ${BINDIR}"
	@echo "	./sena"
	@echo ":: Considere colocar no teu path o ${BINDIR}"
	@echo
uninstall:
	@rm ${BINDIR}/sena
	@rm ${BINDIR}/resultadosena.txt
	@rm -fd ${BINDIR}
	@rm -fd ${INFODIR}
	@echo "Sena for Linux foi removido."
