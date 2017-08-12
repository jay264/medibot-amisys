Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-10_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-10_URGEMERG
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
| 08072017 | 2017-08-07T10:57:47+00:00 |  | 000084567-01 | Barbara | Williamson | MARION INDEPENDENT PHYS | 910533 | MARK | DAVIS | 1306814678 | NEWBERRY COUNTY MEMORIAL HOSPITAL | 910958 | 1316030083 | NEWBERRY COUNTY MEMORIAL HOSPITAL | 1316030083 | Inpatient | IP | Concurrent Review | CONC |  | NEWBERRY COUNTY MEMORIAL HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08062017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808037 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08102017 | 08062017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07282017 | 2017-07-28T16:35:51+00:00 |  | 000022214-01 | Janet | Schultz | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 08102017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170731009 | M6281 | Muscle weakness (generalized) | ICD10 | 08102017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08012017 | 2017-08-01T09:42:50+00:00 | 250651367212 | 000023132-01 | Charlene | Lieb | SOUND PHYSICIANS OF OHI | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07312017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801030 | K51311 | Ulcerative (chronic) rectosigmoiditis with rectal bleeding | ICD10 | 08102017 | 07312017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07262017 | 2017-07-26T11:44:58+00:00 | 025144689-7207 | 000016823-01 | CORALEE | BRYANT | SIDES, JAMES A | 934799 | JAMES A | SIDES | 1275587578 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726043 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08102017 | 08082017 | 08102017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08012017 | 2017-08-01T14:10:59+00:00 |  | 000086252-01 | Rodger | Martin | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801101 | R579 | Shock, unspecified | ICD10 | 08102017 | 07312017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08082017 | 2017-08-08T15:11:25+00:00 | 025081959-7220 | 000062563-01 | EDWARD | MARTT | MOUNT CARMEL HLTH PRVDRS | 903017 | FRED P | ROMEO | 1568403814 | MOUNT CARMET WEST | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 08102017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808097 | R45851 | Suicidal ideations | ICD10 | 08102017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07182017 | 2017-07-18T16:10:46+00:00 | 026121528-7125 | 000063818-01 | DANNY | HARRISON | PREMIER UROLOGY CORP | 930560 | ADAM J | CLEMENS | 1477798049 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08082017 | 08102017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719001 | C61 | Malignant neoplasm of prostate | ICD10 | 08102017 | 08082017 | 08102017 | 55866 | LAPARO RADICAL PROSTATECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08102017 | 2017-08-10T14:01:34+00:00 |  | 000075875-01 | Crystal | Bartimus | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 08092017 | 08102017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810061 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 08102017 | 08092017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07062017 | 2017-07-06T10:07:46+00:00 | 250093367187 | 000002894-01 | KAREN | BEHM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08102017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706023 | I509 | Heart failure, unspecified | ICD10 | 08102017 | 07052017 | 07142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06272017 | 2017-06-27T15:10:41+00:00 |  | 000118260-01 | Brad | Rhoads | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627099 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08102017 | 08072017 | 08092017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08072017 | 2017-08-07T15:54:05+00:00 |  | 000073720-01 | Sheila | Moffatt | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08042017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808068 | M6281 | Muscle weakness (generalized) | ICD10 | 08102017 | 08042017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T10:53:15+00:00 |  | 000090214-01 | Walter | Risko | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | UNKNOWN PROVIDER | 08102017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170808072 | I6322 | Cerebral infrc due to unsp occls or stenosis of basilar art | ICD10 | 08102017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08032017 | 2017-08-03T14:35:12+00:00 |  | 000044268-01 | BERNICE | ANDERSON | APOGEE MED GRP OHIO INC | 946966 | CHARLES A | BERKO | 1114363819 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803072 | M6281 | Muscle weakness (generalized) | ICD10 | 08102017 | 08022017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06222017 | 2017-06-22T14:21:13+00:00 |  | 000088556-01 | Pamela | Redd | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622060 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08102017 | 08012017 | 08032017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08072017 | 2017-08-07T09:39:29+00:00 |  | 000105527-01 | Earl | Morris | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08052017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808016 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08102017 | 08052017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07202017 | 2017-07-20T14:37:54+00:00 |  | 000019728-01 | HERMAN | HIGGINBOTHAM | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07212017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720070 | M4800 | Spinal stenosis, site unspecified | ICD10 | 08102017 | 07212017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 08092017 | 2017-08-09T09:44:45+00:00 | 168900177220 | 000044211-01 | Patricia | Monk | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809015 | I214, I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08102017 | 08082017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08072017 | 2017-08-07T18:20:43+00:00 |  | 000048632-01 | WILLIAM | OYER | MADISON FAMILY HEALTH | 905215 | ADAM C | WEISER | 0 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08072017 | 08092017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807108 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 08102017 | 08072017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T08:32:23+00:00 | 025035890-7210 | 000034424-01 | LARRY | FALL | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07292017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731002 | I509, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08102017 | 07292017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 08072017 | 2017-08-07T14:01:29+00:00 |  | 000051794-01 | MARY | DAMRON | APOGEE MED GRP OHIO INC | 946966 | CHARLES A | BERKO | 1114363819 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08052017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808062 | A419 | Sepsis, unspecified organism | ICD10 | 08102017 | 08052017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T15:45:45+00:00 | 252177687220 | 000058080-01 | JAMES | PAELTZ | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808104 | I201, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08102017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08072017 | 2017-08-07T10:52:27+00:00 | 252549887216 | 000034189-01 | CHERYL | WHIRRETT | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08042017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807044 | G9340 | Encephalopathy, unspecified | ICD10 | 08102017 | 08042017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07272017 | 2017-07-27T14:05:42+00:00 | 025635999-7208 | 000033096-01 | VIRGINIA | GALILEI | ACUTE CARE SURGEONS LLC | 936806 | KIM S | HAMELBERG | 1881699759 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07302017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727064 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 08102017 | 07302017 | 08092017 | 49565 | REP RECURRENT VENTRAL HERNIA | CPT | 1 | 1 | Approved | 11 | CPT | C4 |  |  |  | 10.0 |
| 08072017 | 2017-08-07T09:33:57+00:00 | 255950037219 | 000045177-01 | RAYMOND | KROLL | SOUND PHYSICIANS OF OHI | 912793 | PIYUSH | GUPTA | 1275618803 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08062017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807016 | N179, R339 | Retention of urine, unspecified | ICD10 | 08102017 | 08062017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08072017 | 2017-08-07T10:23:28+00:00 | 163309897216 | 000069773-01 | RALPH | MCALLISTER JR | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08052017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807035 | K5669 | Other intestinal obstruction | ICD10 | 08102017 | 08052017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07312017 | 2017-07-31T10:08:13+00:00 |  | 000085235-01 | Patricia | Roberts | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07302017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731107 | M549, S22000A | Wedge compression fracture of unsp thoracic vertebra, init | ICD10 | 08102017 | 07302017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07262017 | 2017-07-26T09:46:46+00:00 |  | 000088584-01 | Roger | Boles | S DAYTON ACUTE CARE CNSL | 947057 | ELLEN S | KIM | 1912249400 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 08102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07252017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726047 | K9422, R319 | Hematuria, unspecified | ICD10 | 08102017 | 07252017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08072017 | 2017-08-07T09:01:29+00:00 | 2500181217216 | 000034328-01 | JERRY | ALTHOFF | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08042017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807005 | M869 | Osteomyelitis, unspecified | ICD10 | 08102017 | 08042017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08022017 | 2017-08-02T15:02:57+00:00 |  | 000092629-01 | Linda | Brown | ADENA MEDICAL GROUP LLC | 935741 | ALAN T | MONG | 1013935311 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08102017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802086 | K5660, R109 | Unspecified abdominal pain | ICD10 | 08102017 | 08012017 | 08092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07282017 | 2017-07-28T09:43:50+00:00 | 250727817208 | 000066789-01 | JUANITA | MCLAUGHLIN | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07272017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728011 | M8610 | Other acute osteomyelitis, unspecified site | ICD10 | 08102017 | 07272017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 07072017 | 2017-07-07T12:23:14+00:00 |  | 000064168-01 | RUTH | BURNS | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08102017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707045 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08102017 | 08082017 | 08102017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 3 | CPT | C4 |  |  |  | 2.0 |
| 08092017 | 2017-08-09T08:22:13+00:00 | 252131567220 | 000006411-01 | VIOLET | NEAL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08082017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809005 | R296 | Repeated falls | ICD10 | 08102017 | 08082017 | 08102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
