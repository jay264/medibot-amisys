Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-06_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-06_OBS
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
| 03052018 | 2018-03-05T07:48:05+00:00 |  | 000079638-01 | Kenneth | Hammond | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL | 905693 | 1811097223 | MERCY MEMORIAL HOSPITAL | 1811097223 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL | 03062018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03022018 | 03042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305043 | J101, R6889 | Other general symptoms and signs | ICD10 | 03062018 | 03022018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02222018 | 2018-02-22T09:17:21+00:00 |  | 000120489-01 | Richard | Guseman | FAIRFIELD HLTHCARE PROFS | 932438 | OMAR | AL-NOURI | 1770742264 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02282018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180301159345.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222017 | I70212, I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 03062018 | 02282018 | 03012018 | 34705, 35661 | BYPASS GR, NT VN, FEMORAL-FEMORAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 03052018 | 2018-03-05T09:33:18+00:00 |  | 000023694-01 | BETTY | COOPER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305007 | R4182 | Altered mental status, unspecified | ICD10 | 03062018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03032018 | 2018-03-03T14:19:55+00:00 |  | 000081661-01 | Charles | Hart | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305036 | I2699, R55 | Syncope and collapse | ICD10 | 03062018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01222018 | 2018-01-22T11:41:17+00:00 |  | 000111944-01 | Barbara A | Kunz | MIAMI VALLEY HSPISTS GRP | 950067 | SATISH | JAYARAM | 1871842807 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01202018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122098 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03062018 | 01202018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01222018 | 2018-01-22T11:41:17+00:00 |  | 000117242-01 | Joanne | Dick | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01212018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122099 | R079, S4292XG, W19XXXA | Unspecified fall, initial encounter | ICD10 | 03062018 | 01212018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01232018 | 2018-01-23T14:00:47+00:00 |  | 000053167-01 | Robert | Bledsoe | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02262018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123080 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03062018 | 02262018 | 03012018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 02012018 | 2018-02-01T09:24:46+00:00 |  | 000112284-01 | Rowland | Carper Jr | ALLIANCE PHYSICIANS INC | 902849 | THOMAS M | RUFF | 1639178304 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03062018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201025 | R079 | Chest pain, unspecified | ICD10 | 03062018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02142018 | 2018-02-14T11:45:27+00:00 |  | 000045118-01 | RUTH | KNAPP | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02132018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214027 | R899 | Unsp abnormal finding in specimens from oth org/tiss | ICD10 | 03062018 | 02132018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02162018 | 2018-02-16T10:35:50+00:00 |  | 000043722-01 | HAROLD | WHEELER | ROSS ER GRP PC INC | 940967 | ASHLEY M | SEE-PFEIFFER | 1730369448 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02142018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216037 | R4182, W19XXXA | Unspecified fall, initial encounter | ICD10 | 03062018 | 02142018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02162018 | 2018-02-16T10:43:35+00:00 |  | 000114417-01 | George | Merckling | KNOX COMMUNITY HOSP GRP | 935543 | DAVID H | BROWN SR | 1578536181 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02152018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216041 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 03062018 | 02152018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02192018 | 2018-02-19T09:14:12+00:00 |  | 000097955-01 | Raymond | Jones | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02182018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219025 | J101, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03062018 | 02182018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02272018 | 2018-02-27T07:15:38+00:00 |  | 000077817-01 | Charles | Reeves | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02262018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227033 | D649, R195, R55 | Syncope and collapse | ICD10 | 03062018 | 02262018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02272018 | 2018-02-27T13:56:57+00:00 |  | 000109418-01 | CHARLES | BROWN | KNOX COMMUNITY HSP PHYS | 900017 | MOHAMUD S | MOHAMED | 1700869377 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02262018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227072 | D72829, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03062018 | 02262018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02282018 | 2018-02-28T07:55:44+00:00 |  | 000120571-01 | Marsha | Morgan | HOSPITALIST MEDICINE PHY | 928645 | MUHAMMAD R | AHMAD | 1255355319 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03062018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02272018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228012 | D62, F1010, K922, R42, R531 | Weakness | ICD10 | 03062018 | 02272018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T08:01:50+00:00 |  | 000091395-01 | Elizabeth | Cepluch | HOSPITALIST MEDICINE PHY | 925203 | ASAD S | ALI | 1053386938 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03062018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02272018 | 03012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228013 | A419, J101, R296, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 03062018 | 02272018 | 03012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02282018 | 2018-02-28T08:48:42+00:00 |  | 000081472-01 | Kenneth | Hart | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02272018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180228029 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03062018 | 02272018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03022018 | 2018-03-02T12:52:18+00:00 |  | 000099838-01 | Linda | Smith | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02282018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302047 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 03062018 | 02282018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T10:19:54+00:00 |  | 000049998-01 | NANCY | HOLLAND | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03032018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305027 | I480 | Paroxysmal atrial fibrillation | ICD10 | 03062018 | 03032018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T08:29:30+00:00 |  | 000079919-01 | William | Day | MEDICINE INPATIENT GROUP | 926079 | MADHU P | CHALASANI | 1780630947 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 03062018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305064 | R0600, R42 | Dizziness and giddiness | ICD10 | 03062018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03062018 | 2018-03-06T09:37:36+00:00 |  | 000066321-01 | BILL | BEARD | MOUNT CARMEL URG CARE | 934846 | KEITH R | SMITH | 1730128919 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03042018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306007 | R55, Z955 | Presence of coronary angioplasty implant and graft | ICD10 | 03062018 | 03042018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03052018 | 2018-03-05T11:01:45+00:00 |  | 000120171-01 | Mary | Hoshor | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305087 | R079 | Chest pain, unspecified | ICD10 | 03062018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03052018 | 2018-03-05T11:15:00+00:00 |  | 000094720-01 | John | Gillilan | CEN OH PRIMARY CARE SPEC | 911172 | JOO A | LEE | 1598924524 | DUBLIN METHODIST HOSP | 905908 | 1801937008 | DUBLIN METHODIST HOSPITAL | 1801937008 | Observation | OBSV | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03042018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305090 | R200 | Anesthesia of skin | ICD10 | 03062018 | 03042018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03052018 | 2018-03-05T11:22:31+00:00 |  | 000102110-01 | Angelyn | Blakeman | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03012018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305091 | R4701 | Aphasia | ICD10 | 03062018 | 03012018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T13:20:51+00:00 |  | 000107869-01 | Tammy | Rodgers | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03062018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03032018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305103 | R112 | Nausea with vomiting, unspecified | ICD10 | 03062018 | 03032018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T16:15:26+00:00 |  | 000095578-01 | William | Morris | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305119 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 03062018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03062018 | 2018-03-06T08:42:43+00:00 |  | 000012621-01 | H | MARINELLO | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03062018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03022018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306003 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 03062018 | 03022018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
