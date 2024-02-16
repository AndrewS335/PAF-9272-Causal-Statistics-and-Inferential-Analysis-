log using "/Users/andrew/Desktop/PAF 9272/HW 3/HW 3 Part 1.smcl", replace
use "/Users/andrew/Downloads/PWT_data(1) (2).dta"

* Command for Question 2 
describe

* Command for 4A - i
twoway (scatter rgdp_pc year if countrycode=="USA") (lfit rgdp_pc year if countrycode=="USA") 

*Comamnd for 4A - iii
pwcorr rgdp_pc year if countrycode=="USA", sig

* Command for 4A - v
reg rgdp_pc year if countrycode=="USA" 

* Command for 4A - ix 
 display(707.4913*2030)

* Command for 4A - ix
 display(1436207.3-1367499)

* Command for 4B - i
twoway (scatter rgdp_pc year if countrycode=="ITA") (lfit rgdp_pc year if countrycode=="ITA")

* Command for 4B - iii
pwcorr rgdp_pc year if countrycode=="ITA", sig

* Command for 4B - v
reg rgdp_pc year if countrycode=="ITA" 
