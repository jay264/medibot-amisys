Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-08_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-08_OBS
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
| 01102018 | 2018-01-10T11:55:04+00:00 |  | 000098001-01 | Virginia | Delong | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110064 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 02082018 | 02062018 | 02072018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01262018 | 2018-01-26T14:50:09+00:00 |  | 000083465-01 | Judy | Tarrence | GRANDVIEW HOSPITAL & SOU | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01252018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126062 | R0902 | Hypoxemia | ICD10 | 02082018 | 01252018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12182017 | 2017-12-18T11:21:17+00:00 |  | 000104563-01 | Mary | Jackson | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218094 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02082018 | 02052018 | 02072018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01042018 | 2018-01-04T15:22:58+00:00 |  | 000101425-01 | Ronald | Gross | THE UROLOGY GROUP | 951952 | STEPHEN F | KAPPA | 1356600969 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02082018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01252018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104114 | C61 | Malignant neoplasm of prostate | ICD10 | 02082018 | 01252018 | 01262018 | 55866, 38770 | PELVIC LYMPHAD. UNILAT. | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01052018 | 2018-01-05T14:20:40+00:00 |  | 000038078-01 | ANN | BEALL | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105074 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02082018 | 02052018 | 02072018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01102018 | 2018-01-10T11:26:13+00:00 |  | 000096389-01 | William | Langenberg | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01092018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180117151458.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110049 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 02082018 | 01092018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01242018 | 2018-01-24T16:18:27+00:00 |  | 000108078-01 | Christine | Allen | ORTHO INSTITUTE OF DAYTO | 913991 | RYAN D | BAUMAN | 1760455489 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01302018 | 02012018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125003 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 02082018 | 01302018 | 02012018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01292018 | 2018-01-29T09:21:06+00:00 |  | 000066510-01 | THOMAS | BARNETT | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01262018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129040 | R079 | Chest pain, unspecified | ICD10 | 02082018 | 01262018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01302018 | 2018-01-30T11:36:03+00:00 |  | 000049702-01 | DONALD | LEWIS | DAYTON CHEST MEDICINE | 923217 | NAVEENA | SALLAPUDI | 1982709325 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01292018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130084 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 02082018 | 01292018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01312018 | 2018-01-31T10:49:09+00:00 |  | 000119012-01 | Gary | Spencer | ALLIANCE PHYSICIANS INC | 901691 | GARY L | ANDERSON | 1891761698 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02082018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 01302018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131063 | E872, R1084 | Generalized abdominal pain | ICD10 | 02082018 | 01302018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01312018 | 2018-01-31T13:45:40+00:00 |  | 000110656-01 | Larry | Roach | TRIHEALTH G LLC | 948371 | ANJUM F | NAJEED | 1831499243 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Observation | OBSV | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 02082018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01302018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131094 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 02082018 | 01302018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02032018 | 2018-02-03T15:02:03+00:00 |  | 000028393-01 | SAMMY | JUNK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02022018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205017 | M6281 | Muscle weakness (generalized) | ICD10 | 02082018 | 02022018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02052018 | 2018-02-05T09:37:15+00:00 |  | 000090824-01 | VIRGINIA | WALTERS | UMERANI, AJAZ | 902121 | AJAZ | UMERANI | 1104927797 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02022018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205074 | R030, R040, R0902 | Hypoxemia | ICD10 | 02082018 | 02022018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T09:00:18+00:00 |  | 000083820-01 | Don | Conrad | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02042018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205075 | R109 | Unspecified abdominal pain | ICD10 | 02082018 | 02042018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02062018 | 2018-02-06T08:44:37+00:00 |  | 000021326-01 | Carl | Noland | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206022 | R29810 | Facial weakness | ICD10 | 02082018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T09:33:03+00:00 |  | 000118442-01 | Ricky | Klema | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206040 | R079 | Chest pain, unspecified | ICD10 | 02082018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T11:16:53+00:00 |  | 000050461-01 | JUDY | BOWDLE | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206050 | M549 | Dorsalgia, unspecified | ICD10 | 02082018 | 02052018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T12:46:23+00:00 |  | 000040994-01 | Jane | Gischler | HOSPITALIST MEDICINE PHY | 923027 | NAMRATHA R | MAPAKSHI | 1972738235 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 02042018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205088 | R296, T148 | Other injury of unspecified body region | ICD10 | 02082018 | 02042018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T12:46:23+00:00 |  | 000026976-01 | NOLA | SMITH | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02042018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205091 | R079 | Chest pain, unspecified | ICD10 | 02082018 | 02042018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T09:35:41+00:00 |  | 000011076-01 | MARY | SMITH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02042018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205094 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02082018 | 02042018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02052018 | 2018-02-05T10:55:06+00:00 |  | 000074833-01 | Arthur | Arnett | KHN IP MED | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02042018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205097 | R0789, R42 | Dizziness and giddiness | ICD10 | 02082018 | 02042018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T11:28:02+00:00 |  | 000100933-01 | Juanita | Lamm | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02032018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205101 | J441, R911 | Solitary pulmonary nodule | ICD10 | 02082018 | 02032018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T11:42:19+00:00 |  | 000096590-01 | Edward | Loving | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 02082018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02022018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205102 | I481 | Persistent atrial fibrillation | ICD10 | 02082018 | 02022018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02052018 | 2018-02-05T12:24:17+00:00 |  | 000067295-01 | JAMES | WILSON | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02032018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205111 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02082018 | 02032018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T12:25:39+00:00 |  | 000091640-01 | Paul | Montalto | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02032018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205112 | I639 | Cerebral infarction, unspecified | ICD10 | 02082018 | 02032018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T16:34:44+00:00 |  | 000022634-01 | Carole | Patmiou | MOUNT CARMEL HLTH SYS | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206021 | J101, J40 | Bronchitis, not specified as acute or chronic | ICD10 | 02082018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02062018 | 2018-02-06T09:27:22+00:00 |  | 000051748-01 | ROZANN | BELL | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206029 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02082018 | 02052018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02062018 | 2018-02-06T09:31:07+00:00 |  | 000120331-01 | Irene | Mcmullen | HOSPITALIST MEDICINE PHY | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02042018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206038 | I509 | Heart failure, unspecified | ICD10 | 02082018 | 02042018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02072018 | 2018-02-07T11:53:06+00:00 |  | 000109463-01 | John | Johnson | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02082018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02062018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207041 | R079 | Chest pain, unspecified | ICD10 | 02082018 | 02062018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02062018 | 2018-02-06T14:58:30+00:00 |  | 000095111-01 | James | Hammerly | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 02082018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207071 | E871, F10929 | Alcohol use, unspecified with intoxication, unspecified | ICD10 | 02082018 | 02052018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02082018 | 2018-02-08T09:18:35+00:00 |  | 000116082-01 | Denver | Baisden Jr | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02082018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208034 | I959, R55 | Syncope and collapse | ICD10 | 02082018 | 02072018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
