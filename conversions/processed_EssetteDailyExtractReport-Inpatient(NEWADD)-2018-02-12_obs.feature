Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-12_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-12_OBS
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
| 02082018 | 2018-02-08T09:18:35+00:00 |  | 000043102-01 | GAIL | PIERCE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208045 | M6281, R7881 | Bacteremia | ICD10 | 02122018 | 02072018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01252018 | 2018-01-25T10:34:41+00:00 |  | 000074516-01 | Betty | Prosser | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Observation | OBSV | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125037 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02122018 | 02052018 | 02082018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 02012018 | 2018-02-01T13:30:04+00:00 |  | 000089060-01 | Gail | Neighbarger | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01312018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201050 | K5669 | Other intestinal obstruction | ICD10 | 02122018 | 01312018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01302018 | 2018-01-30T14:15:43+00:00 |  | 000091722-01 | BARBARA | TIMMS | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 01292018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131005 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02122018 | 01292018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02022018 | 2018-02-02T15:38:11+00:00 |  | 000100148-01 | Rochelle | Grout | ALLIANCE PHYSICIANS INC | 939986 | CHRISTOPHER R | SCHNEIDER | 1588689475 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202058 | N824, R109 | Unspecified abdominal pain | ICD10 | 02122018 | 02012018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02032018 | 2018-02-03T19:54:46+00:00 |  | 000009304-01 | MARY | CANTER | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02012018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205020 | J189, M25552, R0902 | Hypoxemia | ICD10 | 02122018 | 02012018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01052018 | 2018-01-05T14:11:56+00:00 |  | 000105663-01 | Richard | Shriner | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 02052018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105072 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 02122018 | 02052018 | 02062018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01192018 | 2018-01-19T15:30:41+00:00 |  | 000098493-01 | Joyce | Anderson | ALLIANCE PHYSICIANS INC | 910918 | MICHAEL C | WELKER | 1942211305 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119083 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 02122018 | 02052018 | 02072018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01292018 | 2018-01-29T09:22:11+00:00 |  | 000071346-01 | Marilyn | Oravec | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01282018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129041 | N201, N390 | Urinary tract infection, site not specified | ICD10 | 02122018 | 01282018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02022018 | 2018-02-02T09:07:36+00:00 |  | 000053866-01 | Paul | Bowell Jr | KHN IP MED | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02012018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202022 | R079 | Chest pain, unspecified | ICD10 | 02122018 | 02012018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02062018 | 2018-02-06T13:24:57+00:00 |  | 000042374-01 | Harold | Sanford | GENESIS ER PHYS LLC | 914205 | ANTHONY | SMITH | 1578721437 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02052018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206055 | R05 | Cough | ICD10 | 02122018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02062018 | 2018-02-06T11:16:22+00:00 |  | 000055045-01 | JOY | WILT | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206065 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 02122018 | 02062018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02082018 | 2018-02-08T12:28:39+00:00 |  | 000120905-01 | Bruce | Blain | FAIRFIELD HLTHCARE PROFS | 936308 | DAVID J | DUNBAR | 1295712032 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208056 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02122018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02082018 | 2018-02-08T10:26:56+00:00 |  | 000121105-01 | Johnny | Ray | APOGEE MED GRP OHIO INC | 947856 | SRUJAN | AMEDA | 1912218793 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02072018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208057 | L03012, W540XXA | Bitten by dog, initial encounter | ICD10 | 02122018 | 02072018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02082018 | 2018-02-08T14:13:24+00:00 |  | 000087611-01 | Janice | Jackson | APOGEE MED GRP OHIO INC | 932655 | ABDULMAJID | ADAM | 1528362258 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208067 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 02122018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02082018 | 2018-02-08T15:38:20+00:00 |  | 000009751-01 | KATHLEEN | DUDA | HOSPITALIST MEDICINE PHY | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02072018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208080 | I10, R079 | Chest pain, unspecified | ICD10 | 02122018 | 02072018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T07:32:04+00:00 |  | 000102726-01 | Nancy | Chaffin | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209011 | K921 | Melena | ICD10 | 02122018 | 02082018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T08:19:25+00:00 |  | 000059145-01 | YVONNE | TAYLOR | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02062018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209018 | E162 | Hypoglycemia, unspecified | ICD10 | 02122018 | 02062018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T09:47:26+00:00 |  | 000074801-01 | Leroy | Parsons | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209021 | J069 | Acute upper respiratory infection, unspecified | ICD10 | 02122018 | 02092018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T10:07:27+00:00 |  | 000037974-01 | LEE | REEL | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209027 | A419, D649, R64 | Cachexia | ICD10 | 02122018 | 02082018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02092018 | 2018-02-09T12:02:57+00:00 |  | 000012545-01 | DELORAS | BROOKS | CENTRAL OH HSPISTS INC | 911475 | JAYMIN | PATEL | 1780785568 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209057 | M542 | Cervicalgia | ICD10 | 02122018 | 02082018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T14:43:48+00:00 |  | 000072546-01 | Linda | Dunlap | CEN OH PRIMARY CARE SPEC | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209076 | R0789 | Other chest pain | ICD10 | 02122018 | 02082018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T09:05:44+00:00 |  | 000093220-01 | David | Shonk | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02112018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212068 | R030, R0789, R5383 | Other fatigue | ICD10 | 02122018 | 02112018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T09:02:05+00:00 |  | 000117945-01 | Beth | true | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212070 | K8020 | Calculus of gallbladder w/o cholecystitis w/o obstruction | ICD10 | 02122018 | 02082018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T09:01:00+00:00 |  | 000101402-01 | Linda | Mcnally | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212076 | R072 | Precordial pain | ICD10 | 02122018 | 02092018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T08:59:55+00:00 |  | 000015365-01 | MARY | KRAKER | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212077 | I4891, Z20828 | Contact w and exposure to oth viral communicable diseases | ICD10 | 02122018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T10:23:26+00:00 |  | 000053947-01 | THEODORE | WETZEL | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180212085 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 02122018 |  |  | 52601 | TRANSURETHRAL RESECT PROSTATE | CPT | 1 | 1 | Approved Observation | 61 | CPT | C4 |  |  | No child records to display. |  |
| 02122018 | 2018-02-12T08:58:50+00:00 |  | 000115794-01 | Marjorie | Burris | FAIRFIELD HLTHCARE PROFS | 936308 | DAVID J | DUNBAR | 1295712032 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180212090 | R209 | Unspecified disturbances of skin sensation | ICD10 | 02122018 |  | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T08:57:45+00:00 |  | 000013882-01 | GEORGENE | KEMERER | FAIRFIELD COUNTY COMBINE | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212092 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02122018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02122018 | 2018-02-12T13:15:43+00:00 |  | 000026505-01 | RALPH | BECKER | 24 ON PHYSICIANS PC | 904570 | SURESH K | YADAV | 1649288465 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 02102018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212097 | R6889 | Other general symptoms and signs | ICD10 | 02122018 | 02102018 | 02122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
