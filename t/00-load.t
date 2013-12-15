#!perl
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;
use Test::Exception;

plan tests => 2;

BEGIN {
    use_ok('Alien::Microsoft::Outlook')
      || print "Bail out! (Is Microsoft Outlook installed?)\n";
}

lives_ok( sub { Alien::Microsoft::Outlook::run_or_croak(); },
    "Microsoft Outlook is installed" );

diag(
"Testing Alien::Microsoft::Outlook $Alien::Microsoft::Outlook::VERSION, Perl $], $^X"
);
