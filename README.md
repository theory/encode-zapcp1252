Encode/ZapCP1252 version 0.40
=============================

[![CPAN version](https://badge.fury.io/pl/Encode-ZapCP1252.svg)](https://badge.fury.io/pl/Encode-ZapCP1252)
[![Build Status](https://github.com/theory/encode-zapcp1252/workflows/CI/badge.svg)](https://github.com/theory/encode-zapcp1252/actions/)

Have you ever been processing a Web form submit, assuming that the incoming
text was encoded in ISO-8859-1 (Latin-1), only to end up with a bunch of junk
because someone pasted in content from Microsoft Word? Well, this is because
Microsoft uses a superset of the Latin-1 encoding called "Windows Western" or
"CP1252". So mostly things will come out right, but a few things--like curly
quotes, m-dashes, ellipses, and the like--will not. The differences are
well-known; you see a nice chart at documenting the differences on
[Wikipedia](https://en.wikipedia.org/wiki/Windows-1252).

Of course, that won't really help you. So this library's module,
Encode::ZapCP1252, provides subroutines for removing Windows Western Gremlins
from strings, turning them into their appropriate UTF-8 or ASCII
approximations:

    my $clean_latin1 = zap_cp1252 $latin1_text;
    my $fixed_utf8   = fix_cp1252 $utf8_text;

Installation
------------

To install this module, type the following:

    perl Build.PL
    ./Build
    ./Build test
    ./Build install

Or, if you don't have Module::Build installed, type the following:

    perl Makefile.PL
    make
    make test
    make install

Copyright and Licence
---------------------

Copyright (c) 2005-2020 David E. Wheeler. Some Rights Reserved.

This module is free software; you can redistribute it and/or modify it under
the same terms as Perl itself.
