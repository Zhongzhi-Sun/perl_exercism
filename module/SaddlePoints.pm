package SaddlePoints;

use v5.38;
use List::Util qw(min);
use Exporter qw<import>;
# use feature 'say';
our @EXPORT_OK = qw<saddle_points>;
sub get_max_index_and_value ($arr) {
    my @max_idx = (0);
    my @max_val = ($arr->[0]);
    for my $index (1..$#$arr) {
        if ($arr->[$index] > $max_val[0]){
            @max_idx = ($index);
            @max_val = ($arr->[$index]);
        }
        elsif ($arr->[$index] == $max_val[0]) {
            push(@max_idx,$index);
            push(@max_val,$arr->[$index]);
        }
    }
    return (\@max_idx,\@max_val);

}
sub get_col_by_idx($idx, $matrix) {
    my @col;
    foreach my $row (@$matrix) {
        push(@col, $row->[$idx]);
    }
    return \@col;
}
sub saddle_points ($matrix) {
    return [] if (@$matrix == 0);
    my @res;
    while (my ($row_idx, $row_val) = each @$matrix) {
        return [] if (@$row_val == 0);
        # say "$index: $value";
        my ($col_idxs, $max_vals) = get_max_index_and_value($row_val);
        for my $i (0..$#$col_idxs) {
            # print "idx = $col_idxs->[$i]; val = $max_vals->[$i]\n";
            my $col = get_col_by_idx($col_idxs->[$i], $matrix);
            if ($max_vals->[$i] == min @$col) {
                print "col= $col_idxs->[$i]; row=$row_idx;\n";
                push(@res, {column=>$col_idxs->[$i]+1, row=>$row_idx+1});
            }
        }

    }
    return \@res;
}
1;