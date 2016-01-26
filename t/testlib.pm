use strict;
use warnings;

package
  File::ShareDir;

use File::Spec;

sub dist_dir
{
  File::Spec->rel2abs(File::Spec->catdir("share"));
}

$INC{'File/ShareDir.pm'} = __FILE__;

1;
