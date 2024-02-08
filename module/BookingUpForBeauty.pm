package BookingUpForBeauty;

use v5.38;

# Suggested datetime modules you can use:
use Time::Piece;
#use DateTime::Tiny;

# Recommended, commented out for portability.
use Readonly;

use Exporter ('import');
our @EXPORT_OK = ('appointment_has_passed', 'is_afternoon_appointment', 'describe_appointment');

my $STRPTIME_FORMAT = '%Y-%m-%d' . 'T' . '%H:%M:%S';
Readonly::Scalar $STRPTIME_FORMAT => $STRPTIME_FORMAT;

# Private subroutines conventionally start with an underscore.
# It isn't necessary, but provided for convenience.
sub _parse_datetime ($date_string) {
    my $time_format = '%Y-%m-%d' . 'T' . '%H:%M:%S';
    my $time = Time::Piece->strptime($date_string, $time_format);
    # print "\nSTRPTIME_FORMAT = $time_format; \n time = $time\n";
    return $time;
}

sub appointment_has_passed ($date_string) {
    my $time = _parse_datetime($date_string);
    my $now = localtime;
    print "\nstr = $date_string; time = $time; now = $now\n";
    if ($now > $time){
        return 1;
    }
    return 0;
}

sub is_afternoon_appointment ($date_string) {
    my $time = _parse_datetime($date_string);
    my $hour_in_day = $time->hour;
    if ($hour_in_day >= 12 && $hour_in_day < 18){
        return 1;
    }
    return 0;
}

sub describe_appointment ($date_string) {
    my $time = _parse_datetime($date_string);
    my $format_date = $time->strftime('%m/%d/%Y');
    my $format_time = $time->strftime('%l:%M %p');
    $format_time =~ s/^\s+//;  # Remove leading whitespace
    print "You have an appointment on $format_date $format_time";
    print "\n";
    print 'You have an appointment on 07/04/2017 8:25 AM';
    print "\n";
    return sprintf("You have an appointment on $format_date $format_time");
}