Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-08_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-08_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
	And the test pauses for "2" seconds

	And I use the sub class "<sub_class>" to determine what location to enter into the location image
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
| 04032017 | 2017-04-03T09:57:01+00:00 |  | 000057265-01 | BARBARA | MEGAHEY | GREENFIELD AREA MED CTR | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170404092 | J189 | Pneumonia, unspecified organism | ICD10 | 06082017 | 03312017 | 04062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04252017 | 2017-04-25T08:04:51+00:00 |  | 000031800-01 | PEGGY | EASTER | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04242017 | 05032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425015 | R112 | Nausea with vomiting, unspecified | ICD10 | 06082017 | 04242017 | 05032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04252017 | 2017-04-25T08:25:36+00:00 |  | 000014757-01 | RONALD | LATZ | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04242017 | 05012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425024 | N139, N179 | Acute kidney failure, unspecified | ICD10 | 06082017 | 04242017 | 05022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04272017 | 2017-04-27T08:33:20+00:00 |  | 000044578-01 | ROLAND | PLEASANT SR | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04262017 | 05022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427008 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06082017 | 04262017 | 05032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022017 | 2017-05-02T09:28:32+00:00 |  | 000107951-01 | Janet | Etienne | CHRIST HSP ORTHO ASSOC I | 944727 | EDWARD V | LIM | 1194797829 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 06082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06022017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502032 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06082017 | 06022017 | 06052017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 2.0 |
| 05092017 | 2017-05-09T13:13:51+00:00 | 025975047-7129 | 000010994-01 | CAROLYN | BAILEY | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06052017 | 06072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509110 | G930 | Cerebral cysts | ICD10 | 06082017 | 06052017 | 06072017 | 62190 | SHUNT;SUBDURAL-ATRIAL, JUG.,AURIC. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05112017 | 2017-05-11T11:09:58+00:00 |  | 000036479-01 | STANLEY | SMITH | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05242017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511041 | C241 | Malignant neoplasm of ampulla of Vater | ICD10 | 06082017 | 05242017 | 06072017 | 48150 | PANCREATECTOMY-SUBTOTAL-WHIPPLE | CPT | 1 | 1 | Approved | 15 | CPT | C4 |  |  |  | 14.0 |
| 05102017 | 2017-05-10T15:58:11+00:00 |  | 000043599-01 | RUTH | WATSON | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511075 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06082017 | 06062017 | 06072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05192017 | 2017-05-19T14:57:51+00:00 |  | 000088383-01 | Gail | McPherson | PARKERSBURG ORTHO ASSOC | 925373 | GEORGE E | HERRIOTT III | 1417923731 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 06082017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519074 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06082017 | 06052017 | 06072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 05242017 | 2017-05-24T15:49:13+00:00 | 026143890-7143 | 000033073-01 | MARGARET | FATHBRUCKNER | MOUNT CARMEL HLTH PRVDRS | 904820 | ANNE MARIE | BRINKMAN | 1912949991 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05232017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524078 | E162 | Hypoglycemia, unspecified | ICD10 | 06082017 | 05232017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 05252017 | 2017-05-25T10:38:58+00:00 |  | 000030085-01 | JOHN | GERMAINE | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 05242017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525029 | I469 | Cardiac arrest, cause unspecified | ICD10 | 06082017 | 05242017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 05262017 | 2017-05-26T12:03:52+00:00 |  | 000079535-01 | Mary | Hill | UNIVERSITY OF CINCINNATI MEDICAL CEN | 944170 |  | UNIVERSITY OF CINCINNATI MEDICAL CEN | 1689618423 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 944170 | 1689618423 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 1689618423 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY OF CINCINNATI MEDICAL CEN | 06082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05262017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526047 | L511 | Stevens-Johnson syndrome | ICD10 | 06082017 | 05262017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05272017 | 2017-05-27T17:11:56+00:00 |  | 000073723-01 | Barbara | Posey | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05262017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530008 | E860, N179, N390 | Urinary tract infection, site not specified | ICD10 | 06082017 | 05262017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05302017 | 2017-05-30T10:52:21+00:00 | 259143217146 | 000005506-01 | ELWOOD | LEWIS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05262017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530070 | M4802 | Spinal stenosis, cervical region | ICD10 | 06082017 | 05262017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05302017 | 2017-05-30T11:03:56+00:00 | 260315977147 | 000020493-01 | EDWARD | MARSH | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05272017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530083 | J189, R7881 | Bacteremia | ICD10 | 06082017 | 05272017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05302017 | 2017-05-30T11:36:07+00:00 | 252429307149 | 000085466-01 | Carron | Toon | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05292017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530102 | I4891, R748 | Abnormal levels of other serum enzymes | ICD10 | 06082017 | 05292017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05302017 | 2017-05-30T11:59:54+00:00 |  | 000073299-01 | Kerry | Wray | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05282017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530114 | J159 | Unspecified bacterial pneumonia | ICD10 | 06082017 | 05282017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05302017 | 2017-05-30T08:55:25+00:00 |  | 000022211-01 | MARLENE | HOOVER | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05282017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530165 | I509, R062 | Wheezing | ICD10 | 06082017 | 05282017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06012017 | 2017-06-01T08:50:45+00:00 |  | 000053881-01 | WILLIAM | HENRY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05312017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601007 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 06082017 | 05312017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06012017 | 2017-06-01T13:52:07+00:00 |  | 000032820-01 | PATRICIA | MYERS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05312017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601059 | M6281 | Muscle weakness (generalized) | ICD10 | 06082017 | 05312017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06022017 | 2017-06-02T09:19:00+00:00 |  | 000079885-01 | Herbert | Tipton | OSU INTERNAL MED LLC | 947934 | SAMY K | ATAYA | 1376986653 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06012017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602019 | R4182 | Altered mental status, unspecified | ICD10 | 06082017 | 06012017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06022017 | 2017-06-02T09:49:16+00:00 |  | 000054384-01 | JOHN | PETERS | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06012017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602022 | J209 | Acute bronchitis, unspecified | ICD10 | 06082017 | 06012017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06022017 | 2017-06-02T08:53:18+00:00 |  | 000039915-01 | MARVIN | VALENTINE | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06012017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602029 | D649, I509, R0902 | Hypoxemia | ICD10 | 06082017 | 06012017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06022017 | 2017-06-02T11:44:47+00:00 | 025178143-7153 | 000062477-01 | ROSE | HEWITT | MOUNT CARMEL HLTH PRVDRS | 947622 | WILLIAM R | WALKER | 1427390905 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06022017 | 06072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602051 | M6281 | Muscle weakness (generalized) | ICD10 | 06082017 | 06022017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06052017 | 2017-06-05T08:33:34+00:00 |  | 000080333-01 | Tonya | Tallent | S DAYTON ACUTE CARE CNSL | 920484 | SARAH M | HEDRICK | 1043371156 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605005 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 06082017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06042017 | 2017-06-04T13:09:46+00:00 |  | 000109541-01 | KAREN | POMPOS | PULMONARY MED OF DAYTON | 912107 | GNANAM | THAMBIPILLAI | 1255346730 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 06082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06032017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605008 | R404 | Transient alteration of awareness | ICD10 | 06082017 | 06032017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T09:45:36+00:00 |  | 000084098-01 | Paula | Haller | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06042017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605021 | I739 | Peripheral vascular disease, unspecified | ICD10 | 06082017 | 06042017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T09:52:15+00:00 |  | 000026678-01 | WALTER | SUMMERS | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 06042017 | 06082017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605024 | I509 | Heart failure, unspecified | ICD10 | 06082017 | 06042017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T08:16:05+00:00 |  | 000048057-01 | FAIRY | MILBAUGH | NEUROSCIENCE CENTER | 944006 | ARCHANA P | HINDUJA | 1336313865 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605035 | I639 | Cerebral infarction, unspecified | ICD10 | 06082017 | 06032017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T10:15:04+00:00 |  | 000047938-01 | PHYLLIS | MOREHART | COMMUNITY HSPIST LLC | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06082017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 06042017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605038 | I509, J810 | Acute pulmonary edema | ICD10 | 06082017 | 06042017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T10:49:14+00:00 |  | 000037207-01 | ESTHER | RAMEY | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605079 | S72019A, Z9181 | History of falling | ICD10 | 06082017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T11:31:54+00:00 |  | 000114529-01 | Monte | Cook | COPC CENTRAL OHIO PRIMAR | 933304 | RAJIV K | SHETH | 1104110337 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06082017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Inpatient | Inpatient | 06032017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605091 | K869, R7881 | Bacteremia | ICD10 | 06082017 | 06032017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T11:34:45+00:00 | 025079682-7135 | 000011430-01 | JACK | MOORE | COSHOCTON COUNTY MEM HSP | 949424 | SCOTT P | STEPHENS | 1770741902 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06082017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06062017 | 06072017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605095 | S43432A, S46812A | Strain of musc/fasc/tend at shldr/up arm, left arm, init | ICD10 | 06082017 | 06062017 | 06072017 | 23472, 29826, 29827, 23430, 29800, 64772 | TRNSECTN/AVULSN OTHER SPNL NRV | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06052017 | 2017-06-05T13:18:43+00:00 |  | 000098818-01 | Lenard | Milburn | ST ELIZABETH HEALTHCARE | 916205 |  | ST ELIZABETH HEALTHCARE | 1154365062 | ST ELIZABETH HEALTHCARE | 916205 | 1154365062 | ST ELIZABETH HEALTHCARE | 1154365062 | Inpatient | IP | Concurrent Review | CONC |  | ST ELIZABETH HEALTHCARE | 06082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06042017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605102 | I5043, N186, R0602, R748 | Abnormal levels of other serum enzymes | ICD10 | 06082017 | 06042017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T14:14:57+00:00 |  | 000053137-01 | BARBARA | GERHARDT | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605111 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 06082017 | 06052017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T16:04:21+00:00 |  | 000065962-01 | Evelyn | Furney | CENTRAL OH HSPISTS INC | 942120 | JOHN M | GUIDO | 1912263922 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605139 | I639 | Cerebral infarction, unspecified | ICD10 | 06082017 | 06032017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T16:09:16+00:00 |  | 000070300-01 | Dave | Rockel | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06032017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605141 | T148 | Other injury of unspecified body region | ICD10 | 06082017 | 06032017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06062017 | 2017-06-06T15:39:18+00:00 |  | 000087310-01 | Mary | Newberry | MIAMI VALLEY HSPISTS GRP | 902279 | BRAD | EVANS | 1225077803 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Inpatient | IP | Concurrent Review | CONC |  | WEST CHESTER MEDICAL CENTER | 06082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606081 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06082017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T10:19:32+00:00 |  | 000074442-01 | Carol | Fultz | OHIOHEALTH PHYS GRP | 929305 | JUSTIN B | WEINER | 1780874487 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607042 | R55 | Syncope and collapse | ICD10 | 06082017 | 06052017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06072017 | 2017-06-07T13:09:03+00:00 |  | 000097397-01 | Barbara | Searles | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06082017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 06012017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607051 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06082017 | 06012017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06072017 | 2017-06-07T13:26:19+00:00 |  | 000083167-01 | Patricia | Preston | UNIVERSITY OF CINCINNATI | 948315 | TAYYAB S | DIWAN | 1720246580 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 06082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607055 | R509 | Fever, unspecified | ICD10 | 06082017 | 06072017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06082017 | 2017-06-08T15:37:00+00:00 |  | 000114342-01 | Paul | Russell | ST JOHN HOSPITAL AND MEDICAL CENTER | 931668 |  | ST JOHN HOSPITAL AND MEDICAL CENTER | 1023088168 | ST JOHN HOSPITAL AND MEDICAL CENTER | 931668 | 1023088168 | ST JOHN HOSPITAL AND MEDICAL CENTER | 1023088168 | Inpatient | IP | Concurrent Review | CONC |  | ST JOHN HOSPITAL AND MEDICAL CENTER | 06082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06072017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608070 | I469 | Cardiac arrest, cause unspecified | ICD10 | 06082017 | 06072017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
