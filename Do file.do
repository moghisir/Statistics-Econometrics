cd /Users/reihaneh/Desktop/Pr8_6Patenting 
infile cusip scientific logcapital  sumpat logrd patents year using ptnty.raw
describe 
summarize 
bysort year: summarize
sort cusip year
xtset cusip year
xtdescribe 

xtsum 

/*isid cusip year 
bysort cusip year: assert _N == 1*/

duplicates report cusip year
duplicates list cusip year
