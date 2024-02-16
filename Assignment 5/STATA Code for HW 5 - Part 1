log using "/Users/andrew/Desktop/PAF 9272/HW 5/Andrew Singh HW 5 Part 1 Log File.smcl", replace
use "/Users/andrew/Downloads/survey12m_X1 (1).dta"

* 1. Has health insurance (ins_any) 
sum ins_any

* 2. Has a usual place of care (use usual_care to create this dummy variable first) 
tab usual_care_12m
tab usual_care_12m, nolabel
gen usual_care_new1 = .
replace usual_care_new1 = 1 if usual_care_12m == 1
replace usual_care_new1 = 1 if usual_care_12m == 2
replace usual_care_new1 = 1 if usual_care_12m == 3
replace usual_care_new1 = 1 if usual_care_12m == 4
replace usual_care_new1 = 1 if usual_care_12m == 5
replace usual_care_new1 = 1 if usual_care_12m == 6
replace usual_care_new1 = 0 if usual_care_12m == 7
tab usual_care_new1
sum usual_care_new1

* 3. Out-of-pocket medical expenditures (cost_tot_oop)'
sum cost_tot_oop

* 4. Smokes daily (use smk_curr to create this dummy first)
tab smk_curr_12m
tab smk_curr_12m, nolabel
gen smk_currnew1 = .
replace smk_currnew1 = 1 if smk_curr_12m == 1
replace smk_currnew1 = 1 if smk_curr_12m == 2
replace smk_currnew1 = 0 if smk_curr_12m == 3
tab smk_currnew1

* 5. Household income as a percent of the poverty line (hhinc_pctfpl)
sum hhinc_pctfpl

* 6. Had all medical needs met (or had no needs) in past 6 months (needmet_med_cor)
sum needmet_med_cor

* 7. Got all needed prescriptions (or had no needs) in past 6 months (needmet_rx_cor)
sum needmet_rx_cor

* 8. Got all needed dental care (or had no needs) in past 6 months (needmet_dent_cor)
sum needmet_dent_cor

* b. Analyze the 8 outcomes to get ready to answer the questions in "c" below. Specifically, estimate the "intent to treat" (ITT) effect of the OR HIE at 12 months. The ITT estimate is the treatment effect we've been talking and estimating in class and on HW4—the impact of being assigned to the treatment group (invited to enroll in OR Medicaid) rather than the control group (not invited to enroll in OR Medicaid)—and answer the questions below. 
reg treatment ins_any usual_care_new1 cost_tot_oop smk_currnew1 hhinc_pctfpl needmet_med_cor needmet_rx_cor needmet_dent_cor i.numhh_list [aw=weight_12m], cluster(household_id)
