log using "/Users/andrew/Desktop/PAF 9272/HW_2_Log_File.smcl", replace
use "/Users/andrew/Downloads/PWT_data(1) (1).dta"

*Command for Question 2
describe

* Command for Question 3 
tab countrycode if countrycode == "USA"
tab countrycode if countrycode == "ABW"

*Command for Question 4a - i
twoway (scatter rgdp_pc year if countrycode=="USA")

*Command for Question 4a - iv
pwcorr rgdp_pc year if countrycode=="USA"

*Command for Question 4b - i
twoway (scatter rgdp_pc hc if year==2019)

*Command for Question 4b - iv
pwcorr rgdp_pc hc if year==2019	

*Command for Question 4c - i
twoway (scatter rgdp_pc csh_x if year==2019)

*Command for Question 4c - iv
pwcorr rgdp_pc csh_x if year==2019

*Command for Question 4d - i
twoway (scatter rgdp_pc csh_g if year==2019)

*Command for Question 4d - iv
pwcorr rgdp_pc csh_g if year==2019
