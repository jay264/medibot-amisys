Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-19_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-19_URGEMERG
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 01032018 | 2018-01-03T13:40:46+00:00 |  | 000105656-01 | Robert | Doyle | TRIHEALTH G LLC | 951906 | SAKUNTHALA | NATARAJAN | 1861771412 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01022018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103099 | I7100 | Dissection of unspecified site of aorta | ICD10 | 01192018 | 01022018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01082018 | 2018-01-08T11:25:28+00:00 |  | 000079778-01 | Joseph | Karner | HOSPITALIST MEDICINE PHY | 927326 | UMASANKAR | KAKUMANU | 1699068312 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01192018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01062018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108093 | A419, J189, J9601, R112 | Nausea with vomiting, unspecified | ICD10 | 01192018 | 01062018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01082018 | 2018-01-08T13:21:34+00:00 |  | 000009442-01 | JAMES | GATES | VHS ACQUISITION SUBSIDIA | 907840 |  | ABRAZO SCOTTSDALE CAMPUS | 1326022732 | VHS ACQUISITION SUBSIDIA | 907840 | 1326022732 | ABRAZO SCOTTSDALE CAMPUS | 1326022732 | Inpatient | IP | Concurrent Review | CONC |  | ABRAZO SCOTTSDALE CAMPUS | 01192018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 01072018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108132 | I214, I509, N189 | Chronic kidney disease, unspecified | ICD10 | 01192018 | 01072018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01092018 | 2018-01-09T11:12:26+00:00 |  | 000033496-01 | REBECCA | WOHLFARTH | AEBI GINTY ROMAKER SPROU | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109095 | K440 | Diaphragmatic hernia with obstruction, without gangrene | ICD10 | 01192018 | 01082018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01102018 | 2018-01-10T12:12:26+00:00 |  | 000006226-01 | SUE | MULLINS | 24 ON PHYSICIANS PC | 908162 | DAVID L | CONDON | 1891752994 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110059 | I160 | HYPERTENSIVE URGENCY | ICD10 | 01192018 | 01092018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01122018 | 2018-01-12T12:18:41+00:00 |  | 000055120-01 | RICHARD | SLAGLE | CEN OH PRIMARY CARE SPEC | 907945 | MOHAN K | THIRUGNANAM | 1518188051 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112050 | R531 | Weakness | ICD10 | 01192018 | 01112018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12212017 | 2017-12-21T10:56:11+00:00 |  | 000099216-01 | Paula | Russell | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12302017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221041 | T84033A | Mech loosening of internal left knee prosthetic joint, init | ICD10 | 01192018 | 12302017 | 01022018 | 27487, 27488 | RMVL KNEE PROS INC TOTAL KNEE | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 12272017 | 2017-12-27T10:46:12+00:00 |  | 000085233-01 | Mary | Schmid | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 941530 |  | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 1043397292 | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 941530 | 1043397292 | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 1043397292 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 01192018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12242017 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227065 | I509 | Heart failure, unspecified | ICD10 | 01192018 | 12242017 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 01082018 | 2018-01-08T10:35:07+00:00 |  | 000075463-01 | Lou | Parks | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108072 | E872, E875, R4182, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 01192018 | 01052018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01092018 | 2018-01-09T11:03:31+00:00 |  | 000065868-01 | NORMA | GRAGG | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109101 | R109 | Unspecified abdominal pain | ICD10 | 01192018 | 01082018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01102018 | 2018-01-10T07:54:04+00:00 |  | 000104604-01 | Charles | Brandt | ADENA HEALTH SYSTEMS | 914637 | EMMANUEL | CHUKWUNYERE | 1821235540 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110016 | R42 | Dizziness and giddiness | ICD10 | 01192018 | 01092018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01102018 | 2018-01-10T12:13:34+00:00 |  | 000080657-01 | Marva | Johnson | TRI STATE PULMONARY ASSO | 943075 | CHRISTOPHER B | SCHMITT | 1548210370 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 01192018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01092018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110061 | E8770, I959 | Hypotension, unspecified | ICD10 | 01192018 | 01092018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01102018 | 2018-01-10T12:56:07+00:00 |  | 000074354-01 | Jefferey | Sensabaugh | OSU SURGERY LLC | 928938 | JOHN K | BAILEY | 1710955794 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01192018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110074 | T24031A | Burn of unspecified degree of right lower leg, init encntr | ICD10 | 01192018 | 01092018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01102018 | 2018-01-10T14:33:01+00:00 |  | 000067572-01 | DWIGHT | GIBSON | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110087 | I509, N179, R0902 | Hypoxemia | ICD10 | 01192018 | 01092018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01112018 | 2018-01-11T07:32:55+00:00 |  | 000110483-01 | John | Beedy | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01192018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111011 | R0600 | Dyspnea, unspecified | ICD10 | 01192018 | 01112018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01112018 | 2018-01-11T10:37:12+00:00 |  | 000063148-01 | ALVYDAS | BICIUNAS | OHIOHEALTH PHYS GRP | 928546 | JONATHAN M | ENLOW | 1811164619 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111046 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01192018 | 01102018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01122018 | 2018-01-12T11:28:59+00:00 |  | 000119751-01 | GARY | HESTON | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112036 | I509, K859 | Acute pancreatitis, unspecified | ICD10 | 01192018 | 01112018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01122018 | 2018-01-12T12:58:53+00:00 |  | 000096172-01 | Helen | Charles | HOSPITALIST MEDICINE PHY | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01192018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112058 | R0902 | Hypoxemia | ICD10 | 01192018 | 01122018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01152018 | 2018-01-15T06:35:58+00:00 |  | 000096701-01 | Oliver | Frith | ER MED PHYS OF CHAMPAIGN | 940456 | JUSTIN D | COOMES | 1730322413 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01192018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115021 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 01192018 | 01142018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01152018 | 2018-01-15T06:49:03+00:00 |  | 000073599-01 | Bruce | Blevins | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01192018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01122018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115022 | J189 | Pneumonia, unspecified organism | ICD10 | 01192018 | 01122018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01152018 | 2018-01-15T15:35:14+00:00 |  | 000084371-01 | Willie | Davis | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115153 | R531, S82209A | Unsp fracture of shaft of unsp tibia, init for clos fx | ICD10 | 01192018 | 01142018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12142017 | 2017-12-14T15:00:53+00:00 |  | 000092017-01 | Margaret | Nevius | ALLIANCE PHYSICIANS INC | 910039 | DONALD W | AMES | 1306857891 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01162018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214052 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01192018 | 01162018 | 01172018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01022018 | 2018-01-02T14:48:45+00:00 |  | 000113609-01 | Michael | Smallwood | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01012018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103094 | J069, J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 01192018 | 01012018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 01042018 | 2018-01-04T10:05:24+00:00 |  | 000012284-01 | BARBARA | BAUR | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104038 | M25559, M549, R29898, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 01192018 | 01032018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 01052018 | 2018-01-05T09:08:27+00:00 |  | 000006130-01 | JOSEPHINE | BERTINO | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01042018 | 01172018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105036 | J189, J9601, R0602 | Shortness of breath | ICD10 | 01192018 | 01042018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01052018 | 2018-01-05T14:32:29+00:00 |  | 000092886-01 | Dwight | Pinkerton | MOUNT CARMEL HLTH PRVDRS | 912451 | WILLIAM H | PHILLIPS | 1356343586 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01172018 | 01182018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105084 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 01192018 | 01172018 | 01182018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved Inpatient | 2 | CPT | C4 |  |  |  | 1.0 |
| 01082018 | 2018-01-08T10:27:24+00:00 |  | 000105263-01 | Carolyn | Ferrell | ROOSEVELT SURG ASSOC INC | 941455 | GARY A | COBB | 1497745608 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Inpatient | IP | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01072018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108067 | L03311 | Cellulitis of abdominal wall | ICD10 | 01192018 | 01072018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01092018 | 2018-01-09T11:45:28+00:00 |  | 000120739-01 | Randall L | Barnette | COPC CENTRAL OHIO PRIMAR | 927320 | SAMATHA | PALADUGU | 1154635753 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 12302017 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109070 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01192018 | 12302017 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 01092018 | 2018-01-09T11:55:59+00:00 |  | 000006540-01 | PAUL | HICKMAN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109120 | A419, D649, J189, N179, R531 | Weakness | ICD10 | 01192018 | 01052018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01102018 | 2018-01-10T12:16:53+00:00 |  | 000033395-01 | RUBY | MUDD | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01192018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01152018 | 01172018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110066 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 01192018 | 01152018 | 01172018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01112018 | 2018-01-11T09:52:58+00:00 |  | 000045924-01 | STEVEN | HARTER | CEN OH PRIMARY CARE SPEC | 910900 | RICHARD G | BAKKER | 1528244357 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111035 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 01192018 | 01112018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01112018 | 2018-01-11T10:06:23+00:00 |  | 000034176-01 | LELAND | FORREST | ARICOURT HEALTH LTD | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111036 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 01192018 | 01102018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01122018 | 2018-01-12T11:11:05+00:00 |  | 000008718-01 | FRANZISKA | HANDWERK | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112040 | A419 | Sepsis, unspecified organism | ICD10 | 01192018 | 01112018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01122018 | 2018-01-12T16:19:35+00:00 |  | 000000231-01 | HARRIETT | KELLENBARGER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115029 | A419, J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 01192018 | 01112018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01152018 | 2018-01-15T10:14:06+00:00 |  | 000063397-01 | DEBRA | IRELAND | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115064 | A419 | Sepsis, unspecified organism | ICD10 | 01192018 | 01102018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01152018 | 2018-01-15T09:39:37+00:00 |  | 000013479-01 | ELMER | BURCHWELL | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115076 | R569 | Unspecified convulsions | ICD10 | 01192018 | 01142018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01152018 | 2018-01-15T09:50:26+00:00 |  | 000045466-01 | PAUL | LEITHART | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01142018 | 01182018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115102 | J189, J45901 | Unspecified asthma with (acute) exacerbation | ICD10 | 01192018 | 01142018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01152018 | 2018-01-15T13:58:55+00:00 |  | 000002221-01 | MARGARET | COVERDALE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115129 | R296 | Repeated falls | ICD10 | 01192018 | 01142018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01152018 | 2018-01-15T14:37:24+00:00 |  | 000056582-01 | ROBERT | BALLAH | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115143 | R296 | Repeated falls | ICD10 | 01192018 | 01152018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01162018 | 2018-01-16T10:43:13+00:00 |  | 000029408-01 | BRUCE | STUMP | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116034 | G92, J9621, R4020, R579, 2720 | 2720.0 | ICD10 | 01192018 | 01142018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01162018 | 2018-01-16T11:22:43+00:00 |  | 000090682-01 | Larry | Morgan | HOSPITALIST MEDICINE PHY | 932824 | CLIFF | OMOREGIE | 1467773713 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 01192018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01152018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116060 | E872, J441, J9601, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 01192018 | 01152018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01172018 | 2018-01-17T10:21:57+00:00 |  | 000074362-01 | William | Mahr | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01192018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 01162018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117025 | E875, N181, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 01192018 | 01162018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01172018 | 2018-01-17T13:51:14+00:00 |  | 000121003-01 | MARCELLA | HENSON | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01192018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117052 | I509, I82401, J90 | Pleural effusion, not elsewhere classified | ICD10 | 01192018 | 01152018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01172018 | 2018-01-17T13:47:20+00:00 |  | 000062563-01 | EDWARD | MARTT | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01162018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117053 | I639 | Cerebral infarction, unspecified | ICD10 | 01192018 | 01162018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01172018 | 2018-01-17T14:19:50+00:00 |  | 000042294-01 | DARRELL | MANIFOLD | MALLIK, GUNWANT S | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01192018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01162018 | 01182018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117056 | M4712, M4802 | Spinal stenosis, cervical region | ICD10 | 01192018 | 01162018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
