# vim: set noet :

all: success

#TEMPDIR := $(shell mktemp -d /var/tmp/rpmbuild.XXXXXXXX)
VERSION = 1.1.5
SHA1 := $(shell git rev-list HEAD | head -1)
REPO := 'personalization-repo.dev.use1.nytimes.com'

success: touchversion
	@echo "success"
	exit 0

fail: touchversion
	@echo "fail"
	exit 1

touchversion:
	@echo "$(VERSION)" > .version

.PHONY: all
