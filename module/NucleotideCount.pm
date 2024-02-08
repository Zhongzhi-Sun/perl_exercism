package NucleotideCount;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<count_nucleotides>;
my @errors = (
    'Invalid nucleotide in strand'
);

sub count_nucleotides ($strand) {
    my %Gene = ('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0);
    foreach my $char (split('', $strand)) {
        if (exists($Gene{$char})){
            $Gene{$char} = $Gene{$char} +1;
        }
        else {
            print "err\n";
            die $errors[0];
        }
    }
    print "A = $Gene{'A'}; C = $Gene{'C'}; G = $Gene{'G'}; T = $Gene{'T'};\n";
    return \%Gene;
}
