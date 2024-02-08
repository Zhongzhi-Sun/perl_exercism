package LanguageList;

use v5.38;

our @Languages;

sub add_language ($language) {
    push(@LanguageList::Languages, $language);
}

sub remove_language () {
    pop(@LanguageList::Languages);
}

sub first_language () {
    return $LanguageList::Languages[0];
}

sub last_language () {
    return $LanguageList::Languages[-1];
}

sub get_languages (@elements) {
    my @language_list = ();
    print "input elements = @elements\n";
    foreach my $element (@elements){
        my $language = $LanguageList::Languages[$element-1];
        print "language value = $language\n";
        push(@language_list, $language);
    }
    print "output is = @language_list\n";
    return @language_list;
}

sub has_language ($language) {
    foreach my $element (@LanguageList::Languages){
        if ($element eq $language){
            return 1;
        }
    }
    return 0;
}