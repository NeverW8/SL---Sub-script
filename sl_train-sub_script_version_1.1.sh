#NOTE
#
# This script is made by me (TheHotBot)
# Use it however you want.
# It is not finished yet!
#
# ALSO!
# You will need "Links" and "toilet" to get this to work
#


Version 1.1

#!/bin/bash
while clear; do

toilet -f mono9 --metal SL Sub

date

echo "--------------------------"

OUT1=`links -dump -codepage iso-8859-1 "http://mobilrt.sl.se/?tt=METRO&ls=&SiteId=9302&name=S2lzdGEgY2VudHJ1bSAoU3RvY2tob2xtKQ%3d%3d"|tail -n +8|egrep -ve 'IMG|s.kning|2011|Kontakt|Start|mobil|Realtidsinformation|G*ller endast buss|Upp$|*kning|Du har valt'`

  echo "$OUT1" | perl -ne '
 if (/((?:.+)\s+)(\d+)(\s+min.*)$/) {
  %ctable = (
    map(($_ => "1;31"), 1..3),
    map(($_ => 31),     4..7),
    map(($_ => 33),     8..10),
    map(($_ => 32),     11..15),
  );

  $ctime = $ctable{$2} || 34;

  print "$1\033[${ctime}m$2$3\033[m\n";
 }
 else {
  print;
 }
 '

echo "--------------------------"

sleep 30
done