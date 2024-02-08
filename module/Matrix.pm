package Matrix;

use v5.38;
use Moo;

has string => (
    is => 'ro',
);
our $string;

sub init_matrix($self){
    print "mrow\n";
    my @matrix_row = ();
    my @rows = split /\n/, $self->string;
    foreach my $line (@rows) {
        my @row = split /\s+/, $line;
        print "row = @row; len = " . scalar(@row) . "\n";
        push(@matrix_row, \@row);
    }
    # Print the 2D array
    print "==2d array==\n";
    for my $row (@matrix_row) {
        for my $element (@$row) {
            print "$element\t"; # Print each element with a tab separator
        }
        print "\n"; # Move to the next row
    }
    print "==2d array==\n";
    return \@matrix_row;
}

sub row ( $self, $index ) {
    my $matrix = init_matrix($self);
    # my $matrix = $self->init_matrix(); # same as the previous line
    my $selected_row = $matrix->[$index - 1]; # why this way
    return $selected_row;
}

sub column ( $self, $index ) {
    my $matrix = init_matrix($self);
    # my $matrix = $self->init_matrix(); # same as the previous line
    my @selected_column;
    # Transpose the matrix
    my @transposed_matrix;
    for my $row (@$matrix) {
        for my $i (0 .. $# {$row}) { # still confused me
            push(@{$transposed_matrix[$i]}, $row->[$i]);
        }
    }
    my $selected_column = $transposed_matrix[$index - 1];
    return $selected_column;
}
