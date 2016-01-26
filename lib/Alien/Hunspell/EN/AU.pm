package Alien::Hunspell::EN::AU;

use strict;
use warnings;
use File::ShareDir ();
use File::Spec;

# ABSTRACT: Australian English wordlist for Hunspell
# VERSION

=head1 SYNOPSIS

 use Alien::Hunspell::EN::AU;
 use Text::Hunspell; # or Text::Hunspell::FFI
 
 my $class = 'Alien::Hunspell::EN::AU';
 my $speller = Text::Hunspell->new($class->aff_file, $class->dic_file);

=head1 DESCRIPTION

This Alien distribution provides Australian English language word list 
and affix files for use with Hunspell (from Perl with either 
L<Text::Hunspell> or L<Text::Hunspell::FFI>.  It may also be useful for 
other applications.

=head1 FUNCTIONS

=head2 aff_file

 my $aff_file = Alien::Hunspell::EN::AU->aff_file;

Returns the full path to the affix file.

=head2 dic_file

 my $dic_file = Alien::Hunspell::EN::AU->dic_file;

Returns the full path to the "dictionary" word list file.

=head2 dir

 my $dir = Alien::Hunspell::EN::AU->dir;

Return the directory that contains the world list files.

=cut

sub aff_file
{
  File::Spec->catfile(__PACKAGE__->dir, 'en-AU.aff');
}

sub dic_file
{
  File::Spec->catfile(__PACKAGE__->dir, 'en-AU.dic');
}

sub dir
{
  File::Spec->catdir(
    File::ShareDir::dist_dir('Alien-Hunspell-EN-AU'),
    'dictionaries'
  );
}

1;
