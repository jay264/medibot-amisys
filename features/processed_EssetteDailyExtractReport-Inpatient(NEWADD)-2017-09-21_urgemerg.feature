Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-21_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-21_URGEMERG
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

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
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
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
	And the test pauses for "3" seconds
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
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 09012017 | 2017-09-01T16:53:05+00:00 |  | 000019463-01 | ROSEMARY | HUNTER | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905012 | T8454XD, T84023D | Instability of internal left knee prosthesis, subs encntr | ICD10 | 09212017 | 09192017 | 09212017 | 27580 | ARTHRODESIS KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09112017 | 2017-09-11T15:29:49+00:00 |  | 000057687-01 | LOWELL | BROWN | NEEL RAYA MD INC | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09102017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912059 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 09212017 | 09102017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09152017 | 2017-09-15T14:20:11+00:00 |  | 000066672-01 | Ruth | Gorrell | SIX COUNTY INC | 902464 | MUKESH R | RANGWANI | 1912072646 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09142017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915073 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 09212017 | 09142017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09132017 | 2017-09-13T09:45:32+00:00 |  | 000003398-01 | JOHN | TIMMONS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09132017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913017 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09212017 | 09132017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09182017 | 2017-09-18T07:34:36+00:00 |  | 000043343-01 | JACK | DODRILL | OSU INTERNAL MED LLC | 922918 | MARWAN M | MOHAMMAD | 1649400649 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918033 | I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 09212017 | 09152017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09152017 | 2017-09-15T13:14:52+00:00 |  | 000093576-01 | William | Molen | ALLIANCE PHYSICIANS INC | 912636 | SHITAL | PEMA | 1780640995 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09142017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918035 | M14672 | Charcot's joint, left ankle and foot | ICD10 | 09212017 | 09142017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09202017 | 2017-09-20T09:33:24+00:00 | 251486667262 | 000045949-01 | ISAAC | CLAYPOOL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09192017 | 09212017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920026 | J159 | Unspecified bacterial pneumonia | ICD10 | 09212017 | 09192017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08112017 | 2017-08-11T17:15:28+00:00 |  | 000051987-01 | PATRICIA | STREBER | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08112017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814054 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 09212017 | 08112017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 27.0 |
| 09192017 | 2017-09-19T14:21:56+00:00 |  | 000102367-01 | Robin | Smart | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09212017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920023 | I214, R079 | Chest pain, unspecified | ICD10 | 09212017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09192017 | 2017-09-19T10:01:50+00:00 |  | 000033098-01 | GEORGE | GRIFFITH | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920007 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09212017 | 09192017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09122017 | 2017-09-12T08:27:34+00:00 |  | 000080875-01 | Jacqueline | Trick | SWEST INPATIENT PHYS LLC | 935461 | PARMINDER | MODGIL | 1528166816 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913037 | A419 | Sepsis, unspecified organism | ICD10 | 09212017 | 09112017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09182017 | 2017-09-18T09:51:52+00:00 |  | 000106701-01 | Janice | Conkle | GENESIS MEDICAL GRP LLC | 924971 | NATALIYA | LIBER | 1295003721 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09212017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09152017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918101 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 09212017 | 09152017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08292017 | 2017-08-29T10:30:13+00:00 |  | 000112407-01 | Cathy | Carr | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829043 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09212017 | 09202017 | 09212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09182017 | 2017-09-18T12:24:26+00:00 |  | 000105873-01 | Leah | Martin | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09212017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919110 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 09212017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09182017 | 2017-09-18T10:13:20+00:00 |  | 000080932-01 | Nellie | Rutledge | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09162017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919003 | R509 | Fever, unspecified | ICD10 | 09212017 | 09162017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08152017 | 2017-08-15T11:29:54+00:00 |  | 000075871-01 | Paul | Robinson | ALLIANCE PHYSICIANS INC | 901100 | THOMAS J | MERLE | 1730187469 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09072017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815042 | I2510, I359 | Nonrheumatic aortic valve disorder, unspecified | ICD10 | 09212017 | 09072017 | 09112017 | 33533, 33405 | REPLACEMENT AORTIC VALVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 09192017 | 2017-09-19T10:56:04+00:00 |  | 000087382-01 | Nancy | Stanley | ALLIANCE PHYSICIANS INC | 908147 | ZIWAR F | KARABATAK | 1831172329 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920002 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 09212017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T13:03:03+00:00 |  | 000047707-01 | ELIZABETH | PELHAM | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829063 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09212017 | 09192017 | 09212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07252017 | 2017-07-25T15:16:46+00:00 |  | 000099023-01 | Joyce | Moore | GOOD SAMARITAN HSP & HLT | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07242017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725095 | I639 | Cerebral infarction, unspecified | ICD10 | 09212017 | 07242017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 45.0 |
| 09202017 | 2017-09-20T13:15:05+00:00 |  | 000029886-01 | CAROLINE | TURNER | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09212017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09212017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170920084 | T07 | Unspecified multiple injuries | ICD10 | 09212017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09112017 | 2017-09-11T13:12:28+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 931047 | DAVID M | HARRIS | 1265604524 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 09212017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 09092017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912043 | R739 | Hyperglycemia, unspecified | ICD10 | 09212017 | 09092017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08302017 | 2017-08-30T15:07:45+00:00 |  | 000112964-01 | Claudette | Wheeler | ALLIANCE PHYSICIANS INC | 901100 | THOMAS J | MERLE | 1730187469 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830085 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 09212017 | 09052017 | 09112017 | 32505, 39200 | EX MEDIASTINAL CYST-BENIGN TUMOR | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 09182017 | 2017-09-18T08:26:56+00:00 |  | 000108051-01 | Ruth | Enlow | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918003 | I4891 | Unspecified atrial fibrillation | ICD10 | 09212017 | 09152017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08312017 | 2017-08-31T12:15:20+00:00 |  | 000113685-01 | Lisa | Bowman | ANIL H JHANGIANI MD LLC | 936971 | ANIL | JHANGIANI | 1114922515 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08302017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831044 | I509 | Heart failure, unspecified | ICD10 | 09212017 | 08302017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09182017 | 2017-09-18T08:09:35+00:00 |  | 000013730-01 | WAVELENE | STUMP | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09172017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918061 | I509 | Heart failure, unspecified | ICD10 | 09212017 | 09172017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T10:19:44+00:00 |  | 000081944-01 | RAYMOND | LEIENDECKER | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828069 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09212017 | 09192017 | 09202017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08292017 | 2017-08-29T15:49:39+00:00 |  | 000080805-01 | Judy | Thomas | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830002 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09212017 | 09202017 | 09212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09032017 | 2017-09-03T10:30:58+00:00 |  | 000109535-01 | Gerald | Marratta | ALLIANCE PHYSICIANS INC | 922669 | CHRISTINA R | ANSLINGER | 1831310606 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09012017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905070 | I471 | Supraventricular tachycardia | ICD10 | 09212017 | 09012017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09082017 | 2017-09-08T10:21:56+00:00 |  | 000010445-01 | ALLEN | BERRY | OSU SURGERY LLC | 914209 | SHERIF R | ABDEL-MISIH | 1255501250 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914077 | C258, C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 09212017 | 09152017 | 09202017 | 47120, 76998 | ULTRASONIC GUIDANCE INTRAOPERATIVE | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 09112017 | 2017-09-11T15:16:48+00:00 |  | 000091145-01 | Mary | Perry | SOUND INPATIENT PHYS OF | 930150 | SWATHI | DATLA | 1013222603 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09082017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912053 | R55 | Syncope and collapse | ICD10 | 09212017 | 09082017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09152017 | 2017-09-15T08:30:57+00:00 | 250476967257 | 000097505-01 | Robert | Haslett | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09142017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915008 | N179 | Acute kidney failure, unspecified | ICD10 | 09212017 | 09142017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07242017 | 2017-07-24T14:24:45+00:00 |  | 000079578-01 | Martha | Brown | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07212017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725063 | D649 | Anemia, unspecified | ICD10 | 09212017 | 07212017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 46.0 |
| 09182017 | 2017-09-18T10:23:19+00:00 |  | 000110641-01 | Ruth | Jones | MEDICINE INPATIENT GROUP | 910711 | CHIRAG A | SHAH | 1043274772 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Inpatient | IP | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 09212017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09142017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919015 | A419, I4891, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 09212017 | 09142017 | 09142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08312017 | 2017-08-31T14:45:38+00:00 |  | 000111202-01 | Edgar | Jansen | S DAYTON ACUTE CARE CNSL | 932707 | VINAY K | LINGABATHULA | 1578812129 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08302017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831066 | M869 | Osteomyelitis, unspecified | ICD10 | 09212017 | 08302017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09182017 | 2017-09-18T11:33:17+00:00 | 264244137259 | 000050487-01 | SANFORD | LOVELY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09162017 | 09212017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918057 | J159 | Unspecified bacterial pneumonia | ICD10 | 09212017 | 09162017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09192017 | 2017-09-19T14:57:33+00:00 |  | 000082331-01 | Robert | Kattine | OSU INTERNAL MED LLC | 908560 | BHUVANESWARI D | RAMASWAMY | 1851348098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 09212017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919098 | R0602 | Shortness of breath | ICD10 | 09212017 | 09182017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T09:50:41+00:00 | 254096157263 | 000116943-01 | Sharon | Rockwell | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09212017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921022 | R040 | Epistaxis | ICD10 | 09212017 | 09202017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09142017 | 2017-09-14T15:13:36+00:00 |  | 000075500-01 | Thomas | Lawrence | HOSPITAL MEDICINE SERVIC | 949655 | WONDWOSSEN Y | DERERIE | 1760793897 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09142017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915031 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 09212017 | 09142017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09012017 | 2017-09-01T11:25:32+00:00 |  | 000108367-01 | Lynn | Morelock | THE CHRIST HSP MED ASSOC | 946796 | LORI | ABRAMS CONNERS | 1528034329 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 09212017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08312017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901039 | N186 | End stage renal disease | ICD10 | 09212017 | 08312017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09192017 | 2017-09-19T07:23:51+00:00 |  | 000114071-01 | Imelda | Brown | ORTHO INSTITUTE OF DAYTO | 902345 | KEVIN J | PALEY | 1982603627 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919122 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09212017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08242017 | 2017-08-24T09:06:53+00:00 |  | 000080840-01 | James | Mack | WRIGHT STATE PHYSICIANS | 903649 | AKPOFURE P | EKEH | 1063478022 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 09212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825031 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 09212017 | 08232017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09182017 | 2017-09-18T16:15:05+00:00 |  | 000108897-01 | Nita | Snider | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09172017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919109 | R040 | Epistaxis | ICD10 | 09212017 | 09172017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
