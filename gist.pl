
### import sth ###

## load perl module in local path

# path is
#         ./module/MyModule.pm
#         ./MyScript.pl
# Inside of MyScript.pl:
use lib 'module';
use MyModule;

## return an error in sub
my @errors = (
    'err 1',
    'err 2',
);

sub func() {
    if ($a){
        die $errors[0];
    }
    return 1;
}


### judge condition ###

## simple if
$variable = $condition ? $value_if_true : $value_if_false;
my $age = 20;
my $is_adult = $age >= 18 ? "Yes" : "No";

## if not condition

unless (condition) {
    # Code to execute if condition is false
}

# else if condition
if (condition1) {
    # Code to execute if condition1 is true
} elsif (condition2) {
    # Code to execute if condition1 is false and condition2 is true
} else {
    # Code to execute if all the above conditions are false
}

## define a bool
my $val = 1 # some bool
if ($val) {
}
if (defined $val) {
}

## if 1 and 2
if (1 && 2) {
}
## if 1 or 2
if (1 || 2) {
}

### loop condition ###

## break a loop
foreach my $item (@array) {
    last if $item == $val;  # Exits the loop when $item is 3
}

## skip to next
# like "continue in python"
foreach my $item (@array) {
    next if $item == $val;  # Exits the loop when $item is 3
}

## Loop Labels for Nested Loops
OUTER: for my $i (1 .. 3) {
    INNER: for my $j (1 .. 3) {
        last OUTER if $i * $j == 4;  # Exits the OUTER loop
    }
}


### calcute ###

## make a floor division
my $result = int($a / $b);

## make power cal
my $result = $a ** $b;


### array ###

my @array = (1, 3, 5, 7, 9);
my $array_ref = \@array;

## get length
my $length_arr = scalar(@array);

## delete an item of a array by index
splice(@array, $index, 1);

## get the max or min value of a array
use List::Util qw(max);
my $max_value = max @array;
my $min_value = min @array;

## get last index

my $last_index = $#array;
$last_index = $#$array_ref;

## iter array

foreach my $item (@array){
}
foreach my $item (@$array_ref){
}
for my $i (0..$#array){
    my $val1 = @array[$i];
    my $val2 = $array_ref->[$i];
}
## get the index and the value while iter a array reference
# like python "for idx, val in enumerate(exp_list):"

while (my ($index, $value) = each @$array_ref) {
    print "$index: $value\n";
}

## judge the length of ref
if (@$array_ref == 4) {
    print "1";
} 

## create an array with self increase

my @array = (1 .. 10);
my @array = map { $_ * 2 + 1 } (0 .. 9);

## create an array filled with some value

my @array = map { 1 } (1 .. 10);
my @array = (1) x 10;

## slice
my @slice = @array[1 .. 3];
@slice = @{$array_ref}[2 .. 4];
my $slice = [@{$array_ref}[2 .. 4]];
## combine two arrays

# Using the array concatenation operator
my @combined = (@array1, @array2);

# Append @array2 to @array1
push(@array1, @array2);

# Append @$array_ref2 to @$array_ref1
push(@$array_ref1, @$array_ref2);


### hash ###

## create a hash ref
my $hash_ref = {};
my $hash_ref2 = {
    key1 => 'value1',
    key2 => 'value2',
};

## get the value by key from a hash referrence
my $value = $hash_ref->{$key};

## Iterate hash
foreach my $key (keys %hash) {
    my $value = $hash{$key};
    print "$key: $value\n";
}

## sort by value in hash
# Sort the hash by values in ascending order
my @sorted_keys = sort { $hash{$a} <=> $hash{$b} } keys %hash;

### matrix ###

## create
my @matrix = (
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
);

## get
my $element = $matrix[1][2]; 

## change
$matrix[0][1] = 10; 

## add row
my @new_row = (11, 12, 13);
push @matrix, \@new_row;
push @matrix, [11, 12, 13];

## iter
foreach my $row (@matrix) {
    foreach my $value (@$row) {
        print "$value ";
    }
    print "\n";
}

## Transpose the matrix
my @transposed_matrix;
for my $row (@$matrix) {
    for my $i (0 .. $#{$row}) {
        push(@{$transposed_matrix[$i]}, $row->[$i]);
    }
}


### time ###

## str -> time
use Time::Piece;
my $date_str = "2021-01-01T00:00:00";
my $time = Time::Piece->strptime($date_str, "%Y-%m-%dT%H:%M:%S");

## time ->  str

my $formatted = $time->strftime('%Y-%m-%d %H:%M:%S');

## time -> ts

my $timestamp = $time->epoch;

## ts -> time
my $time = localtime($timestamp);

## add second to ts
# Convert to Unix timestamp and add ten seconds
$timestamp = timestamp + 10;

## time format keywords

'''
%Y - Year with century
%m - Month (01-12)
%d - Day of the month (01-31)
%H - Hour (00-23)
%M - Minute (00-59)
%S - Second (00-59)
%A - Full weekday name (Sunday, Monday, ...)
%B - Full month name (January, February, ...)
# 12-hour Format with AM/PM
%I - Hour in 12-hour clock format (01 to 12)
%M - Minute (00 to 59)
%S - Second (00 to 59)
%p - AM or PM designation
%k - For a 24-hour format without leading zero in the hour
%l - For a 12-hour format without leading zero in the hour
'''


### string ###

my $string = "    This is a test string\n with leading\n space.";

## iter by char
foreach my $char (split //, $string) {
    print "$char\n";
}

## drop empty head

$string =~ s/^\s+//;  # Remove leading whitespace

'''
s — Indicates a substitution operation.
/^\s+/ — The pattern to match:
^ — Matches the start of the string.
\s+ — Matches one or more whitespace characters (spaces, tabs, etc.).
// — The part after the second slash indicates what to replace the matched pattern 
'''

## split a string
# by newline(\n)
my @lines = split /\n/, $string;
# by whitespace(' ')
my @words = split /\s+/, $string;

## judge equal
if ($string1 eq $string2) {
    print "The strings are equal.\n";
}

if ($string1 ne $string2) {
    print "The strings are not equal.\n";
}

## upper
my $uc_sub = uc $string;
## lower

my $lc_sub = lc $string;

## subtractive two alphabet
my $char_result = ord('b') - ord('a');
