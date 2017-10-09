Feature: RUN2 Test All OBS 9/11
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2 Test All OBS 9/11
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
And in the "Certification" page I enter "OB" into the "Auth Type" field
And the test pauses for "2" seconds
And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
And the test pauses for "3" seconds
And I press "Control + S"

And in the "certification" page I should see the "medibots" image
And the test pauses for "3" seconds
And in the "Functions Menu" page I click on "Authorized Svcs"
And the test pauses for "3" seconds
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
And in the "authorized_services" page I enter "M" into the "claim_type" image
And the test pauses for "2" seconds
And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
And the test pauses for "2" seconds
And I use the sub class "<sub_class>" to determine what count to enter into the count image
And the test pauses for "3" seconds
And in the "authorized_services" page I enter "$" into the "prov" image
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
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I should see the "table_headers" image
And the test pauses for "10" seconds
And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
And I press ENTER graphically
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I click on the "scrollbar" image
And the test pauses for "1" seconds
And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
And I press ENTER graphically
And the test pauses for "3" seconds
And in the "provider_affiliation_list" page I click on the "return_lookup" image
And the test pauses for "3" seconds
And I press "Control + S"
And the test pauses for "3" seconds
And I edit myself if I am a NONPAR
And the test pauses for "3" seconds
And I press "F8"
And the test pauses for "3" seconds
And I press "F8"
And the test pauses for "3" seconds
And I press ENTER graphically

And in the "Functions Menu" page I click on "Remarks"
And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
And I press "Control + N"
And the test pauses for "3" seconds
And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
And the test pauses for "4" seconds
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
| 09062017 | 2017-09-06T09:36:20+00:00 |  | 000108051-01 | Ruth | Enlow | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09012017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907064 | R109, K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 09112017 | 09012017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09052017 | 2017-09-05T10:25:36+00:00 |  | 000034424-01 | LARRY | FALL | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 09042017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905023 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09112017 | 09042017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09112017 | 2017-09-11T07:52:47+00:00 |  | 000065824-01 | JOHN | BOHLKEN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09052017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911002 | N390 | Urinary tract infection, site not specified | ICD10 | 09112017 | 09052017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08022017 | 2017-08-02T15:22:06+00:00 |  | 000086581-01 | Linda | Baisden | ADENA MEDICAL GROUP LLC | 901483 | JAMES E | FLEMING | 1952326159 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08292017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802091 | M4316, M4806, M5412 | Radiculopathy, cervical region | ICD10 | 09112017 | 08292017 | 09012017 | 20937, 22633, 22853, 22840 | POSTERIOR INSTRUMENTATION; WITHOUT SEGMENTAL FIXATION (HARRINGTON ROD) | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 09082017 | 2017-09-08T09:58:30+00:00 |  | 000053137-01 | BARBARA | GERHARDT | SOUND PHYSICIANS OF OHI0 | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09072017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908068 | J159 | Unspecified bacterial pneumonia | ICD10 | 09112017 | 09072017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09072017 | 2017-09-07T14:40:39+00:00 |  | 000096711-01 | Glenda | Davis | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 09112017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09062017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908026 | E860, N179, R296 | Repeated falls | ICD10 | 09112017 | 09062017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09092017 | 2017-09-09T08:11:21+00:00 |  | 000053948-01 | DONNA | WETZEL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09092017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911004 | L0390 | Cellulitis, unspecified | ICD10 | 09112017 | 09092017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T10:50:06+00:00 |  | 000005749-01 | Mary | Crane | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09052017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905039 | R4182 | Altered mental status, unspecified | ICD10 | 09112017 | 09052017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09082017 | 2017-09-08T09:12:37+00:00 | 261801847250 | 000038817-01 | BEVERLY | HAVENS | EMERGENCY SERVICES INC | 935002 | MICHAEL L | VORBROKER | 1063490555 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09072017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908010 | R0600 | Dyspnea, unspecified | ICD10 | 09112017 | 09072017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09072017 | 2017-09-07T14:50:19+00:00 |  | 000079416-01 | Wilma | Mckenzie | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09112017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 09062017 | 09092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908028 | R1012 | Left upper quadrant pain | ICD10 | 09112017 | 09062017 | 09092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09112017 | 2017-09-11T09:17:14+00:00 |  | 000089323-01 | Randy | Koscho | SOUND PHYSICIANS OF OHI0 | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09112017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09062017 | 09082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911022 | A082 | Adenoviral enteritis | ICD10 | 09112017 | 09062017 | 09082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09062017 | 2017-09-06T08:30:19+00:00 |  | 000087763-01 | Homer | Frank | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09112017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09052017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907058 | W1839XA | Other fall on same level, initial encounter | ICD10 | 09112017 | 09052017 | 09072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
