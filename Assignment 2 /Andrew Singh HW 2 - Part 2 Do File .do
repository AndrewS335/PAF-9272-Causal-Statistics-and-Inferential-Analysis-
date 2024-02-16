log using "/Users/andrew/Desktop/PAF 9272/HW 2/HW_2_Log_File.smcl", replace
use /Users/andrew/Downloads/Italy.dta

*Command for Question 2
describe
sum

*Command for Question 3a - mean age 
mean age 

*Command for Question 3a - sum age to find the standard deviation 
sum age

*Command for Question 3a - standard deviation 
display(17.55414 /sqrt(986))

*Command for Question 3b - find the proportion that took steps to reduce their CO2 emissions (p-hat)
tab reducedCO2

*Command for Question 3b - find the standard error (SE p-hat)
display(sqrt(.6511*(1-.6511)) /sqrt(986))

*Command for Question 3c - proportion of women having difficulty paying their bills
tab gender
tab diffpaybills if female == 1
tab diffpaybills if female == 0

*Command for Question 3c - standard error of women having difficulty paying their bills
display(sqrt(.6076*(1-.6076)) /sqrt(986))

*Command for Question 3c - proportion of men having difficulty paying their bills
tab diffpaybills if gender == 1
display(sqrt(.5971*(1-.5971)) /sqrt(986))

*Command for Question 3d - find the sample size to reduce SE of average age by half

*First step is to find half of the standard error
display(.5590396/2)

*Second step is to square the numerator of the sample mean formula
display(17.55414)^2

*Third step is to square the standard error
display(.2795198)^2

*Fourth step is to divide the squared numerator by the squared standard error
display(308.14783/.07813076)

*Fifth step is to double check the work by plugging all values in to see if we receive the correct half standard error
display(17.55414/sqrt(3944.0014))

*Command for Question 3e - properties of sampling distribution of p-hat
sum reducedCO2

*Command for Question 3e - for the numerator of proportions
display(sqrt(.4768592*(1-.4768592)))

*Command for Question 3e - for the denominator for proportions
display(sqrt(986))

*Command for Question 4a - confidence interval 
ci means age

*Command for Question 4b - confidence interval
ci means age, level(99)

*Command for Question 4c - confidence interval for steps to reduceCO2 emissions 
ci prop reducedCO2 if reducedCO2 == 1, level (90)

*Command for Question 4d - gender having difficulties paying bills
ci proportions diffpaybills if female == 1
ci proportions diffpaybills if female == 0
