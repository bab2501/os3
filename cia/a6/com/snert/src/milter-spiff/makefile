#
# milter-spiff 0.16
#
# Copyright 2004, 2012 by Anthony Howe. All rights reserved.
#
# makefile.  Generated from makefile.in by configure.
#
# $OpenBSD$
#

.POSIX :

MILTER 		= milter-spiff
VERSION		= 0.16

########################################################################
### Pick one that best suits your system.
########################################################################

RUN_USER	= milter
RUN_GROUP	= milter
SENDMAIL_DIR	= /etc/mail
prefix		= /usr/local
exec_prefix	= ${prefix}
PROGRAM		= @milter_executable@

########################################################################
### No further configuration beyond this point.
########################################################################

.SUFFIXES :
A = .a
O = .o
E = 

#
# Paths for supporting headers and libraries.
#
top_srcdir	= .
abs_top_srcdir 	= .
SNERT_TARDIR	= ../../../..
SNERT_INCDIR	= ../../include
SNERT_LIBDIR	= ../../lib

TARFILE	= ${MILTER}-${VERSION}.tar.gz

CC		:= gcc
CC_E		:= -o
CC_O		:= -o
TAR_I		:= -T

ARCHIVE		:= ${AR} rc ${LIB} $$obj
COMPILE		:= ${CC} ${CFLAGS} ${CC_O} $*$O -c $<
RANLIB		:= ranlib
MD5SUM		:= md5sum
AUTOCONF	:= autoconf

MILTER_BUILD	:= `cat BUILD_ID.TXT`

CFLAGS		:=  -I/home/ablaauwgeers/os3/cia/a6/org/sqlite/include -I/usr/include   -O2 -Wall -Wno-unused-function -Wno-char-subscripts -m64 -I${top_srcdir}/../../include
LDFLAGS		:=  -L/home/ablaauwgeers/os3/cia/a6/org/sqlite/lib -L/usr/lib/   -L${top_srcdir}/../../lib
LIBS		:=  -lsnert  -lpthread -lmilter -lpthread -lsqlite3 -ldb -lpthread -lpthread

#######################################################################

.MAIN: build

build : ${MILTER}
	@echo
	@echo '***************************************************************'
	@echo Build ${VERSION}.${MILTER_BUILD} DONE
	@echo '***************************************************************'
	@echo

clean:
	-rm -f *.o ${MILTER} *.exe ${MILTER}.cf
	@echo
	@echo '***************************************************************'
	@echo Clean DONE
	@echo '***************************************************************'
	@echo

distclean: clean
	@echo '---------------------------------------------------------------'
	-rm -f ${MILTER} ${MILTER}.md5 *.o *.obj *.tds *.log *.exe *.core
	-rm -f sample.mc startup.sh install.sh config.h makefile
	-rm -rf autom4te.cache config.status config.log configure.lineno
	@echo
	@echo '***************************************************************'
	@echo Distribution Clean `pwd` DONE
	@echo '***************************************************************'
	@echo

strip: build
	strip ${MILTER}

next-id:
	expr `cat BUILD_ID.TXT` + 1 >BUILD_ID.TXT

${MILTER}: BUILD_ID.TXT $(SNERT) ${MILTER}.c
	$(CC) -DMILTER_BUILD=$(MILTER_BUILD) -DMILTER_BUILD_STRING='"'$(MILTER_BUILD)'"' \
	$(CFLAGS) $(LDFLAGS) -D_BUILT="\"`date +'%a, %d %b %Y %H:%M:%S %z'`\"" -o ${MILTER} ${MILTER}.c $(LIBS)

start:
	./${MILTER}

stop:
	-./${MILTER} -quit

restart:
	-./${MILTER} -restart

install: ${MILTER} install.sh
	@sh install.sh

install.sh: install.sh.in config.status

config.status: configure
	./configure

configure: aclocal.m4 configure.in
	${AUTOCONF} -f

manual.shtml: manual.shtml.in
	./config.status manual.shtml

list:
	tar -ztf $(SNERT_TARDIR)/$(TARFILE)

pack: next-id tar

tar: MANIFEST.TXT configure manual.shtml
	-rm -rf $(SNERT_TARDIR)/$(TARFILE) ${MILTER}.md5 autom4te.cache configure.lineno
	echo '${VERSION}.'`cat BUILD_ID.TXT` >VERSION.TXT
	echo '${MILTER}-${VERSION}.tar.gz' >FILE.TXT
	tar -C ${SNERT_TARDIR} ${TAR_I} MANIFEST.TXT -zcf ${SNERT_TARDIR}/${TARFILE}
	@echo
	@echo '***************************************************************'
	@cd ${SNERT_TARDIR}; ${MD5SUM} ${TARFILE} | tee com/snert/src/${MILTER}/${MILTER}.md5
	@echo '***************************************************************'
	@cd $(SNERT_TARDIR); wc -c $(TARFILE)
	@echo '***************************************************************'
	@echo

