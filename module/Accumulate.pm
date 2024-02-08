package Accumulate;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<accumulate>;

sub accumulate ( $list, $func ) {
    my @res;
    foreach my $item (@$list) {
        my $new_element = &$func($item);
        push(@res, $new_element);
    }
    return \@res;
}
