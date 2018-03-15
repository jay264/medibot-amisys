Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-12_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-12_OBS
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
| 01302018 | 2018-01-30T09:17:12+00:00 |  | 000076219-01 | Betty | Hillyard | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130078 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03122018 | 03052018 | 03082018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03022018 | 2018-03-02T11:41:31+00:00 |  | 000078403-01 | Ervan | Lail | HOSPITALIST MEDICINE PHY | 924227 | BRIAN | WEBSTER | 1366567372 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03122018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 02282018 | 03022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302024 | I4891 | Unspecified atrial fibrillation | ICD10 | 03122018 | 02282018 | 03022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T12:06:54+00:00 |  | 000081066-01 | Charles | Buck | FAIRFIELD HLTHCARE PROFS | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307056 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03122018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02152018 | 2018-02-15T13:25:56+00:00 |  | 000077676-01 | Velvet | Beckelhimer | SOUND KENWOOD HSPISTS OF | 927955 | WILLIAM J | FORTON | 1902067853 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03122018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02142018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215067 | I200 | Unstable angina | ICD10 | 03122018 | 02142018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T07:30:04+00:00 |  | 000042800-01 | HELEN | FRANCIS | MERCY MEMORIAL HOSPITAL - CAH | 902498 |  | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307020 | E079, I482, J189, S2241XA, W19XXXA | Unspecified fall, initial encounter | ICD10 | 03122018 | 03062018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03062018 | 2018-03-06T16:58:16+00:00 |  | 000097360-01 | Edith | Jackson | ORTHO ASSOC OF DAYTON | 910785 | THOMAS M | COOK | 1942281308 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312014 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03122018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03022018 | 2018-03-02T08:00:18+00:00 |  | 000039177-01 | BETTE | DAVIS | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03012018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302007 | R0602 | Shortness of breath | ICD10 | 03122018 | 03012018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03052018 | 2018-03-05T09:50:42+00:00 |  | 000009345-01 | ROLAND | GILBERT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03022018 | 03042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305011 | K5900 | Constipation, unspecified | ICD10 | 03122018 | 03022018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03052018 | 2018-03-05T11:05:59+00:00 |  | 000117156-01 | CHARLES | BURKARD | HIGHLAND DISTRICT HSP PR | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03022018 | 03032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305089 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03122018 | 03022018 | 03032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03062018 | 2018-03-06T09:55:52+00:00 |  | 000083731-01 | Delmer | McCormick | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306011 | R109 | Unspecified abdominal pain | ICD10 | 03122018 | 03052018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03052018 | 2018-03-05T16:16:18+00:00 |  | 000087937-01 | James | Ridder | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03022018 | 03042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306048 | E876, N179 | Acute kidney failure, unspecified | ICD10 | 03122018 | 03022018 | 03042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T09:39:16+00:00 |  | 000086413-01 | Donna | Wolfe | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307008 | R109 | Unspecified abdominal pain | ICD10 | 03122018 | 03062018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03072018 | 2018-03-07T07:23:38+00:00 |  | 000096630-01 | Nancy | Becker | MERCY HEALTH PHYSICIANS | 921024 | VANSHIPAL S | PURI | 1942300264 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03122018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307018 | I200 | Unstable angina | ICD10 | 03122018 | 03062018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03072018 | 2018-03-07T09:23:53+00:00 |  | 000078838-01 | Melvin | Lane | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03062018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307033 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03122018 | 03062018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03072018 | 2018-03-07T09:50:37+00:00 |  | 000051987-01 | PATRICIA | STREBER | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307036 | N390 | Urinary tract infection, site not specified | ICD10 | 03122018 | 03062018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03082018 | 2018-03-08T08:55:28+00:00 |  | 000078092-01 | Charles | Kucharski | AHMED, IMTIAZ | 901387 | IMTIAZ | AHMED | 1619986155 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308003 | M4806 | Spinal stenosis, lumbar region | ICD10 | 03122018 | 03072018 | 03082018 | 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 03082018 | 2018-03-08T09:00:12+00:00 |  | 000035522-01 | JACK | SAUNER | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308012 | N390 | Urinary tract infection, site not specified | ICD10 | 03122018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T09:52:33+00:00 |  | 000066667-01 | Walter | Gorrell | LICKING MEM HLTH PROF | 937365 | SHARRIE A | RAY | 1689751372 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308032 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 03122018 | 03072018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T14:35:08+00:00 |  | 000070824-01 | Thomas | Beaver | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03072018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308044 | R079 | Chest pain, unspecified | ICD10 | 03122018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T10:37:31+00:00 |  | 000120921-01 | Sondra | Klontz | HOSPITALIST MEDICINE PHY | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308045 | E876, I959 | Hypotension, unspecified | ICD10 | 03122018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03082018 | 2018-03-08T14:50:32+00:00 |  | 000111408-01 | Hubert | Schmelzer Jr | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03082018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308064 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 03122018 | 03082018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T07:41:58+00:00 |  | 000072962-01 | Richard | Coates | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309003 | I509 | Heart failure, unspecified | ICD10 | 03122018 | 03082018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T09:18:55+00:00 |  | 000037906-01 | RICHARD | GRAVES | EMERGENCY SERVICES INC | 936673 | STEVEN C | GENTILE | 1841278389 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309008 | R079 | Chest pain, unspecified | ICD10 | 03122018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03092018 | 2018-03-09T09:25:48+00:00 |  | 000071941-01 | Lowell | Adams | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309011 | I639 | Cerebral infarction, unspecified | ICD10 | 03122018 | 03082018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03092018 | 2018-03-09T09:29:42+00:00 |  | 000051267-01 | Darlena | Rutledge | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03082018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309012 | R079 | Chest pain, unspecified | ICD10 | 03122018 | 03082018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T12:03:45+00:00 |  | 000032424-01 | RITA | JENKINS | SARASOTA MEMORIAL HSP | 934661 |  | SARASOTA MEMORIAL HOSPITAL | 1245294826 | SARASOTA MEMORIAL HSP | 934661 | 1245294826 | SARASOTA MEMORIAL HOSPITAL | 1245294826 | Observation | OBSV | Concurrent Review | CONC |  | SARASOTA MEMORIAL HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309043 | R100 | Acute abdomen | ICD10 | 03122018 | 03082018 | 03112018 | 99218 | INITIAL OBSERVATION CARE, PER DAY, FOR THE EVALUATION AND MANAGEMENT O | CPT | 0 | 1 |  | 4 | CPT | C4 |  |  |  | 3.0 |
| 03092018 | 2018-03-09T11:30:11+00:00 |  | 000031682-01 | WILLIAM | BOWLING | LICKING MEM HLTH PROF | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309047 | R079 | Chest pain, unspecified | ICD10 | 03122018 | 03082018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T08:20:45+00:00 |  | 000060692-01 | ROBERT | ROBERTS | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03092018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312056 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 03122018 | 03092018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T08:22:57+00:00 |  | 000022919-01 | Charles | Bigham | FAIRFIELD HLTHCARE PROFS | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03102018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312061 | R29810 | Facial weakness | ICD10 | 03122018 | 03102018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T14:42:27+00:00 |  | 000024165-01 | TREVOR | MUSE | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03062018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312080 | R6889 | Other general symptoms and signs | ICD10 | 03122018 | 03062018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T15:48:14+00:00 |  | 000006560-01 | ALICE | JOHNSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03092018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312101 | R6889 | Other general symptoms and signs | ICD10 | 03122018 | 03092018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T15:52:05+00:00 |  | 000110263-01 | CATHERINE | COOPER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03092018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312103 | R6889 | Other general symptoms and signs | ICD10 | 03122018 | 03092018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T15:55:26+00:00 |  | 000004481-01 | LUCILLE | SPRADLIN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03102018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312104 | R6889 | Other general symptoms and signs | ICD10 | 03122018 | 03102018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T15:59:12+00:00 |  | 000044247-01 | ERMOND | LILLY | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03112018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312106 | R6889 | Other general symptoms and signs | ICD10 | 03122018 | 03112018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T16:03:09+00:00 |  | 000010281-01 | MARY | SCHLANGER | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03122018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03092018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312107 | R6889 | Other general symptoms and signs | ICD10 | 03122018 | 03092018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
