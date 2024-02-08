package ETL;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<transform>;

sub transform ($data) {
    my %letter_weight;
    foreach my $point (keys %$data) {
        my $letters = $data->{$point};
        foreach my $letter (@$letters) {
            print "new weight = ".lc $letter." for $point\n";
            $letter_weight{lc $letter} = $point;
        }
    }
    return \%letter_weight;
}
