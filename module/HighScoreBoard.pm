package HighScoreBoard;

use v5.38;

our %Scores;

sub set_player_scores (%new_scores) {
    # %HighScoreBoard::Scores = %new_scores;
    my @players = keys %new_scores;
    foreach my $player (@players){
        $HighScoreBoard::Scores{$player} = $new_scores{$player};
    }
}

sub get_player_score ($player) {
    my $score = %HighScoreBoard::Scores{$player};
    return $score;
}

sub increase_player_scores (%additional_scores) {
    my @players = keys %additional_scores;
    foreach my $player (@players){
        $HighScoreBoard::Scores{$player} = $HighScoreBoard::Scores{$player} + $additional_scores{$player};
    }
}

sub sort_players_by_name {
    my @players = keys %HighScoreBoard::Scores;
    @players = sort(@players);
    return @players;
}

sub sort_players_by_score {
    my @keys = sort { $HighScoreBoard::Scores{$b} <=> $HighScoreBoard::Scores{$a} } keys(%HighScoreBoard::Scores);
    # foreach my $key (@keys) {
    #     my $val = $HighScoreBoard::Scores{$key};
    #     print "$key: $val\n";
    # }
    print "keys = @keys\n";
    return @keys;
    
}
sub sort_players_by_score_better_solution {
    return sort { $Scores{$b} <=> $Scores{$a} } keys %Scores;
}

sub delete_player ($player) {
    delete $HighScoreBoard::Scores{$player};
}
