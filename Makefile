# 
# Makefile
# For rmvim.vim
#
# Create by Wannes Meert on 20/12/11.
#

DIR=rmvim.vim.git
DIST=rmvim.vim
DISTFILESDEFAULT:=\
	LICENSE \
	Makefile \
	README.md \
	plugin/rmvim.vim \
	util/rmvim \
	util/rmvim_listener
DISTFILES:=$(shell echo ${DISTFILESDEFAULT} $$(git ls-tree -r --name-only HEAD 2> /dev/null || echo "") | tr " " "\n" | sort -u)

all:
	@echo "No default action, do 'make help' for more targets."

dist:
	mkdir -p ${DIST}
	@for FILE in ${DISTFILES}; do \
		echo "Copying $$FILE"; \
		mkdir -p ${DIST}/$$(dirname $$FILE); \
		cp  $$FILE ${DIST}/$$(dirname $$FILE)/; \
	done
	tar -czvf ${DIST}.tgz ${DIST}
	rm -rf ${DIST}

clean:
	rm -rf *.tgz
	rm -rf man/*

test:
	@echo "DISTFILES = ${DISTFILES}"

docs:
	mkdir -p man
	perldoc util/rmvim > man/rmvim.1
	perldoc util/rmvim_listener > man/rmvim_listener.1

help:
	@echo "Targets:\n\
	dist    Create archive with all files\n\
	clean   Remove temporary files\n\
	docs    Generate doc files"

