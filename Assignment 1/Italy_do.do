log using "/Users/andrew/Desktop/HW1_output_log.smcl", replace
use "/Users/andrew/Downloads/Netherlands(1) (1).dta"

* Command for question 2
describe

* Command for question 2
summarize

* Command for question 3C
tab (female)

* Command for question 3D
tab (reducedCO2)

* Command for question 3E
tab (diffpaybills)

* Command for question 3F
tab (life_satisfaction)

* Command for question 3G
tab life_satisfaction, nolabel

* Command for question 4A
graph pie, over(gender)

* Command for question 4B
graph bar, over(life_satisfaction)

* Command for question 4C
histogram age, frequency

* Command for question 4D
histogram age if female == 1, frequency

* Command for question 5A-5D
tab life_satisfaction gender, col

* Command for question 5E
corr life_satisfaction gender

* Commands for question 6A
gen happy1 = .
replace happy1 = 1 if life == 4
replace happy1 = 1 if life == 3
replace happy1 = 0 if life ==1
replace happy1 = 0 if life ==2

* Command to verify correct value count for new variable happy1 created
tab happy1

* Commands to continue 6A
tab happy1 diffpaybills

* Commands for question 6B
sum age if happy1==1
sum age if happy1==0
