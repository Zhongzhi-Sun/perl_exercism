package Lasagna;

use v5.38;

our $ExpectedMinutesInOven = 40;

sub remaining_minutes_in_oven ($actual_minutes_in_oven) {
    my $remaining_minutes = $Lasagna::ExpectedMinutesInOven - $actual_minutes_in_oven;
    return $remaining_minutes;
}

sub preparation_time_in_minutes ($number_of_layers) {
    my $preparation_time_in_minutes = $number_of_layers * 2;
    return $preparation_time_in_minutes;
}

sub total_time_in_minutes ( $number_of_layers, $actual_minutes_in_oven ) {
    return preparation_time_in_minutes($number_of_layers) + $actual_minutes_in_oven;
}

sub oven_alarm () {
    return "Ding!";
}