package Sieve;

use v5.38;
use Exporter qw(import);
our @EXPORT_OK = qw(find_primes);

sub find_primes ($limit) {
    return [] if $limit < 2;  # Return an empty array reference if limit is less than 2

    # Initialize all numbers as prime
    my @is_prime = (0, 0, (1) x ($limit - 1));

    for my $num (2 .. sqrt($limit)) {
        next unless $is_prime[$num];  # Skip if $num is already marked as not prime

        # Mark multiples of $num as not prime
        for (my $multiple = $num**2; $multiple <= $limit; $multiple += $num) {
            $is_prime[$multiple] = 0;
        }
    }

    # Extract prime numbers
    my @primes = grep { $is_prime[$_] } 2 .. $limit;

    # Optionally print result
    # print "result = @primes\n";
    
    return \@primes;
}
