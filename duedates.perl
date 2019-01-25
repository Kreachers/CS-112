#!/usr/bin/perl
# $Id: duedates.perl,v 1.3 2016-09-30 16:29:51-07 - - $

use HTTP::Date qw (str2time);
use POSIX qw (strftime);

$time = str2time "2016-10-10 12:00:00";
for $asg (1..4) {
   $date = strftime "%a %b %d", localtime $time;
   print ". $date. ASG $asg DUE.\n";
   $time += 24 * 3600 * 17;
}
