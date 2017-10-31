Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-29_thru_2017-10-29_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-29_thru_2017-10-29_URGEMERG
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
| 10232017 | 2017-10-23T10:08:45+00:00 |  | 000097886-01 | Audrey | Taylor | CLERMONT INTERNISTS ASSO | 921516 | CHANDRASEKAR | VAIDYANATHAN | 1659373553 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 10272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10202017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023110 | E871, L03116, S9032XA | Contusion of left foot, initial encounter | ICD10 | 10272017 | 10202017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10192017 | 2017-10-19T08:07:45+00:00 |  | 000111821-01 | Kenneth | Harris | FAYETTE COUNTY MEM HSP C | 905606 | WILLIAM C | STEVENSON | 1922181528 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10192017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019022 | K810 | Acute cholecystitis | ICD10 | 10272017 | 10192017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09182017 | 2017-09-18T15:45:24+00:00 | 025143758-7261 | 000114008-01 | Kathryn | Brownfield | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10272017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 10242017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918100 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 10272017 | 10242017 | 10262017 | 27447, 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 1.0 |
| 10232017 | 2017-10-23T09:32:58+00:00 | 253396367295 | 000099969-01 | Nancy | Brown | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10272017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10222017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023023 | I639 | Cerebral infarction, unspecified | ICD10 | 10272017 | 10222017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10162017 | 2017-10-16T12:49:30+00:00 |  | 000071671-01 | Donna | Hilderbran | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017021 | D631, I5031, I509, J90, N185, N186, Z992 | Dependence on renal dialysis | ICD10 | 10272017 | 10132017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10192017 | 2017-10-19T10:27:29+00:00 |  | 000104951-01 | Mary | Culbertson | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 10272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10182017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019050 | I97131, R0902 | Hypoxemia | ICD10 | 10272017 | 10182017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T11:04:55+00:00 | 179580657293 | 000076170-01 | Thomas | Nethers | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10272017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10202017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023073 | C384, I4891 | Unspecified atrial fibrillation | ICD10 | 10272017 | 10202017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10202017 | 2017-10-20T08:20:09+00:00 |  | 000118395-01 | KIMBERLY | BRADLEY WOOLEY | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10192017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020013 | R601 | Generalized edema | ICD10 | 10272017 | 10192017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10232017 | 2017-10-23T10:01:42+00:00 |  | 000118452-01 | Pamela | Byers | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10212017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023108 | N12 | Tubulo-interstitial nephritis, not spcf as acute or chronic | ICD10 | 10272017 | 10212017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10092017 | 2017-10-09T09:52:49+00:00 | 251003187280 | 000008715-01 | JOYCE | SHIVENER | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10072017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009034 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 10272017 | 10072017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 10102017 | 2017-10-10T10:26:51+00:00 |  | 000038779-01 | MARY | SCHORR | OSU HLTH SYSTEM NEUROSUR | 917661 | JAMES B | ELDER | 1427221803 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10242017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010058 | C719, T8130XD | Disruption of wound, unspecified, subsequent encounter | ICD10 | 10272017 | 10242017 | 10262017 | 62140 | CRANIOPLASTY FOR SKULL DEFECT, UP TO 5 CM DIAMETER | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10132017 | 2017-10-13T13:53:20+00:00 |  | 000095958-01 | Ronald | Cahoone | MARIETTA HLTH CARE PHYS | 951677 | SARAH | WESCOTT | 1629418207 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 10272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10132017 | 10152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016042 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 10272017 | 10132017 | 10152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10242017 | 2017-10-24T08:38:25+00:00 |  | 000082978-01 | Thomas | Sullivan | HEALTHY JOURNEYS INC | 944643 | NAVEEN | KUMAR | 1295729200 | HOLMES REGIONAL | 934631 | 1295702728 | HOLMES REGIONAL | 1295702728 | Inpatient | IP | Concurrent Review | CONC |  | HOLMES REGIONAL | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10232017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024047 | J449, R079 | Chest pain, unspecified | ICD10 | 10272017 | 10232017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10162017 | 2017-10-16T08:15:22+00:00 |  | 000046031-01 | DOROTHY | MCCOY | OSU INTERNAL MED LLC | 916806 | CHARLES R | REDMAN II | 1093937781 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016101 | R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 10272017 | 10132017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09072017 | 2017-09-07T07:49:10+00:00 |  | 000115915-01 | VALLA | ODELL | OSU INTERNAL MED LLC | 951933 | SABARISH R | AYYAPPAN | 1558551507 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09072017 | 10232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907089 | B49 | Unspecified mycosis | ICD10 | 10272017 | 09072017 | 10232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10202017 | 2017-10-20T13:25:21+00:00 |  | 000006749-01 | DELNO | CUMMANS | COPC CENTRAL OHIO PRIMAR | 915650 | ADAM A | RUSH | 1649457250 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07192017 | 07262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020053 | T8112XA | Postprocedural septic shock, initial encounter | ICD10 | 10272017 | 07192017 | 07262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10232017 | 2017-10-23T14:42:08+00:00 |  | 000038535-01 | CECELIA | ALEXANDER | LEHIGH VALLEY HOSPITAL | 905095 |  | LEHIGH VALLEY HOSPITAL | 1164400131 | LEHIGH VALLEY HOSPITAL | 905095 | 1164400131 | LEHIGH VALLEY HOSPITAL | 1164400131 | Inpatient | IP | Concurrent Review | CONC |  | LEHIGH VALLEY HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10212017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023141 | R0602 | Shortness of breath | ICD10 | 10272017 | 10212017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T09:37:58+00:00 |  | 000109942-01 | Barbara | Gaa | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10222017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023083 | I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10272017 | 10222017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10122017 | 2017-10-12T11:18:35+00:00 |  | 000114883-01 | William | Stiteler Jr | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10272017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10202017 | 10222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013038 | I255, I495 | Sick sinus syndrome | ICD10 | 10272017 | 10202017 | 10222017 | 33202, 33225 | L VENTRIC PACING LEAD ADD-ON | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 09292017 | 2017-09-29T10:30:28+00:00 |  | 000083357-01 | Patricia | Hall | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10232017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929030 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10272017 | 10232017 | 10262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10232017 | 2017-10-23T08:18:06+00:00 |  | 000105862-01 | JAMES | HENRY | TEDROS ANDOM MD LLC | 907641 | TEDROS | ANDOM | 1629160262 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10202017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023026 | C189, C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 10272017 | 10202017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10232017 | 2017-10-23T08:42:08+00:00 |  | 000077823-01 | Susan | Freyhof | SOUND INPATIENT PHYS OF | 928091 | NAWAZ | AHMED | 1154634798 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10222017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023057 | I509, R000, R0602, R748, R911 | Solitary pulmonary nodule | ICD10 | 10272017 | 10222017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10242017 | 2017-10-24T14:41:14+00:00 |  | 000083303-01 | John | Groff Jr | COMMUNITY HSPIST LLC | 932655 | ABDULMAJID | ADAM | 1528362258 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10272017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 10232017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024082 | J189, J90, J9621, J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 10272017 | 10232017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10242017 | 2017-10-24T14:09:17+00:00 |  | 000094580-01 | James | Barry | MERCY HEALTH PHYSICIANS | 902845 | MARVIN M | NARCELLES | 1871583666 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10242017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024073 | D649, I959, K921, K922, R42, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 10272017 | 10242017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10262017 | 2017-10-26T08:58:24+00:00 |  | 000089567-01 | Lowell | Markwell | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10252017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026031 | R52 | Pain, unspecified | ICD10 | 10272017 | 10252017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T12:54:10+00:00 |  | 000099857-01 | Carol | Bauer | MERCY HEALTH PHYSICIANS | 921681 | MOHAMED I | DAHMAN | 1326255399 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 10272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10252017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824053 | E119, E6601, E785, I10, K219, M5489 | Other dorsalgia | ICD10 | 10272017 | 10252017 | 10262017 | 43775 | LAP SLEEVE GASTRECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09262017 | 2017-09-26T08:42:59+00:00 |  | 000087644-01 | Leonard | Dickerson | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10272017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926014 | N132, N390, R109 | Unspecified abdominal pain | ICD10 | 10272017 | 09252017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09292017 | 2017-09-29T11:49:06+00:00 |  | 000113686-01 | Rebecca | Gundolf | THE UROLOGY GROUP | 921282 | PHILIP J | BUFFINGTON | 1114967973 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 10272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10272017 | 12262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929029 | N201 | Calculus of ureter | ICD10 | 10272017 | 09282017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10272017 | 2017-10-27T15:08:25+00:00 |  | 000005236-01 | JAMES | MORGAN | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10272017 | Denied | MediGold Classic Preferred | EMR | Services Available In-Network | Inpatient | 10272017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171027055 | T82868A | Thrombosis of vascular prosth dev/grft, init | ICD10 | 10272017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 10192017 | 2017-10-19T07:43:58+00:00 |  | 000073543-01 | Shirley | Ricketts | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 10272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10182017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019016 | R079 | Chest pain, unspecified | ICD10 | 10272017 | 10182017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10272017 | 2017-10-27T12:05:27+00:00 |  | 000073201-01 | George | Hahnemann III | NEW CARLISLE FAM PRCT LL | 911235 | ASHOK P | DEVATHA | 1497740328 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10272017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 10262017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027046 | J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 10272017 | 10262017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10262017 | 2017-10-26T11:40:43+00:00 |  | 000109553-01 | Kent | Ritterholz | CHRIST HSP ORTHO ASSOC I | 944751 | MARC C | SCHNEIDER | 1174524326 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 10272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10262017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026064 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 10272017 | 10262017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10172017 | 2017-10-17T13:54:48+00:00 |  | 000099795-01 | Charles | Evans Sr | ALLIANCE PHYSICIANS INC | 905063 | NATHANIEL J | DITTOE | 1720106685 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017077 | J810 | Acute pulmonary edema | ICD10 | 10272017 | 10162017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
