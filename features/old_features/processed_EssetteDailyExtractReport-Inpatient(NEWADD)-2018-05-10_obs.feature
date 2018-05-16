Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-10_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-10_OBS
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
| 05022018 | 2018-05-02T10:21:30+00:00 |  | 000044632-01 | CAROLE | VANHOOSE | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502051 | I82401 | Acute embolism and thombos unsp deep veins of r low extrem | ICD10 | 05102018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04042018 | 2018-04-04T15:42:19+00:00 |  | 000025086-01 | ISHMAEL | SKAGGS | AMERICAN HLTH NETWORK OF | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04032018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404085 | J811 | Chronic pulmonary edema | ICD10 | 05102018 | 04032018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04112018 | 2018-04-11T15:09:42+00:00 |  | 000082928-01 | Terry | Bauer | MERCY HEALTH PHYSICIANS | 920861 | ARTHUR | LEE | 1093713034 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 05102018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 05082018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411098 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 05102018 | 05082018 | 05092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04232018 | 2018-04-23T08:14:40+00:00 |  | 000101541-01 | MAURICE | PETERSON | KNOX DIAGNOSITIC IMAGING | 909698 | GREGORY J | CUSH | 1376579243 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423006 | M19012, M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 05102018 | 05072018 | 05082018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05042018 | 2018-05-04T14:15:59+00:00 |  | 000027670-01 | MARVIN | FRANCIS | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504041 | R079 | Chest pain, unspecified | ICD10 | 05102018 | 05022018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T15:48:36+00:00 |  | 000104861-01 | Charles | Sanders | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504070 | R739, T783XXA | Angioneurotic edema, initial encounter | ICD10 | 05102018 | 05022018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T16:26:41+00:00 |  | 000035404-01 | Ronald | Hurst | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05032018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504085 | N179, R112 | Nausea with vomiting, unspecified | ICD10 | 05102018 | 05032018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05052018 | 2018-05-05T12:33:55+00:00 |  | 000086361-01 | Susan | Wagner | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05032018 | 05052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507002 | G9340, R0602 | Shortness of breath | ICD10 | 05102018 | 05032018 | 05052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05072018 | 2018-05-07T08:06:27+00:00 |  | 000111203-01 | Brenda | Knisley | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05062018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507076 | K5100, R109, R1907 | Generalized intra-abd and pelvic swelling, mass and lump | ICD10 | 05102018 | 05062018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T15:50:58+00:00 |  | 000006245-01 | HELEN | HANEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04282018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430079 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 05102018 | 04282018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05052018 | 2018-05-05T11:21:56+00:00 |  | 000082392-01 | Catherine | Green | UNIVERSITY OF CINCINNATI | 924634 | FARZAN H | IRANI | 1376709857 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 05102018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507011 | S82852B, S82891A | Oth fracture of right lower leg, init for clos fx | ICD10 | 05102018 | 05052018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T09:17:44+00:00 |  | 000020091-01 | BONNIE | CUNNINGHAM | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507084 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 05102018 | 05062018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05072018 | 2018-05-07T10:51:21+00:00 |  | 000016581-01 | BEVERLY | HARRISON | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Observation | OBSV | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05042018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507092 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 05102018 | 05042018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05072018 | 2018-05-07T15:15:02+00:00 |  | 000076187-01 | James | Hartrum | LICKING MEM HLTH PROF | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507098 | I509 | Heart failure, unspecified | ICD10 | 05102018 | 05062018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05072018 | 2018-05-07T11:39:24+00:00 |  | 000093256-01 | Carol | Thompson | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05062018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508007 | J189 | Pneumonia, unspecified organism | ICD10 | 05102018 | 05062018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05072018 | 2018-05-07T13:59:13+00:00 |  | 000104211-01 | Marilyn | Cain | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05052018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508021 | R0602 | Shortness of breath | ICD10 | 05102018 | 05052018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082018 | 2018-05-08T09:06:28+00:00 |  | 000083910-01 | Ruth | Davis | KNOX COMMUNITY HSP PHYS | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508036 | I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05102018 | 05052018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05082018 | 2018-05-08T11:15:00+00:00 |  | 000082549-01 | Frank | Bernthold | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508052 | S92919A | Unsp fracture of unsp toe(s), init for clos fx | ICD10 | 05102018 | 05052018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05082018 | 2018-05-08T11:56:16+00:00 |  | 000045678-01 | JAMES | FALLER | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508056 | R55 | Syncope and collapse | ICD10 | 05102018 | 05052018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05082018 | 2018-05-08T12:06:01+00:00 |  | 000069916-01 | Frances | Reber | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05062018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508057 | D72829 | Elevated white blood cell count, unspecified | ICD10 | 05102018 | 05062018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082018 | 2018-05-08T12:14:51+00:00 |  | 000013631-01 | GEORGE | LENKEY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508060 | R58 | Hemorrhage, not elsewhere classified | ICD10 | 05102018 | 05052018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05082018 | 2018-05-08T12:40:21+00:00 |  | 000021939-01 | HELEN | SEAGRAVES | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05052018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508064 | K625 | Hemorrhage of anus and rectum | ICD10 | 05102018 | 05052018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05082018 | 2018-05-08T15:40:00+00:00 |  | 000016495-01 | Stephen | Simpson | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05072018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508088 | I509 | Heart failure, unspecified | ICD10 | 05102018 | 05072018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T09:49:40+00:00 |  | 000080587-01 | Kenneth | Flowers | HOSPITALIST MEDICINE PHY | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05082018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509057 | R0602 | Shortness of breath | ICD10 | 05102018 | 05082018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05102018 | 2018-05-10T13:12:01+00:00 |  | 000070473-01 | Sandra | Powell | COMMUNITY HSPIST LLC | 946367 | JOHN G | HATANELAS | 1225379795 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 05102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05082018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180510026 | R079 | Chest pain, unspecified | ICD10 | 05102018 | 05082018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
