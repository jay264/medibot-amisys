Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-09_thru_2018-02-11_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-09_thru_2018-02-11_OBS
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
| 02062018 | 2018-02-06T14:31:10+00:00 |  | 000060176-01 | ARTHUR | SHORT | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206070 | R0602, R55 | Syncope and collapse | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T12:43:25+00:00 |  | 000119827-01 | Hilda | Allen | AINA MEDICAL INC | 939947 | OLAYINKA O | AINA | 1295706976 | ADAMS COUNTY HOSPITAL | 936460 | 0 | ADAMS COUNTY HOSPITAL | 0 | Observation | OBSV | Concurrent Review | CONC |  | ADAMS COUNTY HOSPITAL | 02092018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01292018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131013 | J189 | Pneumonia, unspecified organism | ICD10 | 02092018 | 01292018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T11:13:35+00:00 |  | 000098026-01 | Gary | Lustgarten | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 02032018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205043 | A419 | Sepsis, unspecified organism | ICD10 | 02092018 | 02032018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02062018 | 2018-02-06T08:51:22+00:00 |  | 000077972-01 | Sandy | Daniels | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02042018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206019 | T8450XA | Infect/inflm reaction due to unsp int joint prosth, init | ICD10 | 02092018 | 02042018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01092018 | 2018-01-09T10:57:58+00:00 |  | 000064912-01 | BARBARA | DUNCAN | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109103 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02092018 | 02052018 | 02072018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01262018 | 2018-01-26T14:41:11+00:00 |  | 000073543-01 | Shirley | Ricketts | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129012 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 02092018 | 02022018 | 02052018 | 43281 | LAP PARAESOPHAG HERN REPAIR | CPT | 0 | 1 |  | 4 | CPT | C4 |  |  |  | 3.0 |
| 01292018 | 2018-01-29T13:42:30+00:00 |  | 000026445-01 | REBECCA | MESECHER | THREE RIVERS MEDICAL | 935656 |  | THREE RIVERS MEDICAL | 1063484483 | THREE RIVERS MEDICAL | 935656 | 1063484483 | THREE RIVERS MEDICAL | 1063484483 | Observation | OBSV | Concurrent Review | CONC |  | THREE RIVERS MEDICAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01272018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130042 | J159, R042 | Hemoptysis | ICD10 | 02092018 | 01272018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01312018 | 2018-01-31T14:23:56+00:00 |  | 000093826-01 | Patricia | Kendig | KHN IP MED | 914307 | PARASRAM | RAMDEO | 1821246125 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01302018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131084 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 02092018 | 01302018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02012018 | 2018-02-01T09:26:01+00:00 |  | 000065945-01 | DANIEL | DAUBENMIRE | LABONE OF OHIO INC | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201026 | T3390XA | Superficial frostbite of unspecified sites, init encntr | ICD10 | 02092018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T06:37:05+00:00 |  | 000029400-01 | ELAINE | FILMORE | OSU EMERGENCY MED LLC | 941350 | DANIEL J | BACHMANN | 1184603987 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02092018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 02022018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205016 | R4182, R4789 | Other speech disturbances | ICD10 | 02092018 | 02022018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02032018 | 2018-02-03T17:21:57+00:00 |  | 000107545-01 | Donald | Miller | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02022018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205023 | L7622 | Postproc hemor/hemtom of skin, subcu following oth procedure | ICD10 | 02092018 | 02022018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T08:36:13+00:00 |  | 000099530-01 | Donna | Keyes | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 02092018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02042018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205064 | J09X2, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02092018 | 02042018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T13:45:23+00:00 |  | 000066063-01 | NANCY | WETZEL | COMMUNITY HSPIST LLC | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205107 | C189, C787, I82401, I82422 | Acute embolism and thrombosis of left iliac vein | ICD10 | 02092018 | 02022018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02052018 | 2018-02-05T15:11:26+00:00 |  | 000111446-01 | Gary | Plueckhahn | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02032018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206003 | R0600 | Dyspnea, unspecified | ICD10 | 02092018 | 02032018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02062018 | 2018-02-06T08:09:02+00:00 |  | 000091274-01 | Jeffrey | Miller | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206014 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02062018 | 2018-02-06T08:45:24+00:00 |  | 000016444-01 | CHARLES | HANDLEY | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206042 | E860, N289, R55 | Syncope and collapse | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02082018 | 2018-02-08T09:18:35+00:00 |  | 000021897-01 | MARILYN | MOORE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208030 | R079 | Chest pain, unspecified | ICD10 | 02092018 | 02072018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01262018 | 2018-01-26T08:37:10+00:00 |  | 000108205-01 | Linda | Higgins | ADENA MEDICAL GROUP LLC | 902418 | JOHN J | KELLER | 1700849114 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126042 | I4891 | Unspecified atrial fibrillation | ICD10 | 02092018 | 02062018 | 02082018 | 99221, 99223, 99222, 99231, 99233, 99232, 80299 | QUANTITATION OF DRUG, NOT ELSEWHERE SPECIFIED | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 02042018 | 2018-02-04T17:11:57+00:00 |  | 000000720-01 | DARLENE | DICK | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02032018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205030 | N10, R112 | Nausea with vomiting, unspecified | ICD10 | 02092018 | 02032018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02062018 | 2018-02-06T07:52:37+00:00 |  | 000073143-01 | Geraldine | Forrest | FAIRFIELD COMMUNITY HLTH | 948280 | STEPHANIE | MESKO | 1780926881 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02042018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206024 | E876 | Hypokalemia | ICD10 | 02092018 | 02042018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T10:58:25+00:00 |  | 000029707-01 | DAISY | SEEVERS | ADENA HEALTH SYSTEMS | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206062 | K5669 | Other intestinal obstruction | ICD10 | 02092018 | 02052018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02062018 | 2018-02-06T14:05:23+00:00 |  | 000099839-01 | Dianna | Birt | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 02092018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207003 | E1165, G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02092018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T14:32:30+00:00 |  | 000117951-01 | Melanie | Simpson | MERCY HEALTH PHYSICIANS | 914330 | DANIEL C | ECKERT | 1275742728 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02092018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02052018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207009 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02092018 | 02052018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02062018 | 2018-02-06T15:37:00+00:00 |  | 000025352-01 | MILDRED | CALES | FAIRFIELD HLTHCARE PROFS | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207024 | R0600, R079 | Chest pain, unspecified | ICD10 | 02092018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T11:57:17+00:00 |  | 000081031-01 | Shirley | Thibaut | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207042 | D72829, K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 02092018 | 02062018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T11:59:51+00:00 |  | 000121397-01 | Elizibeth | Gearheart | HOSPITALIST MEDICINE PHY | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207044 | E875, N179 | Acute kidney failure, unspecified | ICD10 | 02092018 | 02062018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T11:53:38+00:00 |  | 000121453-01 | HARRY | HEAGREN | KNOX COMMUNITY HSP PHYS | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207046 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02092018 | 02062018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02072018 | 2018-02-07T13:47:33+00:00 |  | 000042786-01 | SALLY | CARTWRIGHT | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207056 | E162, N390 | Urinary tract infection, site not specified | ICD10 | 02092018 | 02062018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T18:56:10+00:00 |  | 000106381-01 | Doyle | Tatum | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208021 | R4182 | Altered mental status, unspecified | ICD10 | 02092018 | 02062018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02082018 | 2018-02-08T13:31:27+00:00 |  | 000116711-01 | DAVID | BRADFORD | HOSPITALIST MEDICINE PHY | 929478 | BRIAN | KEEGAN | 1225156045 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02092018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02072018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208064 | R079 | Chest pain, unspecified | ICD10 | 02092018 | 02072018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T14:17:02+00:00 |  | 000065766-01 | ARTHUR | CRABTREE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208070 | R29810 | Facial weakness | ICD10 | 02092018 | 02072018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T10:33:41+00:00 |  | 000082920-01 | Mary | Gram | MOUNT CARMEL HLTH SYS | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209036 | R079 | Chest pain, unspecified | ICD10 | 02092018 | 02062018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T10:23:57+00:00 |  | 000037762-01 | ROBERT | VANLUVANEE | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02092018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209042 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02092018 | 02072018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
