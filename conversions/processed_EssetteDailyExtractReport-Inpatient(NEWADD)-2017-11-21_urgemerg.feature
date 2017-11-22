Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-21_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-21_URGEMERG
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
| 11162017 | 2017-11-16T09:56:03+00:00 |  | 000098002-01 | Paschal | Stephenson | SOUTHEASTERN OHIO PHYS | 921960 | MICHAEL | SARAP | 1275615296 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11202017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11192017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116020 | K632 | Fistula of intestine | ICD10 | 11202017 | 11152017 | 11192017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 0 | 1 |  | 5 | CPT | C4 |  |  |  | 4.0 |
| 11162017 | 2017-11-16T15:38:57+00:00 | 250773147320 | 000013894-01 | ELIZABETH | MILLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11162017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116088 | R4182 | Altered mental status, unspecified | ICD10 | 11212017 | 11162017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11152017 | 2017-11-15T11:29:59+00:00 |  | 000088584-01 | Roger | Boles | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115079 | I482 | Chronic atrial fibrillation | ICD10 | 11212017 | 11152017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11202017 | 2017-11-20T16:39:45+00:00 |  | 000098112-01 | Marie | Mann | SWICK, SHAWN M | 927362 | SHAWN M | SWICK | 1790703692 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121007 | I4891 | Unspecified atrial fibrillation | ICD10 | 11212017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T09:43:55+00:00 | 251067617321 | 000030358-01 | Joseph | Sullivan | SOUND PHYSICIANS OF OHI0 | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11172017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117017 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 11212017 | 11172017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11092017 | 2017-11-09T12:12:28+00:00 |  | 000032462-01 | RICHARD | NAUMAN | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109064 | K5660 | Unspecified intestinal obstruction | ICD10 | 11212017 | 11082017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11142017 | 2017-11-14T10:03:58+00:00 |  | 000065963-01 | JANET | MASON | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11122017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115006 | J441, J9622 | Acute and chronic respiratory failure with hypercapnia | ICD10 | 11212017 | 11122017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10272017 | 2017-10-27T13:07:24+00:00 |  | 000078831-01 | Gary | Koch | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030041 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11212017 | 11132017 | 11152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11032017 | 2017-11-03T10:55:08+00:00 | 263448687306 | 000115484-01 | EMILY | GETTYS | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11212017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11022017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103043 | L89159 | Pressure ulcer of sacral region, unspecified stage | ICD10 | 11212017 | 11022017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 11132017 | 2017-11-13T11:20:17+00:00 | 256844497315 | 000034178-01 | JACK | FARABEE | SOUND PHYSICIANS OF OHI0 | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11112017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113046 | R748 | Abnormal levels of other serum enzymes | ICD10 | 11212017 | 11112017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11072017 | 2017-11-07T14:15:38+00:00 |  | 000100390-01 | Timothy | Ward | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107109 | H6690 | Otitis media, unspecified, unspecified ear | ICD10 | 11212017 | 11062017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11032017 | 2017-11-03T15:54:28+00:00 |  | 000100439-01 | Paul | Blankemeyer | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11212017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103102 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11212017 | 11152017 | 11172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 11172017 | 2017-11-17T10:17:20+00:00 |  | 000117257-01 | Harold | Bowers | SOUND PHYSICIANS OF OHI0 | 925622 | CAROLYN M | WHATLEY | 1487750022 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117064 | S72142A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 11212017 | 11162017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11202017 | 2017-11-20T12:06:14+00:00 |  | 000080941-01 | Freddie | Piphus | STEPHEN D HEISE MD & ASS | 924362 | NICHOLAS A | GODBY | 1174775464 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 11212017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 11212017 | 11222017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171120066 | N183 | Chronic kidney disease, stage 3 (moderate) | ICD10 | 11212017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11162017 | 2017-11-16T14:05:47+00:00 |  | 000117370-01 | Dale | Jenkins | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11212017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116072 | I480, I5043, R197 | Diarrhea, unspecified | ICD10 | 11212017 | 11152017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11202017 | 2017-11-20T09:46:44+00:00 |  | 000075643-01 | Myrna | Hoffer | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11212017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11172017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120075 | J939 | Pneumothorax, unspecified | ICD10 | 11212017 | 11172017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11152017 | 2017-11-15T10:49:46+00:00 |  | 000004631-01 | CONNIE | HATCHER | OHIOHEALTH PHYS GRP | 944179 | MAX H | SAENZ | 1093009987 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 11152017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115075 | J810 | Acute pulmonary edema | ICD10 | 11212017 | 11152017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11192017 | 2017-11-19T14:46:59+00:00 |  | 000064543-01 | LOUISE | CLAGG | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11212017 | Approved | MediGold Medical Only | Reports | ACO - Atrial Fib | Inpatient | 11182017 | 01212018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171119001 | I4891 | Unspecified atrial fibrillation | ICD10 | 11212017 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10232017 | 2017-10-23T16:03:19+00:00 |  | 000083576-01 | Joyce | Gabbard | MERCY HEALTH PHYSICIANS | 942580 | JAMES D | ABBOTT | 1598809519 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 11212017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024001 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11212017 | 10312017 | 11032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11212017 | 2017-11-21T12:21:28+00:00 | 025015686-7292 | 000087701-01 | Sara | Weller | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11212017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 11202017 | 11212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121058 | M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 11212017 | 11202017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T11:13:04+00:00 |  | 000017256-01 | WILMA | JENKINS | INTL MED CNSLT OF COLS I | 914616 | NATHAN D | LOTT | 1124291000 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11052017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107027 | R739 | Hyperglycemia, unspecified | ICD10 | 11212017 | 11052017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T13:35:18+00:00 |  | 000033251-01 | CHARLES | ARATA | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120096 | D649, R42 | Dizziness and giddiness | ICD10 | 11212017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11172017 | 2017-11-17T09:16:55+00:00 | 253479207320 | 000026308-01 | DOROTHY | BAILEY | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11162017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117008 | K5660 | Unspecified intestinal obstruction | ICD10 | 11212017 | 11162017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11062017 | 2017-11-06T10:53:37+00:00 |  | 000109083-01 | Freda | Warner | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107018 | J189 | Pneumonia, unspecified organism | ICD10 | 11212017 | 11042017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 11202017 | 2017-11-20T07:50:12+00:00 |  | 000052357-01 | JOHN | SHOOK | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11172017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120046 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11212017 | 11172017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11202017 | 2017-11-20T09:57:15+00:00 | 250744237322 | 000034837-01 | ERNEST | MESSER | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11182017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120026 | R55 | Syncope and collapse | ICD10 | 11212017 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11172017 | 2017-11-17T08:27:52+00:00 |  | 000096949-01 | Carl | Miller | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117043 | K861 | Other chronic pancreatitis | ICD10 | 11212017 | 11162017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11172017 | 2017-11-17T15:57:24+00:00 |  | 000079244-01 | Verne | Biehl | CENTRAL OH HSPISTS INC | 933155 | DANIEL O | MORROW | 1598057853 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120006 | R319 | Hematuria, unspecified | ICD10 | 11212017 | 11162017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T08:17:20+00:00 |  | 000040426-01 | Robert | Hunter | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115061 | M84359S, R296, R569 | Unspecified convulsions | ICD10 | 11212017 | 11142017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T15:50:21+00:00 |  | 000085428-01 | Ruby | Lawson | PULMONARY MED OF DAYTON | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11122017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114089 | R1084, R339 | Retention of urine, unspecified | ICD10 | 11212017 | 11122017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11152017 | 2017-11-15T12:52:45+00:00 |  | 000083319-01 | John | Smith Jr | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11212017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116004 | I160 | HYPERTENSIVE URGENCY | ICD10 | 11212017 | 11142017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11202017 | 2017-11-20T10:44:01+00:00 | 251273117321 | 000034063-01 | NATALIA | WYMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11172017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120048 | J180 | Bronchopneumonia, unspecified organism | ICD10 | 11212017 | 11172017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11092017 | 2017-11-09T08:29:00+00:00 |  | 000049352-01 | BARBARA | SMITH | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109034 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 11212017 | 11082017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11082017 | 2017-11-08T12:32:07+00:00 |  | 000044289-01 | EVELYN | DOLAN | MOUNT CARMEL HLTH PRVDRS | 936924 | CHARLES R | HOLDEN | 1831172329 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11172017 | 11212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108057 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 11212017 | 11172017 | 11212017 | 35301, 37236 | OPEN/PERQ PLACE STENT 1ST | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 11132017 | 2017-11-13T08:51:48+00:00 |  | 000080657-01 | Marva | Johnson | SOUND KENWOOD HSPISTS OF | 924471 | VIDHYA | MURUKESAN | 1003047564 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 11212017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11112017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113114 | A419, L98499, N186, N390, R55, Z992 | Dependence on renal dialysis | ICD10 | 11212017 | 11112017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11142017 | 2017-11-14T14:55:05+00:00 |  | 000109704-01 | David | Wilson | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115048 | E875 | Hyperkalemia | ICD10 | 11212017 | 11132017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T13:16:13+00:00 | 250909407314 | 000104911-01 | PATRICIA | MURPHY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11102017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113062 | N179 | Acute kidney failure, unspecified | ICD10 | 11212017 | 11102017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11152017 | 2017-11-15T09:28:48+00:00 | 265955717318 | 000037403-01 | JANET | CONAWAY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11142017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115009 | I96 | Gangrene, not elsewhere classified | ICD10 | 11212017 | 11142017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11102017 | 2017-11-10T10:32:02+00:00 | 258583527313 | 000016955-01 | SHIRLEY | MUSSETTER | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11092017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110039 | K7460, R109 | Unspecified abdominal pain | ICD10 | 11212017 | 11092017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 11162017 | 2017-11-16T10:15:20+00:00 | 255570427319 | 000078965-01 | Michael | Stanley Jr | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11152017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116018 | L0390, M86159 | Other acute osteomyelitis, unspecified femur | ICD10 | 11212017 | 11152017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11142017 | 2017-11-14T09:47:00+00:00 | 253536237317 | 000115372-01 | Kandy | Staten | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11132017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114028 | M546 | Pain in thoracic spine | ICD10 | 11212017 | 11132017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
