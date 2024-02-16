use "/Users/andrew/Downloads/Netherlands(1) (2).dta"
log using "/Users/andrew/Desktop/PAF 9272/HW 3/HW 3 Part 2.smcl", replace

* Command for Question  1
describe 
sum

* Command for Question 3a to find mean age and sampling (Standard error) of age 
sum age
mean age

* Command for Question 3b to determine a one sample means-comparison test
ttest age == 50

* Command for Question 3c to determine two-sample means comparison t-test
ttest age, by(gender)

* Command for Question 4a - gender having difficulties paying bills
ci proportions diffpaybills if female == 1
ci proportions diffpaybills if female == 0

* Command for Question 4b - cai-squared test 
tab diffpaybills gender, col chi

* Command for Question 5 - marginal and conditional distributions
tab freq_internet_use diffpaybills, col chi

* Command for Question 5f - cai-squared test for internet use differing by financial difficulty paying bills or not
tab  freq_internet_use diffpaybills, col chi
