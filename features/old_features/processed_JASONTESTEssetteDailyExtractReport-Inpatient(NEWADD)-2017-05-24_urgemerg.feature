Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-24_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-24_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
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
| 03132017 | 2017-03-13T11:55:24+00:00 |  | 000087250-01 | Larry | Morey | MAYFIELD CLINIC | 920903 | GEORGE T | MANDYBUR | 1437188596 | UNIVERSITY HOSPITAL | 925100 | 1033154026 | UNIVERSITY OF CINCINNATI MED CTR1500 | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY OF CINCINNATI MED CTR1500 | 05242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05092017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170313072 | G501 | Atypical facial pain | ICD10 | 05242017 | 05092017 | 05112017 | 61860, 61781 | SCAN PROC CRANIAL INTRA | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 04122017 | 2017-04-12T11:59:54+00:00 |  | 000075258-01 | Kenneth | Wilson | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412059 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05242017 | 05082017 | 05112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04242017 | 2017-04-24T13:01:21+00:00 |  | 000102153-01 | Dave | Lacey | ARA JACKSON DIALYSIS LLC | 933535 |  | ARA JACKSON DIALYSIS LLC | 1720220213 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 05242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04242017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424076 | I639 | Cerebral infarction, unspecified | ICD10 | 05242017 | 04242017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 04252017 | 2017-04-25T10:49:12+00:00 |  | 000103955-01 | Rita | Farley | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05032017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425066 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 05242017 | 05032017 | 05242017 | 48150 | PANCREATECTOMY-SUBTOTAL-WHIPPLE | CPT | 1 | 1 | Approved | 22 | CPT | C4 |  |  |  | 21.0 |
| 04252017 | 2017-04-25T15:08:09+00:00 | 025536314-7142 | 000079627-01 | Lisa | Woods | CEN OH NEURO SURGEONS IN | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05242017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05232017 | 05242017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425118 | M47896 | Other spondylosis, lumbar region | ICD10 | 05242017 | 05232017 | 05242017 | 22558, 22845, 22853, 20936, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04262017 | 2017-04-26T16:13:25+00:00 |  | 000006042-01 | ANNA | KRANNITZ | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427047 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 05242017 | 04252017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 05022017 | 2017-05-02T11:18:01+00:00 |  | 000091188-01 | Edward | Sabo Jr | RECONSTRUCTIVE ORTHOS & | 924273 | MATTHEW A | LANGENDERFER | 1194731398 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05172017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502064 | T84092A, Z96653 | Presence of artificial knee joint, bilateral | ICD10 | 05242017 | 05172017 | 05202017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 05022017 | 2017-05-02T12:40:42+00:00 |  | 000085578-01 | Everett | Edwards | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503024 | R0602 | Shortness of breath | ICD10 | 05242017 | 05012017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 05092017 | 2017-05-09T07:54:57+00:00 |  | 000082819-01 | Gerard | Hood | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05082017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509010 | C259, E860, N179 | Acute kidney failure, unspecified | ICD10 | 05242017 | 05082017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 05052017 | 2017-05-05T12:26:31+00:00 |  | 000107492-01 | Helen | Howard | FAIRFIELD HLTHCARE PROFS | 905153 | P ARYEH | COHEN | 1306063656 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509022 | M869 | Osteomyelitis, unspecified | ICD10 | 05242017 | 05042017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05092017 | 2017-05-09T10:09:58+00:00 |  | 000083167-01 | Patricia | Preston | UNIVERSITY OF CINCINNATI | 931936 | MADISON C | CUFFY | 1134395254 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 944170 | 1689618423 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 1689618423 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY OF CINCINNATI MEDICAL CEN | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509130 | N186 | End stage renal disease | ICD10 | 05242017 | 05092017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 05102017 | 2017-05-10T10:37:47+00:00 |  | 000006479-01 | LENA | EVANS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05092017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510033 | T8119XA | Other postprocedural shock, initial encounter | ICD10 | 05242017 | 05092017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 05112017 | 2017-05-11T15:51:27+00:00 |  | 000110660-01 | Linda | Carl | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05172017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511082 | I25110 | Athscl heart disease of native cor art w unstable ang pctrs | ICD10 | 05242017 | 05172017 | 05232017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 05122017 | 2017-05-12T14:03:54+00:00 |  | 000015060-01 | JOHN | DUDA | HAQUE, MAX M | 904471 | MAX M | HAQUE | 1700884111 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512085 | F329, R45851 | Suicidal ideations | ICD10 | 05242017 | 05102017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05122017 | 2017-05-12T14:19:03+00:00 |  | 000117471-01 | WAYNE | BAUER | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05242017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05122017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170513009 | R079, R55 | Syncope and collapse | ICD10 | 05242017 | 05122017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05142017 | 2017-05-14T13:33:12+00:00 |  | 000077467-01 | James | Wyrick | SOUND KENWOOD HSPISTS OF | 927326 | UMASANKAR | KAKUMANU | 1699068312 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05122017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515002 | N189 | Chronic kidney disease, unspecified | ICD10 | 05242017 | 05122017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T11:30:51+00:00 |  | 000087133-01 | Billie | Tucker | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05152017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515051 | M84459A | Pathological fracture, hip, unsp, init encntr for fracture | ICD10 | 05242017 | 05152017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05152017 | 2017-05-15T13:04:57+00:00 |  | 000096805-01 | Ann | Hartshorn | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 05122017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515081 | E6601, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05242017 | 05122017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05152017 | 2017-05-15T13:17:21+00:00 |  | 000048446-01 | PATRICIA | WILLIAMS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05132017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515090 | K5660 | Unspecified intestinal obstruction | ICD10 | 05242017 | 05132017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05152017 | 2017-05-15T12:43:05+00:00 |  | 000056450-01 | MARTHA | PECK | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05132017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515091 | D649, E8342, I509, R0902 | Hypoxemia | ICD10 | 05242017 | 05132017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05162017 | 2017-05-16T12:04:08+00:00 |  | 000098818-01 | Lenard | Milburn | ALLIANCE PHYSICIANS INC | 910964 | SALEEM | AHMAD | 1013973429 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05242017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516075 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 05242017 | 05152017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05162017 | 2017-05-16T12:04:46+00:00 |  | 000108934-01 | RICHARD | BAKER | ATRIUM HOSPITALIST GROUP | 948011 | DANIEL J | SHEPS | 1245580331 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Inpatient | IP | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 05242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516077 | E872, N179, R0600 | Dyspnea, unspecified | ICD10 | 05242017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05172017 | 2017-05-17T10:33:21+00:00 |  | 000048152-01 | MICHAEL | SIVICK | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05162017 | 05242017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517025 | J159 | Unspecified bacterial pneumonia | ICD10 | 05242017 | 05162017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05172017 | 2017-05-17T11:00:53+00:00 |  | 000029415-01 | DOROTHY | KELLER | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 05162017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517026 | R531 | Weakness | ICD10 | 05242017 | 05162017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05172017 | 2017-05-17T12:30:34+00:00 |  | 000021195-01 | MARY | HOLTON | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05162017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517035 | I4891 | Unspecified atrial fibrillation | ICD10 | 05242017 | 05162017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05182017 | 2017-05-18T09:10:18+00:00 |  | 000086031-01 | Martha | Pollock | SPRINGFIELD HEART SURGEO | 901619 | SURENDER R | NERAVETLA | 1801843602 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518036 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 05242017 | 05222017 | 05232017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05182017 | 2017-05-18T09:57:42+00:00 | 026516843-7139 | 000108489-01 | Barbara | Mendenhall | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518060 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05242017 | 05222017 | 05232017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05182017 | 2017-05-18T15:22:45+00:00 |  | 000003926-01 | Joseph | Duboe | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Reports | ACO | Inpatient | 05172017 | 05232017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518064 | A419 | Sepsis, unspecified organism | ICD10 | 05242017 | 05172017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05192017 | 2017-05-19T11:25:41+00:00 |  | 000105509-01 | Mary | Pool | TRIHEALTH G LLC | 949131 | JONATHAN M | SCHWARTZ | 1104994631 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA HOSPITAL INC | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA HOSPITAL INC | 05242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05182017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519048 | R0602 | Shortness of breath | ICD10 | 05242017 | 05182017 | 05212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05192017 | 2017-05-19T13:32:55+00:00 |  | 000031212-01 | JERRY | MUSICK | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05192017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519060 | A419 | Sepsis, unspecified organism | ICD10 | 05242017 | 05192017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05192017 | 2017-05-19T13:47:41+00:00 |  | 000015343-01 | ARTHUR | POTTER | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05182017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519063 | E781, I509 | Heart failure, unspecified | ICD10 | 05242017 | 05182017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05192017 | 2017-05-19T14:06:51+00:00 |  | 000091751-01 | Ronnie | Smith | SOUND KENWOOD HSPISTS OF | 943053 | JEFFREY T | HAUSFELD | 1023374220 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 05242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05192017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519073 | D689, I509, J209, J441, J45909, J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 05242017 | 05192017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05192017 | 2017-05-19T14:24:34+00:00 |  | 000081245-01 | Steven | Vititoe | PIEDMONT HOSPITAL | 903718 |  | PIEDMONT HOSPITAL | 1962461681 | PIEDMONT HOSPITAL | 903718 | 1962461681 | PIEDMONT HOSPITAL | 1962461681 | Inpatient | IP | Concurrent Review | CONC |  | PIEDMONT HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05192017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519078 | E860, R509, R5383 | Other fatigue | ICD10 | 05242017 | 05192017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05192017 | 2017-05-19T15:28:04+00:00 |  | 000074440-01 | Frederick | Ford | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05192017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519080 | I509 | Heart failure, unspecified | ICD10 | 05242017 | 05192017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T08:59:20+00:00 |  | 000015216-01 | MINNIE | BRONSON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | EMR | ACO | Inpatient | 05212017 | 05242017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522014 | I509, R0602 | Shortness of breath | ICD10 | 05242017 | 05212017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T08:27:05+00:00 |  | 000096676-01 | Gregory | Turkov | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05242017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05202017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522037 | R0602 | Shortness of breath | ICD10 | 05242017 | 05202017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T09:36:38+00:00 |  | 000066743-01 | PATRICIA | LEWIS | OSU INTERNAL MED LLC | 915924 | GBEMIGA | SOFOWORA | 1992012579 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05212017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522048 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05242017 | 05212017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T11:07:58+00:00 |  | 000110178-01 | Beatrice | Reid | SOUND KENWOOD HSPISTS OF | 931299 | JIGAR | PATEL | 1497064323 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 05242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05192017 | 05222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522063 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 05242017 | 05192017 | 05222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T11:59:07+00:00 |  | 000029265-01 | MYRIAM | PLACE | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 05212017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522067 | S5290XA | Unsp fracture of unsp forearm, init for clos fx | ICD10 | 05242017 | 05212017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T11:13:54+00:00 |  | 000109378-01 | Donna | Jardine | ADENA MEDICAL GROUP LLC | 902397 | KINGSLEY A | LARTEY | 1376510289 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05212017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522070 | I160 | HYPERTENSIVE URGENCY | ICD10 | 05242017 | 05212017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T12:28:04+00:00 |  | 000023686-01 | RICHARD | HOELSCHER | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05242017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05212017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522075 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05242017 | 05212017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05222017 | 2017-05-22T13:18:34+00:00 | 026106546-7139 | 000116778-01 | Carol | Luaces | MOUNT CARMEL HLTH PRVDRS | 907678 | KANISHKA B | PATEL | 1740491596 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05242017 | Approved | MediGold Essential Care | EMR | ACO | Inpatient | 05192017 | 05232017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522089 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05242017 | 05192017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05242017 | 2017-05-24T08:05:40+00:00 |  | 000114135-01 | Linda | Byerly | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 05232017 | 07242017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524003 | N393 | Stress incontinence (female) (male) | ICD10 | 05242017 | 05232017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05242017 | 2017-05-24T08:16:51+00:00 |  | 000106117-01 | Judith | Jones | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05242017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05232017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524005 | K8000 | Calculus of gallbladder w acute cholecyst w/o obstruction | ICD10 | 05242017 | 05232017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
