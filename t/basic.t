use strict;
use warnings;
use lib 't';
use testlib;
use Test::More tests => 3;
use Alien::Hunspell::EN::AU;

my $class = 'Alien::Hunspell::EN::AU';

my $dir = $class->dir();
ok -d $dir, "dir = $dir";

my $aff = $class->aff_file;
ok -f $aff, "aff = $aff";

my $dic = $class->dic_file;
ok -f $dic, "dic = $dic";
