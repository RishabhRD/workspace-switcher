# Copyright (C) 2015 Mark Blakeney. This program is distributed under
# the terms of the GNU General Public License.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or any
# later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# General Public License at <http://www.gnu.org/licenses/> for more
# details.

DOC = README.md

DOCOUT = $(DOC:.md=.html)

all:
	@echo "Type sudo make install|uninstall"

install:
	@./libinput-gestures-setup -d "$(DESTDIR)" install

uninstall:
	@./libinput-gestures-setup -d "$(DESTDIR)" uninstall

check:
	flake8 libinput-gestures internal internal-test
	vermin -i -q -t 3.4 libinput-gestures
	vermin -i -q internal internal-test

doc:	$(DOCOUT)

$(DOCOUT): $(DOC)
	markdown $< >$@

test:
	@./internal-test

clean:
	rm -rf $(DOCOUT)
