package Gigasecond;

use v5.38;
use Time::Piece;
use Exporter qw<import>;
our @EXPORT_OK = qw<add_gigasecond>;

sub add_gigasecond ($time) {
    my $time_format = '%Y-%m-%dT%H:%M:%S';
    $time = Time::Piece->strptime($time, $time_format);
    print "$time\n";
    my $ts = $time->epoch;
    $ts = $ts + 1000000000;
    my $new_time = localtime($ts);
    print "$new_time\n";
    my $new_time_fm = $new_time->strftime($time_format);
    return $new_time_fm;
}
