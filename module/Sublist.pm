package Sublist;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<compare_lists>;

sub judge_superlist($list1, $list2) {
    return 1 if (scalar(@$list2) == 0);
    for my $i (0..$#$list1 - $#$list2){
        return 1 if (judge_list_eq([@{$list1}[$i .. $i + $#$list2]], $list2 ));
    }
    return 0;
}

sub judge_list_eq($list1,$list2) {
    return 1 if (scalar(@$list1) == 0);
    for my $i (0..$#$list1) {
        if (@$list1[$i] != @$list2[$i]) {
            return 0;
        }
    }
    return 1;
}

sub compare_lists ( $list1, $list2 ) {
    my $len_1 = scalar(@$list1);
    my $len_2 = scalar(@$list2);
    if ($len_1 == $len_2){

        return judge_list_eq($list1,$list2) ? "equal" : "unequal";
    }
    elsif ($len_1 > $len_2) {
        return judge_superlist($list1, $list2) ? "superlist" : "unequal";
    }
    else {
        return judge_superlist($list2, $list1) ? "sublist" : "unequal";
    }
}
