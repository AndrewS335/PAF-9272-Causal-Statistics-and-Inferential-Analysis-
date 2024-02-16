log using "/Users/andrew/Desktop/PAF 9272/HW 5/Andrew Singh HW 5 Log File.smcl", replace
use "/Users/andrew/Downloads/twins_data_2023(1).dta"

* Summarize (describe) the data. What are the mean, SD, min and max values of the variables above?
describe
sum myed_bysib age white female educ age_sq hhid ped uncov tenure married nwage_1992 

* c.	Estimate Model 1 by regressing ln_rwage on education and age. Interpret the results (one sentence for each slope coefficient; see comment above for an example of how to interpret the slope of education here). Be careful to use appropriate language (this is observational not experimental data)! Is the relationship between education and wage in the direction that you would expect theoretically (explain briefly)? State the value of R2 and interpret what it means. 

reg ln_rwage educ age

* d.	Estimate Model 2 by adding age_sq to the set of independent variables in Model 1. Is the estimated coefficient on the quadratic age term statistically significantly different from 0? Explain what the empirical form of the relationship between log wages and age is. Does Model 2 fit the data better than Model 1? Explain. 

reg ln_rwage educ age age_sq 

* e. Estimate the same specification as in Model 2 but telling Stata to cluster the Sampling Errors (SEs) by hhid using the "cluster(hhid)" option in the regression command. Call this Model 3! Does the SE clustering make any difference to the coefficients? What about the Sampling Errors (SEs)? Explain why they changed (one or two sentences). Use the cluster (hhid) option for the remainder of the assignment!

reg ln_rwage educ age age_sq, cluster(hhid)

* f. Model 4: Add to the regression from part "e" control variables for female, racial identification, marital status, and union status. Is the coefficient (slope) of education visually different from Model 3? Is it statistically significantly different from Model 3? 

reg ln_rwage educ age age_sq female white married uncov, cluster(hhid)

* g.	A researcher argues that Model 4 is still misspecified because he thinks that the "effect" of education on wages should differ between men and women. Run one more regression, Model 5, to test this hypothesis, using the appropriate interaction term. Is there evidence that the "effect" of education is different between men and women? Explain.   

gen ln_rwage_female = ln_rwage * female
tab ln_rwage_female
reg ln_rwage educ age age_sq female white married uncov ln_rwage_female, cluster(hhid) 

* Model 6: Investigate this further by running a "long regression" (Model 6) that adds the parental education control (as a proxy for family background / SES) to Model 4.  Comment on how the coefficient on education changed and whether that direction is consistent with the researcher's theory in "h" (and your path diagram)! Is this change in the coefficient statistically significant? (Hint: As a rule of thumb, the coefficients differ statistically from each other if one coefficient is outside the 95% CI of the other. If it falls inside the CI then they are not statically significantly different at conventional significance levels!) 

reg ln_rwage educ age age_sq female white married uncov ln_rwage_female ped, cluster(hhid) 

* i. A more sophisticated strategy to reduce (potential) bias from omitted family background/SES characteristics (given appropriate data) is to perform what is called "fixed effects" (FE) regressions (aka "within" models; as discussed in chapter 2 of A&P). In twin data the common (fixed) grouping element is the household/family of origin that the twins share. FE regression uses only the variation (differences) in the data that exists within groups, i.e. in twin data, it identifies "effects" (model coefficients) by only comparing the characteristics of twins to each other (the "between" variation – across individuals from different families of origin – is ignored). By comparing twins to each other only, the FE regression eliminates any Omitted Variable Bias (OVB) due to unobserved variables at the family-of-origin level!

areg ln_rwage educ married, absorb(hhid)

 