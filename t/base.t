#!/usr/bin/perl -w

# $Id: base.t 1930 2005-08-08 15:58:16Z theory $

use strict;
use Test::More tests => 4;

BEGIN { use_ok 'Encode::ZapCP1252' or die; }

can_ok 'Encode::ZapCP1252', 'zap_cp1252';
can_ok __PACKAGE__, 'zap_cp1252';

my $fix_me = join ' ', map { chr } 0x80, 0x82 .. 0x8c, 0x8e, 0x91 .. 0x9c, 0x9e, 0x9f;
my $ascii  = q{e , f ,, ... + ++ ^ % S < OE Z ' ' " " * - -- ~ (tm) s > oe z Y};

zap_cp1252 $fix_me;
is $fix_me, $ascii, 'Convert to ascii';
