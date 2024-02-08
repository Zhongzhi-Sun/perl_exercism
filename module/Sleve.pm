package Sieve;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<find_primes>;

sub find_primes ($limit) {
    # create an array filled with 1
    my @number_list = ((0,0), map {1} (2..$limit));
    for my $i (2..$limit){
        # i is index and the number
        next if $number_list[$i] == 0;
        my $mult_num = $i;
        for my $j (2..int($limit/2)) {
            # print "loop for $i; this mult is $mult_num\n";
            $mult_num = $i * $j;
            last if $mult_num > $limit;
            $number_list[$mult_num] = 0 if $mult_num <= $limit;
        }
    }
    # print "number_list = @number_list\n";
    my @res;
    foreach my $i (2..$limit) {
        push(@res, $i) if $number_list[$i] == 1;
    }
    print "result = @res\n";
    return \@res;
}
