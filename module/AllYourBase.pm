package AllYourBase;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<rebase>;

my @errors = (
    'input base must be >= 2',
    'output base must be >= 2',
    'all digits must satisfy 0 <= d < input base',
);

sub rebase ( $digits, $input_base, $output_base ) {
    # return undef if $input_base < 2 || $output_base < 2;
    die $errors[0] if $input_base < 2;
    die $errors[1] if $output_base < 2;
    my @arr = @$digits;
    my $dig_ten = 0;
    my $dig_len = @arr;
    my @res = ();

    print "arr = @arr; len = $dig_len; input_base = $input_base; output_base = $output_base\n";
    foreach my $item (@arr){
        die $errors[2] if $item < 0 || $item >= $input_base;
        $dig_len -=1;
        my $multiple = $input_base ** $dig_len;
        $dig_ten += $item * $multiple;
    }
    print "dig_ten = $dig_ten\n";

    if ($dig_ten eq 0) {
        unshift(@res, 0);
        return \@res;
    }
    while ($dig_ten > 0){
        # print "dig_ten in loop = $dig_ten\n";
        my $current_left = $dig_ten % $output_base;
        my $current_dig = ($dig_ten - $current_left) / $output_base;
        unshift(@res, $current_left);
        $dig_ten = $current_dig;
    }
    # print "input = $input_base \noutput = $output_base \nres = @res\n";
    return \@res;
}
