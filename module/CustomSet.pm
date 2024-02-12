package CustomSet;

use v5.38;
use Moo;

has elements => (
    is => 'ro',

   #coerce => sub {...},
   # If you wish, one way of normalizing your objects
   # e.g. making (elements => [1, 2, 3]) and (elements => [3, 2, 1]) identical
   # would be to use the 'coerce' option: https://metacpan.org/pod/Moo#coerce
);

sub is_empty ($self) {
    return scalar @{$self ->elements} == 0;
}

sub contains ( $self, $element ) {
    foreach my $item (@{$self->elements}) {
        return 1 if ($item == $element);
    }
    return 0;
}

sub is_subset_of ( $self, $other ) {
    return 0 if (scalar @{$self ->elements} < scalar @$other);
    # for my $i ()
    return undef;
}

sub is_disjoint_of ( $self, $other ) {
    return undef;
}

sub is_equal_to ( $self, $other ) {
    print "1 =". join(',',sort @{$self ->elements})."\n";
    print "2 =". join(',', sort @$other)."\n";
    return (join(',',sort @{$self ->elements}) eq join(',', sort @$other)) ? 1 : 0;
}

sub add ( $self, $element ) {
    return undef;
}

sub intersection ( $self, $other ) {
    return undef;
}

sub difference ( $self, $other ) {
    return undef;
}

sub union ( $self, $other ) {
    return undef;
}
