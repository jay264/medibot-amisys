Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-29_thru_2017-10-01_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-29_thru_2017-10-01_OBS
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
| 09262017 | 2017-09-26T10:52:33+00:00 |  | 000108435-01 | Michael | Raquet | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 09292017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 09252017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926039 | K5660 | Unspecified intestinal obstruction | ICD10 | 09292017 | 09252017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04102017 | 2017-04-10T10:47:44+00:00 |  | 000077536-01 | Marjorie | Hicks | SOUND KENWOOD HSPISTS OF | 924450 | RANA K | SINGH | 1518131085 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04072017 | 04142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170502099491.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170411106 | C7931, C7949, E872, L8992, M549, N3000 | Acute cystitis without hematuria | ICD10 | 09292017 | 04072017 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09292017 | 2017-09-29T10:02:42+00:00 | 253245927271 | 000014018-01 | MARY | QUARANTO | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09282017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929007 | R079 | Chest pain, unspecified | ICD10 | 09292017 | 09282017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09262017 | 2017-09-26T07:43:10+00:00 |  | 000105689-01 | RONALD | CONLEY | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09242017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926005 | K5190, R110, Z7952 | Long term (current) use of systemic steroids | ICD10 | 09292017 | 09242017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09272017 | 2017-09-27T09:36:16+00:00 |  | 000084485-01 | Barbara | Tollison | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927036 | N390 | Urinary tract infection, site not specified | ICD10 | 09292017 | 09262017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T11:36:06+00:00 |  | 000089233-01 | John | Austria | ALLIANCE PHYSICIANS INC | 910766 | JACOB C | YANNETTA III | 1992873046 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 09292017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 09202017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921059 | I739 | Peripheral vascular disease, unspecified | ICD10 | 09292017 | 09202017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09282017 | 2017-09-28T08:52:42+00:00 |  | 000117370-01 | Dale | Jenkins | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09292017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09272017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928031 | N179 | Acute kidney failure, unspecified | ICD10 | 09292017 | 09272017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08172017 | 2017-08-17T14:52:38+00:00 |  | 000115398-01 | Lawrence | Cosby | SPRINGFIELD UROLOGY LLC | 903102 | ANANTH | ANNAMRAJU | 1003981168 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 09292017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817057 | C61 | Malignant neoplasm of prostate | ICD10 | 09292017 | 09262017 | 09282017 | 55866 | LAPARO RADICAL PROSTATECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09202017 | 2017-09-20T14:48:14+00:00 |  | 000061212-01 | THELMA | JOHNSON | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09192017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921007 | R109, R7889 | Finding of oth substances, not normally found in blood | ICD10 | 09292017 | 09192017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 09292017 | 2017-09-29T09:28:14+00:00 |  | 000070473-01 | Sandra | Powell | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09282017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929021 | I509 | Heart failure, unspecified | ICD10 | 09292017 | 09282017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09282017 | 2017-09-28T10:49:53+00:00 |  | 000018622-01 | LOIS | VANDYKE SUMMERS | SOUND PHYSICIANS OF OHI0 | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09272017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928044 | E162, G9340 | Encephalopathy, unspecified | ICD10 | 09292017 | 09272017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T09:17:22+00:00 |  | 000028803-01 | JANE | ADAMS | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09242017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925051 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 09292017 | 09242017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09282017 | 2017-09-28T09:04:21+00:00 | 258333927270 | 000072532-01 | DAVID | WARD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09292017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09272017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928010 | R079 | Chest pain, unspecified | ICD10 | 09292017 | 09272017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09282017 | 2017-09-28T09:00:43+00:00 | 251643567270 | 000003153-01 | MARGARET | ERVIN | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09272017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928009 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 09292017 | 09272017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09272017 | 2017-09-27T11:08:17+00:00 |  | 000100910-01 | David | Swafford | ALLIANCE PHYSICIANS INC | 906931 | HARVEY S | HAHN | 1811971039 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09292017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927046 | I350, R531 | Weakness | ICD10 | 09292017 | 09262017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09282017 | 2017-09-28T15:39:58+00:00 | 262563527271 | 000060071-01 | NORMA | ANDERSEN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09282017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928078 | I4891 | Unspecified atrial fibrillation | ICD10 | 09292017 | 09282017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09272017 | 2017-09-27T09:49:29+00:00 | 252127127269 | 000021075-01 | LAURA | NIXON | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09262017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927028 | J159 | Unspecified bacterial pneumonia | ICD10 | 09292017 | 09262017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09062017 | 2017-09-06T15:36:08+00:00 |  | 000105255-01 | Janice | Sheridan | ORTHO ASSOC OF DAYTON | 913137 | LANCE M | TIGYER | 1558320408 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907033 | M4806 | Spinal stenosis, lumbar region | ICD10 | 09292017 | 09202017 | 09212017 | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 2 | 1, 2 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09262017 | 2017-09-26T14:24:58+00:00 |  | 000038090-01 | RITA | SHONK | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 09252017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926073 | I639, N19, N390 | Urinary tract infection, site not specified | ICD10 | 09292017 | 09252017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09182017 | 2017-09-18T16:21:45+00:00 |  | 000108505-01 | Kenneth | Parsons | SOUND KENWOOD HSPISTS OF | 927326 | UMASANKAR | KAKUMANU | 1699068312 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 09162017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919111 | K529, R112 | Nausea with vomiting, unspecified | ICD10 | 09292017 | 09162017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09282017 | 2017-09-28T07:29:08+00:00 |  | 000027026-01 | KENNETH | OESTERLE | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09272017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928003 | E8342, E876 | Hypokalemia | ICD10 | 09292017 | 09272017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T13:47:05+00:00 |  | 000053741-01 | WILLIAM | SHULL | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09242017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925099 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09292017 | 09242017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08182017 | 2017-08-18T11:51:46+00:00 |  | 000074937-01 | Josie | Fields | TRIHEALTH H LLC | 930438 |  | TRIHEALTH H LLC | 1548695638 | TRIHEALTH H LLC | 930438 | 1548695638 | TRIHEALTH H LLC | 1548695638 | Observation | OBSV | Concurrent Review | CONC |  | TRIHEALTH H LLC | 09292017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 08172017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821058 | R079 | Chest pain, unspecified | ICD10 | 09292017 | 08172017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T09:13:02+00:00 |  | 000009126-01 | BETTY | HELSER | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09222017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925050 | R0602 | Shortness of breath | ICD10 | 09292017 | 09222017 | 09232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08232017 | 2017-08-23T13:37:07+00:00 |  | 000117765-01 | James | Gower | LANCASTER SURGICAL ASSOC | 936219 | TIMOTHY J | CUSTER | 1144211418 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823059 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 09292017 | 09262017 | 09282017 | 43644, 43645 | LAP GASTR BYPASS INCL SMLL I | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 09282017 | 2017-09-28T08:55:12+00:00 | 252901447270 | 000000971-01 | LELAND | HESS | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09272017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928008 | E860 | Dehydration | ICD10 | 09292017 | 09272017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
