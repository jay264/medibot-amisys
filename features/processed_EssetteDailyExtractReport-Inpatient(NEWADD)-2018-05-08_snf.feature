Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-08_SNF
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-08_SNF
Given I save the auth class "<auth_class>" to a variable
Given I use "<auth_admission_date>" to determine the start and end dates and authorized days
Given I sign in to the application
When in the "Home" page I click on "Authorizations/Medical Management"
And the test pauses for "3" seconds
And in the "Authorizations Medical Management" page I click on "Certification"
And the test pauses for "10" seconds
And in the "Certification" page I should see the "Initial Date" element
And I press "Control + N"
And in the "certification" page I should see the "red_and_yellow_boxes" image
And the test pauses for "3" seconds
And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
And in the "Certification" page I enter "<member_id>" into the "Member Number" field
And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
And the test pauses for "1" seconds
And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
And the test pauses for "2" seconds
And in the "certification" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I press "Control + S"
And the test pauses for "3" seconds

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image

	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "5" seconds
	And in the "hospital_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds

  And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
  And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "3" seconds

	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And I press "Control + N"
	And the test pauses for "5" seconds
	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "31" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "H" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the SNF auth status "<status>" and the Essette sub class "<sub_class>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<service_code>" into the "proc_number" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page if the "<service_code>" equals R0022 I enter "<final_reimb_amt>" into the "amount_authorized" image and convert the dollar amount
	And the test pauses for "3" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And the test pauses for "3" seconds
	And I press "Control + N"
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And I input the ACO type and payment if any are contained in "<aco_type_and_payment>"
	And I input the EIS AA if any are contained in "<eis_aa>"
	And I input the first SNF assessments if any are contained in "<adm>" "<auth_for_payment>" "<days_used_prior>"
	And I input the second SNF assessments if any are contained in "<dc>" "<denc_date>" "<mds_date>"
	And I input the third SNF assessments if any are contained in "<nomnc_date>" "<total_days>" "<total_skilled_days>"
	And I input the final reimbursement amount if any is contained in "<final_reimb_amt>"
	And I input the drug doses "<add_drug_doses>" and drug reimbursement "<add_drug_reimb>" if they exist
	And I input the discharge date "<dischrg_date>" and final reimbursement amount two "<final_reimb_amt_2>" if they exist
	And I input the per diem level one "<per_diem_lvl_1>" and per diem level two "<per_diem_lvl_2>" and total days "<total_days>" and total per diem "<total_per_diem>" if they exist


	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

		Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 03052018 | 2018-03-05T16:50:49+00:00 |  | 000075784-01 | June | Steen | ALLIANCE PHYSICIANS INC | 907199 | NAYNESH R | PATEL | 1629042155 | SOUTHBROOK HEALTH CARE CENTER INC | 926233 | 1932198710 | SOUTHBROOK HEALTH CARE CENTER INC | 1932198710 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SOUTHBROOK HEALTH CARE CENTER INC | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03022018 | 05032018 | Standard |  |  | 2018-03-02 | Contract/RUG: 17/RVB (Per MDS) = $5,411.86 Pert Diem: $200.00/day x 39 SNF Days = $7,800.00 Total Payment: $13,211.86 | 0 | 2018-05-03 | 2018-04-30 | 2018-05-04 | 2018-05-04 | 59 | 59 | 13211.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306027 | M6281, R2689, S8261XA, Z4889 | Encounter for other specified surgical aftercare | ICD10 | 05082018 | 03022018 | 05032018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 63 | Revenue | RV |  |  |  | 6.0 |
| 04162018 | 2018-04-16T11:34:22+00:00 |  | 000113478-01 | Mendelynn | Fisher | DUDNEY, JERALD | 935969 | JERALD | DUDNEY | 1770669871 | GOOD SHEPHERD VILLAGE | 920229 | 1396862314 | GOOD SHEPHERD VILLAGE | 1396862314 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | GOOD SHEPHERD VILLAGE | 05082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04122018 | 05052018 | Standard |  |  | 2018-04-12 | Contract/RUG: 16/RUB (Per MDS) = $4,429.71 | 19 | 2018-05-05 | 2018-05-02 | 2018-05-03 | 2018-05-02 | 23 | 42 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416063 | M6281, R296 | Repeated falls | ICD10 | 05082018 | 04122018 | 05052018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 24 | RUGS,HHRG | HP |  |  |  | 3.0 |
| 04172018 | 2018-04-17T12:22:26+00:00 |  | 000097635-01 | Blanche | Fowler | CEN OHIO GERIATRICS LLC | 935024 | JOHN M | WEIGAND | 1780624965 | KENDAL AT GRANVILLE | 904333 | 1003974023 | KENDAL AT GRANVILLE | 1003974023 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | KENDAL AT GRANVILLE | 05082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04142018 | 05042018 | Standard |  |  | 2018-04-14 | 16/RUA01= $3214.76 | 0 | 2018-05-04 |  | 2018-05-08 | 2018-05-08 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417096 | I639 | Cerebral infarction, unspecified | ICD10 | 05082018 | 04142018 | 05042018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04182018 | 2018-04-18T14:49:40+00:00 |  | 000069506-01 | ROBERT | JOSEPH | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | CONTINUING HEALTHCARE OF | 952581 | 1356871610 | CONTINUING HEALTHCARE OF GAHANNA LLC | 1356871610 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CONTINUING HEALTHCARE OF GAHANNA LLC | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04162018 | 05042018 | Standard |  |  | 2018-04-16 | 17/RVB01= $5411.86 | 0 | 2018-05-04 |  | 2018-05-08 | 2018-05-08 | 18 | 18 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418067 | M6282, M76822 | Posterior tibial tendinitis, left leg | ICD10 | 05082018 | 04162018 | 05042018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 19 | RUGS,HHRG | HP |  |  |  | 18.0 |
| 03152018 | 2018-03-15T11:22:19+00:00 |  | 000002474-01 | Jean | Crews | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | HEARTLAND OF UPTOWN WEST | 905910 | 1295777530 | HEARTLAND OF UPTOWN WESTERVILLE | 1295777530 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF UPTOWN WESTERVILLE | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03132018 | 04272018 | Standard |  |  | 2018-03-13 | 17/RVB01= $5411.86 21 DAYS @ $200.00= $4200.00 TOTAL: $9611.86 | 0 | 2018-04-27 |  | 2018-05-08 | 2018-05-08 | 41 | 41 | 9611.86 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315033 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 05082018 | 03132018 | 04272018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9611 | 9611 | Approved | 46 | Revenue | RV |  |  |  | 1.0 |
| 03262018 | 2018-03-26T12:42:16+00:00 |  | 000021907-01 | PATRICIA | KREAGER | HEARTLAND OF UPTOWN WEST | 908403 | DANIEL L | MILLER | 1386731263 | CONSOLIDATED RESOURCES H | 905716 | 1578526406 | MAYFAIR VILLAGE NURSING CARE CENTER | 1578526406 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MAYFAIR VILLAGE NURSING CARE CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03232018 | 05072018 | Standard |  |  | 2018-03-23 | 17/RUB01= $5813.99 25 DAYS @ $200.00= $5000.00 TOTAL: $10813.99 | 0 | 2018-05-07 | 2018-05-08 | 2018-05-08 | 2018-05-08 | 45 | 45 | 10813.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326097 | I5031, I160 | HYPERTENSIVE URGENCY | ICD10 | 05082018 | 03232018 | 05072018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 46 | Revenue | RV |  |  |  | 4.0 |
| 04032018 | 2018-04-03T11:51:17+00:00 |  | 000028393-01 | SAMMY | JUNK | HEARTLAND OF CHILLICOTHE | 907783 | DIRK N | JUSCHKA | 1497750137 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 932719 | 1285049403 | SIGNATURE HEALTHCARE OF CHILLICOTHE | 1285049403 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | SIGNATURE HEALTHCARE OF CHILLICOTHE | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03302018 | 05052018 | Standard |  |  | 2018-03-30 | 17/RUC01= $6049.81 16 DAYS @ $200.00= $3200.00 TOTAL: $9249.81 | 25 | 2018-05-05 |  | 2018-05-08 | 2018-05-08 | 36 | 61 | 9249.81 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403057 | M6281, R2681, Z9181 | History of falling | ICD10 | 05082018 | 03302018 | 05052018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 9249 | 9249 | Approved | 37 | Revenue | RV |  |  |  | 2.0 |
| 04062018 | 2018-04-06T11:07:10+00:00 |  | 000000038-01 | GERALD | COE | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | FRIENDSHIP VILLAGE COLS | 939392 | 1730247024 | FRIENDSHIP VILLAGE COLUMBUS | 1730247024 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | FRIENDSHIP VILLAGE COLUMBUS | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04052018 | 04202018 | Standard |  |  | 2018-04-05 | 17/RVB01=$5,411.86 | 0 | 2018-04-20 |  | 2018-05-04 | 2018-05-04 | 15 | 15 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406021 | I10, J189, R531 | Weakness | ICD10 | 05082018 | 04052018 | 04202018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 16 | RUGS,HHRG | HP |  |  |  | 1.0 |
| 04092018 | 2018-04-09T11:46:38+00:00 |  | 000046031-01 | DOROTHY | MCCOY | AHMED, AIJAZ | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MCAULEY CENTER | 922577 | 1780641175 | MERCY MCAULEY CENTER | 1780641175 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MERCY MCAULEY CENTER | 05082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | SNF | Inpatient | 04082018 | 05042018 | Standard |  |  | 2018-04-08 | Contract/RUG: 17/RHA (Per MDS) $2,812.08 Per Diem: $200.00/day x 6 SNF Days = $1,200.00 Total Payment: $4,012.08 | 38 | 2018-05-04 |  | 2018-05-07 | 2018-05-04 | 26 | 64 | 4012.08 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409054 | Z48812 | Encntr for surgical aftcr following surgery on the circ sys | ICD10 | 05082018 | 04082018 | 05042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 04102018 | 2018-04-10T16:08:40+00:00 |  | 000056847-01 | DARRYL | CONKLE | AMERICAN HLTH NETWORK OF | 924337 | RAJNISH K | GUPTA | 1063466795 | WINCHESTER PLACE LEASING | 951359 | 1356881221 | WINCHESTER CARE & REHABILITATION | 1356881221 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | WINCHESTER CARE & REHABILITATION | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04062018 | 04252018 | Standard |  |  | 2018-04-06 | 17/RVA01=$3586.28 | 0 | 2018-04-25 |  | 2018-05-03 | 2018-05-03 | 19 | 19 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411038 | I214, I2510, Z955 | Presence of coronary angioplasty implant and graft | ICD10 | 05082018 | 04062018 | 04252018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 20 | RUGS,HHRG | HP |  |  |  | 6.0 |
| 04112018 | 2018-04-11T10:21:59+00:00 |  | 000027018-01 | Tony | Meeks | CEN OHIO GERIATRICS LLC | 922619 | AMIT R | BHOJRAJ | 1942440276 | HEARTLAND VILLAGE OF WES | 939836 | 1649214933 | HEARTLAND OF WESTERVILLE | 1649214933 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | HEARTLAND OF WESTERVILLE | 05082018 | Approved | Flexible Choice PPO | Fax | SNF | Inpatient | 04092018 | 05042018 | Standard |  |  | 2018-04-09 | 15 DAYS @ $250.00= $3750.00 10 DAYS @ $200.00= $2000.00 TOTAL; $5750.00 | 52 | 2018-05-04 |  | 2018-05-08 | 2018-05-08 | 25 | 77 | 5750.0 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411078 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 05082018 | 04092018 | 05042018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 5750 | 5750 | Approved | 26 | Revenue | RV |  |  |  | 4.0 |
| 04122018 | 2018-04-12T15:30:11+00:00 |  | 000026287-01 | JOAN | MILLIRON | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04102018 | 05062018 | Standard |  |  | 2018-04-10 | 16/RVB01= $3350.20 5 DAYS @ $200.00= $1000.00 TOTAL: $4350.20 | 0 | 2018-05-06 |  | 2018-05-07 | 2018-05-07 | 26 | 26 | 4350.2 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413003 | J111, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 05082018 | 04102018 | 05062018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 4350 | 4350 | Approved | 27 | Revenue | RV |  |  |  | 6.0 |
| 04162018 | 2018-04-16T10:11:26+00:00 |  | 000085448-01 | Robert | Stein | KATULA, DOUGLAS A | 936993 | DOUGLAS A | KATULA | 1982680567 | ARLINGTON COURT NURSING | 939400 | 1174503874 | ARLINGTON COURT NURSING & REHAB | 1174503874 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ARLINGTON COURT NURSING & REHAB | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04122018 | 05022018 | Standard |  |  | 2018-04-12 | 16/RUC01=$7,333.11 | 0 | 2018-05-02 |  | 2018-05-03 | 2018-05-03 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416037 | S72045P | Nondisp fx of base of nk of l femr, 7thP | ICD10 | 05082018 | 04122018 | 05022018 | RUC01 | ULTRA HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 04172018 | 2018-04-17T10:14:22+00:00 |  | 000006260-01 | MABEL | TRITT | CENTRAL OH HSPISTS INC | 908403 | DANIEL L | MILLER | 1386731263 | LAURELS OF NORWORTH | 936521 | 1285689562 | LAURELS OF NORWORTH | 1285689562 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF NORWORTH | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04112018 | 05012018 | Standard |  |  | 2018-04-11 | 17/RVC01=$6,306.19 | 0 | 2018-05-01 |  | 2018-05-04 | 2018-05-04 | 20 | 20 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417076 | F0280, G3183, R627 | Adult failure to thrive | ICD10 | 05082018 | 04112018 | 05012018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 21 | RUGS,HHRG | HP |  |  |  | 7.0 |
| 04172018 | 2018-04-17T14:50:02+00:00 |  | 000023116-01 | CHARLES | HIXON | INTL MED & REHAB CNSLT L | 900504 | THOMAS E | MCELDOWNEY | 1760573810 | LAURELS OF HILLIARD | 913334 | 1528381019 | LAURELS OF HILLIARD | 1528381019 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LAURELS OF HILLIARD | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 03292018 | 04292018 | Standard |  |  | 2018-03-29 | 17/PD1=$2,581.99 PER DIEM RATE OF $200.00/DAY X 6 DAYS=$200.00 TOTAL PAYMENT TO FACILITY=$2,781.99 | 0 | 2018-04-29 |  | 2018-05-02 | 2018-05-02 | 26 | 26 | 2781.99 |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417118 | I509 | Heart failure, unspecified | ICD10 | 05082018 | 03292018 | 04292018 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 2781 | 2781 | Approved Skilled | 32 | Revenue | RV |  |  |  | 2.0 |
| 04182018 | 2018-04-18T14:15:53+00:00 |  | 000101248-01 | James | Key | CLYO INTERNAL MEDICINE | 911103 | KRISTY E | ANDERSON | 1437340304 | OTTERBEIN CLEAR CREEK | 952521 | 1992977516 | OTTERBEIN CLEAR CREEK | 1992977516 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | OTTERBEIN CLEAR CREEK | 05082018 | Approved | MediGold Essential Care | Fax | SNF | Inpatient | 04162018 | 04282018 | Standard |  |  | 2018-04-16 | 17/RVA01= $3586.28 | 0 | 2018-04-28 |  | 2018-05-07 | 2018-04-27 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418053 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 05082018 | 04162018 | 04282018 | RVA01 | VERY HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04202018 | 2018-04-20T10:49:46+00:00 |  | 000030364-01 | CHARLES | BARNHARD | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | PATASKALA OAKS CARE CTR | 936547 | 1134103617 | PATASKALA OAKS CARE CENTER | 1134103617 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | PATASKALA OAKS CARE CENTER | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04182018 | 04302018 | Standard |  |  | 2018-04-18 | 16/RUA01= $3214.76 | 0 | 2018-04-30 |  | 2018-05-07 |  | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420070 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 05082018 | 04182018 | 04302018 | RUA01 | ULTRA HIGH REHAB , ADL INDEX 0-5/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04232018 | 2018-04-23T13:31:33+00:00 |  | 000008551-01 | MARILYNN | LINDAMOOD | FAIRFIELD HLTHCARE PROFS | 908403 | DANIEL L | MILLER | 1386731263 | CONTINUING HEALTHCARE OF | 952581 | 1356871610 | CONTINUING HEALTHCARE OF GAHANNA LLC | 1356871610 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | CONTINUING HEALTHCARE OF GAHANNA LLC | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04192018 | 05012018 | Standard |  |  | 2018-04-19 | 17/RVC01= $6306.19 | 0 | 2018-05-01 |  | 2018-05-08 | 2018-05-08 | 12 | 12 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423060 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 05082018 | 04192018 | 05012018 | RVC01 | VERY HIGH REHAB , ADL INDEX 11-16/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 13 | RUGS,HHRG | HP |  |  |  | 12.0 |
| 04242018 | 2018-04-24T14:52:11+00:00 |  | 000053229-01 | SARA | HELM | MORNING VIEW DELAWARE, I | 936546 |  | MORNING VIEW DELAWARE INC | 1720080997 | MORNING VIEW DELAWARE, I | 936546 | 1720080997 | MORNING VIEW DELAWARE INC | 1720080997 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MORNING VIEW DELAWARE INC | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04212018 | 04302018 | Standard |  |  | 2018-04-21 | 16/RUB01=$4,429.71 | 0 | 2018-04-30 |  | 2018-05-03 | 2018-04-26 | 9 | 9 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424093 | S3210XD | Unsp fracture of sacrum, subs for fx w routn heal | ICD10 | 05082018 | 04212018 | 04302018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 10 | RUGS,HHRG | HP |  |  |  | 9.0 |
| 04262018 | 2018-04-26T14:34:37+00:00 |  | 000010281-01 | MARY | SCHLANGER | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | ALTERCARE OF CANAL WINCH | 907307 | 1184894248 | ALTERCARE OF CANAL WINCHESTER | 1184894248 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | ALTERCARE OF CANAL WINCHESTER | 05082018 | Approved | MediGold Classic Preferred | Fax | SNF | Inpatient | 04252018 | 05022018 | Standard |  |  | 2018-04-25 | 17/RUB01=$5,813.99 | 0 | 2018-05-02 |  | 2018-05-04 |  | 8 | 8 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426055 | N8110 | Cystocele, unspecified | ICD10 | 05082018 | 04252018 | 05022018 | RUB01 | ULTRA HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved Skilled | 8 | RUGS,HHRG | HP |  |  |  | 8.0 |
| 05012018 | 2018-05-01T14:01:08+00:00 |  | 000038820-01 | RICHARD | MANN | GENERAL MEDICAL CNSLT | 936993 | DOUGLAS A | KATULA | 1982680567 | MOTHER ANGELINE MCCRORY | 916665 | 1730243932 | MOTHER ANGELINE MCCRORY MANOR | 1730243932 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | MOTHER ANGELINE MCCRORY MANOR | 05082018 | Approved | MediGold Medical Only | Fax | SNF | Inpatient | 04302018 | 05052018 | Standard |  |  | 2018-04-30 | 17/RVB01= $5411.86 | 0 | 2018-05-05 |  | 2018-05-08 | 2018-05-08 | 5 | 5 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501053 | E662, I10, R296, R29898, R569 | Unspecified convulsions | ICD10 | 05082018 | 04302018 | 05052018 | RVB01 | VERY HIGH REHAB , ADL INDEX 6-10/STAND-ALONE OBRA SCSA OR SCPA OR CCA. | RUGS,HHRG | 1 | 1 | Approved | 6 | RUGS,HHRG | HP |  |  |  | 20.0 |
| 05072018 | 2018-05-07T13:30:56+00:00 |  | 000096487-01 | Rose | Smith | VARNEY, LEROY B | 936105 | LEROY B | VARNEY | 1790756740 | LANFAIR CTR FOR REHAB & | 939399 | 1710959267 | LANFAIR CTR FOR REHAB & NURSING CARE | 1710959267 | Skilled Nursing Facility | SNF | Concurrent Review | CONC |  | LANFAIR CTR FOR REHAB & NURSING CARE | 05082018 | Approved | MediGold Southeast OH Classic Preferred | Fax | SNF | Inpatient | 05052018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508012 | I6910, I69392 | Facial weakness following cerebral infarction | ICD10 | 05082018 | 05052018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
