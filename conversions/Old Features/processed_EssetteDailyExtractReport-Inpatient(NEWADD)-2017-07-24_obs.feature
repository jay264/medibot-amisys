Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-24_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-24_OBS
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
| 02272017 | 2017-02-27T10:00:22+00:00 | 2017-07-05 | 000114687-01 | PEGGY | REESER | PREMIER WOMENS HLTH OBGY | 935758 | RICHARD J | VILLARREAL | 1609895119 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07052017 | 07062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170227102 | N8111, N814 | Uterovaginal prolapse, unspecified | ICD10 | 07242017 | 07052017 | 07062017 | 58260, 57240 | COLOPLASTY,ANTERIOR VAGINAL WALL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06082017 | 2017-06-08T08:38:54+00:00 |  | 000107910-01 | Darrell | Cummings | MOUNT CARMEL HLTH PRVDRS | 931830 | AMIT | ARORA | 1619143799 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07242017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608015 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 07242017 | 06282017 | 06292017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07142017 | 2017-07-14T13:32:19+00:00 |  | 000081787-01 | Linda | Edwards | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07132017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714054 | R1030 | Lower abdominal pain, unspecified | ICD10 | 07242017 | 07132017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07172017 | 2017-07-17T08:51:07+00:00 |  | 000023881-01 | OTHO | KIDDER | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07142017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718020 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 07242017 | 07142017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07172017 | 2017-07-17T10:56:33+00:00 |  | 000090831-01 | Alice | Horner | MOUNT CARMEL HLTH SYS | 940524 | PATRICK P | YOUSSEF | 1144343484 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 07242017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 07152017 | 07152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718036 | I614, T829XXA | Unsp comp of cardiac and vascular prosth dev/grft, init | ICD10 | 07242017 | 07152017 | 07152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07172017 | 2017-07-17T13:50:18+00:00 |  | 000118601-01 | Dottie | Baver | SERN OHIO ER PHYS LLP | 906496 | VALERIE A | ALIU | 1073692042 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 07242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07162017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718051 | N390 | Urinary tract infection, site not specified | ICD10 | 07242017 | 07162017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07172017 | 2017-07-17T16:21:52+00:00 |  | 000041527-01 | GEORGE | GARDINER | APOGEE MED GRP OHIO INC | 943521 | BERTHA S | VALDIVIESO | 1356571236 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 07242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07152017 | 07172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718075 | R0602, R0689 | Other abnormalities of breathing | ICD10 | 07242017 | 07152017 | 07172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07182017 | 2017-07-18T13:41:12+00:00 |  | 000076154-01 | F | Wells | S DAYTON ACUTE CARE CNSL | 932707 | VINAY K | LINGABATHULA | 1578812129 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 07242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07172017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718125 | E860, K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 07242017 | 07172017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07192017 | 2017-07-19T09:43:46+00:00 | 250628827199 | 000075032-01 | Jerome | Knight | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07182017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719017 | M79605 | Pain in left leg | ICD10 | 07242017 | 07182017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07192017 | 2017-07-19T13:33:19+00:00 |  | 000111363-01 | Sandra | Benoit | S DAYTON ACUTE CARE CNSL | 907795 | MANJULA | SATYANARAYAN | 1558412866 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 07242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07182017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719068 | E860, R1084 | Generalized abdominal pain | ICD10 | 07242017 | 07182017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07192017 | 2017-07-19T13:08:54+00:00 |  | 000084135-01 | Mabel | Rhinehart | AMERICAN HLTH NETWORK OF | 913737 | DAVID L | BOWMAN | 1871521732 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 07242017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07182017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719069 | R609, W19XXXA | Unspecified fall, initial encounter | ICD10 | 07242017 | 07182017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07202017 | 2017-07-20T09:34:56+00:00 | 250269887200 | 000090286-01 | Daniel | Dublin | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07192017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720009 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 07242017 | 07192017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07202017 | 2017-07-20T09:43:04+00:00 | 261244447200 | 000066896-01 | MAGDALENA | JEAN PIERRE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07192017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720013 | I872, N179 | Acute kidney failure, unspecified | ICD10 | 07242017 | 07192017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07202017 | 2017-07-20T09:57:21+00:00 | 253433197200 | 000075879-01 | Mary | Lawson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07202017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720017 | R627 | Adult failure to thrive | ICD10 | 07242017 | 07202017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T10:20:27+00:00 | 259702127200 | 000092673-01 | Jodi | Williams | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07192017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720022 | G43709 | Chronic migraine w/o aura, not intractable, w/o stat migr | ICD10 | 07242017 | 07192017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T08:27:50+00:00 |  | 000078377-01 | Dennis | Miller | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07242017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 07192017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720056 | R0602, R079 | Chest pain, unspecified | ICD10 | 07242017 | 07192017 | 07202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07202017 | 2017-07-20T12:19:29+00:00 |  | 000114525-01 | Joyce | Thompson | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07242017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 07192017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720075 | E872, R5383, R634 | Abnormal weight loss | ICD10 | 07242017 | 07192017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T12:45:14+00:00 |  | 000074264-01 | Ronald | Lane | MARIETTA HLTH CARE PHYS | 915210 | CYNTHIA M | GAERKE | 1538184437 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 07192017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720077 | K5900, N179, R55 | Syncope and collapse | ICD10 | 07242017 | 07192017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07212017 | 2017-07-21T09:25:25+00:00 | 250187227201 | 000051478-01 | KAREN | CIULA | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 07202017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721007 | I4891 | Unspecified atrial fibrillation | ICD10 | 07242017 | 07202017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T09:51:52+00:00 |  | 000078880-01 | Lela | Warden | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07202017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721011 | R42 | Dizziness and giddiness | ICD10 | 07242017 | 07202017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T10:30:12+00:00 |  | 000074716-01 | James | Stewart | UNIVERSITY OF CINCINNATI | 924925 | ROCKY E | PITTMAN | 1881884997 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 07242017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 07202017 | 07222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721031 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 07242017 | 07202017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07242017 | 2017-07-24T08:06:28+00:00 |  | 000030282-01 | SHIRLEY | BOBO | HMP OF OHIO PC | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07212017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724007 | G40309 | Gen idiopathic epilepsy, not intractable, w/o stat epi | ICD10 | 07242017 | 07212017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07242017 | 2017-07-24T08:42:07+00:00 | 259111227204 | 000009528-01 | BRUCE | BESTER | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07232017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724011 | R55 | Syncope and collapse | ICD10 | 07242017 | 07232017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T09:28:34+00:00 | 026117532-7199 | 000070297-01 | Jewell | Hinton | NORTHRIDGE FAM PRCT LLC | 937218 | JAMES A | MOSLEY | 1417948076 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 07182017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724021 | R0602 | Shortness of breath | ICD10 | 07242017 | 07182017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07242017 | 2017-07-24T09:39:01+00:00 | 250501107203 | 000116269-01 | Everett | Holbrook | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07232017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724026 | N201 | Calculus of ureter | ICD10 | 07242017 | 07232017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T09:56:13+00:00 | 253848137204 | 000074923-01 | Jane | Ryan | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 07232017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724034 | I509 | Heart failure, unspecified | ICD10 | 07242017 | 07232017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T10:51:49+00:00 | 016980361-7202 | 000077435-01 | Charles | Crouch | HMP OF OHIO PC | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07242017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 07212017 | 07232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724050 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 07242017 | 07212017 | 07232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07212017 | 2017-07-21T14:06:18+00:00 |  | 000072893-01 | Barry | Weber | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07242017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07202017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724051 | R4182 | Altered mental status, unspecified | ICD10 | 07242017 | 07202017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07212017 | 2017-07-21T14:17:58+00:00 |  | 000092553-01 | Danny | Dunlavy | SOUND INPATIENT PHYS OF | 928092 | HANY A | AL-KHEDR | 1306117049 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 07202017 | 07202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724054 | R079 | Chest pain, unspecified | ICD10 | 07242017 | 07202017 | 07212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T09:38:19+00:00 |  | 000102049-01 | Georgean | Johnson | MERCY HEALTH PHYSICIANS | 921134 | RAJINDER P | SINGH | 1184758799 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 07242017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 07212017 | 07212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724055 | T82198A | Mech compl of other cardiac electronic device, init encntr | ICD10 | 07242017 | 07212017 | 07222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07242017 | 2017-07-24T14:50:46+00:00 | 017895060-7203 | 000080718-01 | Kenneth | Nethers Sr | LICKING MEM FAM PRCT | 914120 | VINCENT I | WALSH | 1740231190 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07242017 | Approved | MediGold Essential Care | EMR | Observation | Inpatient | 07232017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724084 | R569 | Unspecified convulsions | ICD10 | 07242017 | 07232017 | 07242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
