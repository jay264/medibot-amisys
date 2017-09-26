Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-22-to-2017-09-24_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-22-to-2017-09-24_OBS
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
| 09182017 | 2017-09-18T15:03:03+00:00 |  | 000079244-01 | Verne | Biehl | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 09222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 09152017 | 09172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919087 | T827XXA | Infect/inflm react d/t oth cardi/vasc dev/implnt/grft, init | ICD10 | 09222017 | 09152017 | 09172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09202017 | 2017-09-20T09:08:46+00:00 | 264920227262 | 000108233-01 | Mary | Barbour | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920021 | R69 | Illness, unspecified | ICD10 | 09222017 | 09192017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T16:58:56+00:00 |  | 000034550-01 | PATRICIA | COLLINS | CAROLINAS MEDICAL CENTER | 940695 |  | CAROLINAS MEDICAL CENTER | 1295789907 | CAROLINAS MEDICAL CENTER | 940695 | 1295789907 | CAROLINAS MEDICAL CENTER | 1295789907 | Observation | OBSV | Concurrent Review | CONC |  | CAROLINAS MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08262017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830006 | S2220XA | Unsp fracture of sternum, init encntr for closed fracture | ICD10 | 09222017 | 08262017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09182017 | 2017-09-18T10:07:05+00:00 |  | 000070556-01 | Nancy | Styers | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09152017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919009 | R4182 | Altered mental status, unspecified | ICD10 | 09222017 | 09152017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09182017 | 2017-09-18T16:04:57+00:00 |  | 000078584-01 | Jo | Johnson | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09162017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919101 | E041, R079, S0990XA | Unspecified injury of head, initial encounter | ICD10 | 09222017 | 09162017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08112017 | 2017-08-11T08:07:47+00:00 |  | 000112009-01 | James | Prater | ADENA MEDICAL GROUP LLC | 917449 | JOEL P | REGINELLI | 1780687335 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 09222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 08102017 | 08112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811033 | I779 | Disorder of arteries and arterioles, unspecified | ICD10 | 09222017 | 08102017 | 08112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T10:19:12+00:00 |  | 000113940-01 | Gary | Yount | 24 ON PHYSICIANS PC | 935143 | JAMES J | HOMSY | 1871641647 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921054 | J939 | Pneumothorax, unspecified | ICD10 | 09222017 | 09202017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09202017 | 2017-09-20T14:47:03+00:00 |  | 000002676-01 | OSWALD | WARRENS | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921006 | R079, R109 | Unspecified abdominal pain | ICD10 | 09222017 | 09192017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08182017 | 2017-08-18T16:10:51+00:00 |  | 000079730-01 | Wayne | Coleman | ALLIANCE PHYSICIANS INC | 910681 | RAYMOND J | POELSTRA | 1972530848 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 09192017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818069 | M4802 | Spinal stenosis, cervical region | ICD10 | 09222017 | 09192017 | 09202017 | 63045, 63048, 69990 | MICROSURGERY ADD-ON | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09222017 | 2017-09-22T08:43:37+00:00 | 265950317264 | 000118901-01 | Robert | Mcallister Jr | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 09212017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922005 | R42 | Dizziness and giddiness | ICD10 | 09222017 | 09212017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08242017 | 2017-08-24T08:04:09+00:00 |  | 000053883-01 | DAVID | CLEMENT | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | EMR | Observation | Inpatient | 08202017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824001 | G8918 | Other acute postprocedural pain | ICD10 | 09222017 | 08202017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09222017 | 2017-09-22T09:05:19+00:00 |  | 000088330-01 | Thomas | Turner | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09212017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922011 | R6889 | Other general symptoms and signs | ICD10 | 09222017 | 09212017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T11:17:58+00:00 | 256623417263 | 000019335-01 | RODGER | HEISER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09202017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921047 | R1310 | Dysphagia, unspecified | ICD10 | 09222017 | 09202017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09192017 | 2017-09-19T10:35:34+00:00 | 264639847256 | 000092184-01 | Gary | Vance | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09182017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919038 | Z5181 | Encounter for therapeutic drug level monitoring | ICD10 | 09222017 | 09182017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09192017 | 2017-09-19T15:17:03+00:00 |  | 000037403-01 | JANET | CONAWAY | APOGEE MED GRP OHIO INC | 943020 | SRAVAN K R | BEZWADA | 1669728895 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920060 | I7025, R0600 | Dyspnea, unspecified | ICD10 | 09222017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09222017 | 2017-09-22T09:01:42+00:00 |  | 000057885-01 | SUSAN | CRAYCRAFT | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09212017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922009 | R6889 | Other general symptoms and signs | ICD10 | 09222017 | 09212017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09182017 | 2017-09-18T13:04:26+00:00 |  | 000073143-01 | Geraldine | Forrest | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09162017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919113 | I509, L03115 | Cellulitis of right lower limb | ICD10 | 09222017 | 09162017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09202017 | 2017-09-20T14:54:01+00:00 |  | 000093417-01 | Marilyn | Darling | KNOX COMMUNITY HSP PHYS | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 09222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09192017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920082 | I509 | Heart failure, unspecified | ICD10 | 09222017 | 09192017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09202017 | 2017-09-20T14:52:33+00:00 |  | 000073720-01 | Sheila | Moffatt | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921008 | R079 | Chest pain, unspecified | ICD10 | 09222017 | 09192017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09062017 | 2017-09-06T08:55:01+00:00 |  | 000087223-01 | Blaine | Buck | KNOX COMMUNITY HSP PHYS | 904518 | DAVID A | KITTOE | 1730149154 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907049 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 09222017 | 09052017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09212017 | 2017-09-21T10:02:14+00:00 | 253821507263 | 000064820-01 | JOYCE | WOOTEN | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09222017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 09202017 | 09222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921027 | R197 | Diarrhea, unspecified | ICD10 | 09222017 | 09202017 | 09222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09202017 | 2017-09-20T15:15:59+00:00 |  | 000111263-01 | Thomas | Holtz | ALLIANCE PHYSICIANS INC | 947302 | MIGUEL M | GAETA | 1336306141 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09222017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921002 | S7002XA | Contusion of left hip, initial encounter | ICD10 | 09222017 | 09182017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09182017 | 2017-09-18T10:06:10+00:00 |  | 000037113-01 | Irene | Marcum | SOUND PHYSICIANS OF OHI0 | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09152017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919007 | I509 | Heart failure, unspecified | ICD10 | 09222017 | 09152017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08072017 | 2017-08-07T11:33:47+00:00 |  | 000091606-01 | Oscar | Slaven | S DAYTON ACUTE CARE CNSL | 903782 | SIVAKRISHNA | BHANDARU | 1629017884 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08052017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807084 | E875 | Hyperkalemia | ICD10 | 09222017 | 08052017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09202017 | 2017-09-20T11:51:06+00:00 |  | 000110401-01 | Constance | Davis | KNOX COMMUNITY HSP PHYS | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 09222017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09192017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920079 | R079 | Chest pain, unspecified | ICD10 | 09222017 | 09192017 | 09212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
