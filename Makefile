VERSION ?= Development Draft

all: release/LICENSE.md

release/LICENSE.md: LICENSE.md | release
	cat $< | fmt -w60 -u | sed "s/VERSION/$(VERSION)/" > $@

release:
	mkdir -p $@

.PHONY: clean

clean:
	rm -rf release
