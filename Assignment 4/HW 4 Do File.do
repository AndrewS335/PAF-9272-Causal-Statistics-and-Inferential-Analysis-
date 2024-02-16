 log using "/Users/andrew/Desktop/PAF 9272/HW 4 /Andrew Singh HW 4 Log File.smcl", replace
use "/Users/andrew/Downloads/survey12m_X1.dta"

* Command for Ai - find how many people in counts #/% in treatment vs control group
tab treatment

* Command for Aii - how many people overall and within each of the two key groups 
tab sample_12m 
tab sample_12m if treatment == 1
tab sample_12m if treatment == 0

* Command for Aiii - response rates overall 
tab in_survey_12m if treatment == 1 
tab in_survey_12m if treatment == 0

* Command for Aiii - hypothesis testing
tab in_survey_12m treatment, chi col

* Command for Bi - self-reported health status in the 12m survey
tab health_gen_12m treatment, col chi

* Command for Bii - generate a new dummy variable 
tab health_gen_12m 
tab health_gen_12m , nolabel
gen good_health = .
replace good_health = 0 if health_gen_12m == 1
replace good_health = 0 if health_gen_12m == 2
replace good_health = 1 if health_gen_12m == 3
replace good_health = 1 if health_gen_12m == 4
replace good_health = 1 if health_gen_12m == 5
tab good_health

* Command for Biii - is self-reported good health differ between the treatment and control group?
ttest good_health_12m, by (treatment)

* Command for Bv - regression equation
reg good_health_12m treatment

* Command for Bi - covariate balance in gender
tab female_12m treatment, chi col

* Command for Bii - covariate balance in birth year
ttest birthyear_12m, by (treatment)

* Command for Biii - covariate balance in race/ethnicity
ttest race_hisp, by (treatment)
ttest race_black_12m, by (treatment)f
ttest race_asian_12m, by (treatment)
ttest race_white_12m, by (treatment)
