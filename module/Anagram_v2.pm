package Anagram;

use v5.38;
use Exporter qw(import);
our @EXPORT_OK = qw(match_anagrams);

sub generate_character_frequency_array ($word) {
    my %frequency;
    foreach my $char (split //, lc $word) {
        $frequency{$char}++ if $char =~ /[a-z]/i;
    }
    return \%frequency;
}

sub match_anagrams ($subject, $candidates) {
    my $subject_frequency = generate_character_frequency_array($subject);
    my @result;

    CANDIDATE: foreach my $candidate (@$candidates) {
        next if lc $subject eq lc $candidate; # Skip if the candidate is the subject itself, case-insensitively

        my $candidate_frequency = generate_character_frequency_array($candidate);
        
        # First, check if the two hashes have the same number of keys
        next unless keys %$subject_frequency == keys %$candidate_frequency;
        
        # Compare the frequency hash of the candidate with the subject
        foreach my $letter (keys %$subject_frequency) {
            next CANDIDATE unless exists $candidate_frequency->{$letter} && 
                                  $candidate_frequency->{$letter} == $subject_frequency->{$letter};
        }

        push @result, $candidate;
    }

    return \@result;
}



