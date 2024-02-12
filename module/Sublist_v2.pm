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

=pod
Consolidated Logic: The judge_superlist and judge_list_eq functions are combined and simplified into a single function is_sublist for clarity. This function checks if the first list is a sublist of the second.

Use of Smart Match Operator (~~): For checking equality of the entire lists, the smart match operator ~~ is used, providing a concise way to compare arrays directly. However, be cautious with the smart match operator as its behavior has been a subject of debate and change in different Perl versions. Ensure it behaves as expected in your environment or consider a manual loop for equality checking if compatibility is a concern.

String Comparison Optimization: The sublist check uses string comparison for segments of the list. This is a simplification and may not be suitable for all data types (e.g., if lists contain complex objects). Adjust based on your specific requirements.

=cut