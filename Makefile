.PHONY: release

ifndef BUILDDIR
    BUILDDIR := $(shell mktemp -d "$(TMPDIR)/nv.XXXXXX")
endif

release:
	xcodebuild -scheme "Notation Release" -configuration Release -derivedDataPath "$(BUILDDIR)" build
	open "$(BUILDDIR)/Build/Products/Development"

