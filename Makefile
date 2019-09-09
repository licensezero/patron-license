all: release/LICENSE.md

release/LICENSE.md: LICENSE.md | release
	cat $< | fmt -w60 -u > $@

release:
	mkdir -p $@

.PHONY: clean

clean:
	rm -rf release
