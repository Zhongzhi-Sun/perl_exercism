package Strain;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<keep discard>;

sub keep ( $input, $function ) {
    my @res;
    print "@$input\n";
    foreach my $element (@$input) {
        my $sub_res = &$function($element);
        if ($sub_res) {
            push(@res, $element);
        }
    }
    return \@res;
}

sub discard ( $input, $function ) {
    my @res;
    foreach my $element (@$input) {
        my $output = &$function($element);
        unless ($output) {
            push(@res, $element);
        }
    }
    return \@res;
}
