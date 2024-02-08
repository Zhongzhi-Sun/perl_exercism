package Sublist;

use v5.38;
use Exporter qw(import);
our @EXPORT_OK = qw<compare_lists>;

# Simplified and optimized comparison logic
sub is_sublist ($list1, $list2) {
    return 0 if @$list1 > @$list2;  # Early return if list1 is longer than list2
    
    my $len = @$list1;
    return 1 unless $len;  # Empty list is always a sublist
    
    for my $i (0 .. @$list2 - $len) {
        # make list slice to str and compare two str.
        return 1 if (join(',', @$list2[$i .. $i + $len - 1]) eq join(',', @$list1));
    }
    
    return 0;
}

sub compare_lists ($list1, $list2) {
    return "equal" if @$list1 ~~ @$list2;
    return "sublist" if is_sublist($list1, $list2);
    return "superlist" if is_sublist($list2, $list1);
    return "unequal";
}

1; # Ensure the module returns a true value
