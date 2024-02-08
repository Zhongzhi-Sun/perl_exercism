package Anagram;

use v5.38;

use Exporter qw<import>;
our @EXPORT_OK = qw<match_anagrams>;

sub arrays_equal ($array1_ref, $array2_ref) {
    # my ($array1_ref, $array2_ref) = @_;

    # Check if the arrays have the same number of elements
    return 0 unless @$array1_ref == @$array2_ref;

    # Check if each element of the arrays is equal
    for my $i (0 .. $#$array1_ref) {
        return 0 unless $array1_ref->[$i] eq $array2_ref->[$i];
    }

    # If both conditions are true, the arrays are equal
    return 1;
}

sub gene_array_by_word ($word) {
    my @char_dict;
    for my $i (0..25) {
        $char_dict[$i] = 0;
    }
    foreach my $char (split //, $word) {

        my $char_order = ord($char) - ord('A');
        # print "$char; $char_order\n";
        if ($char_order >=0 && $char_order <26) {
            $char_dict[$char_order] += 1;
        }
    }
    return \@char_dict;
}

sub match_anagrams ( $subject, $candidates ) {
    my $lc_sub = lc $subject;
    my $sub_arr = gene_array_by_word($lc_sub);
    # print "subarr = @$sub_arr\n";
    my @res;
    foreach my $word (@$candidates) {
        my $uc_word = lc $word;
        if ($lc_sub ne $uc_word) {
            # print "word uc = $uc_word\n";
            my $word_arr = gene_array_by_word($uc_word);
            # print "wordarr = @$word_arr\n";
            my $arr_eq = arrays_equal($sub_arr,$word_arr);
            if ($arr_eq eq 1) {
                # print "$lc_sub; $uc_word; $arr_eq\n";
                push(@res, $word);
            }
        }
    }
    print "final result = @res\n";
    return \@res;
}
