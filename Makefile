# vim: set noet :

all: success

#TEMPDIR := $(shell mktemp -d /var/tmp/rpmbuild.XXXXXXXX)
VERSION = 1.1.5
SHA1 := $(shell git rev-list HEAD | head -1)
REPO := 'personalization-repo.dev.use1.nytimes.com'

success: 
	@echo "success"
	exit 0

fail:
	@echo "fail"
	exit 1

.PHONY: all
