all: update
	for x in js/*/Makefile; do \
		make -C `dirname $$x` all; \
	done

update:
	git submodule update --init
