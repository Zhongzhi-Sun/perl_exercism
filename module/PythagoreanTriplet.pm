package PythagoreanTriplet;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<triplets_with_sum>;

sub triplets_with_sum ($sum) {
    my @pythagorean;
    for my $c (int($sum / 3)+1..$sum-2) {
        for my $b (int(($sum-$c)/2)+1..$sum-$c-1) {
            my $a = $sum - $c - $b;
            if ($a *$a + $b*$b == $c*$c) {
                print "a = $a; b=$b; c=$c\n";
                unshift(@pythagorean, [$a,$b,$c]);
            }
        }
    }
    return \@pythagorean;
}
1;