Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-21_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-21_OBS
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
| 11132017 | 2017-11-13T08:23:40+00:00 |  | 000075361-01 | Joanne | Shaftner | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11122017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113096 | A419, D72829, J189, R0602 | Shortness of breath | ICD10 | 11212017 | 11122017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T16:10:02+00:00 |  | 000099346-01 | Glenna | Owens | FAM PHYS OF SPRINGFIELD | 907236 | ROBERT E | KNEISLEY | 1679598163 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11112017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113116 | K625, R109 | Unspecified abdominal pain | ICD10 | 11212017 | 11112017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11142017 | 2017-11-14T12:44:57+00:00 |  | 000079269-01 | Janet | Stickley | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11212017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 11112017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114064 | N119 | Chronic tubulo-interstitial nephritis, unspecified | ICD10 | 11212017 | 11112017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11202017 | 2017-11-20T16:32:36+00:00 |  | 000071389-01 | Terry | Hazzard | GUPTA, SHARDA | 908736 | SHARDA | GUPTA | 1144301490 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11172017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121005 | G7001 | Myasthenia gravis with (acute) exacerbation | ICD10 | 11212017 | 11172017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T15:33:56+00:00 |  | 000099511-01 | Sylvia | Will | ARTHUR H WIN MD LLC | 905247 |  | ARTHUR H WIN MD LLC | 1114107166 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115053 | K921, R42 | Dizziness and giddiness | ICD10 | 11212017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T15:57:24+00:00 |  | 000091092-01 | Gertrude | Blanken | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114102 | R4182 | Altered mental status, unspecified | ICD10 | 11212017 | 11132017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T09:29:30+00:00 | 250093367322 | 000002894-01 | KAREN | BEHM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120012 | R42 | Dizziness and giddiness | ICD10 | 11212017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T10:14:31+00:00 | 264887987322 | 000065558-01 | RUTH | PURDIN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120034 | I10 | Essential (primary) hypertension | ICD10 | 11212017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T16:39:43+00:00 |  | 000089132-01 | Edith | Hoertt | ALLIANCE PHYSICIANS INC | 927831 | JORGE | ARZOLA | 1205856382 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Pre-Service | PRE |  | INJU & RAJ SOIN MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11162017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A171101037 | N3946 | Mixed incontinence | ICD10 | 11212017 |  | 11162017 | 57288 | SLING OPERATION FOR STRESS INCONT | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 11132017 | 2017-11-13T11:38:13+00:00 |  | 000042342-01 | Anita | Dotson | PULMONARY MED OF DAYTON | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11102017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114060 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 11212017 | 11102017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T10:27:10+00:00 | 262563777321 | 000002140-01 | NAOMI | WHITE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11172017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120038 | R079 | Chest pain, unspecified | ICD10 | 11212017 | 11172017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T14:26:25+00:00 |  | 000084643-01 | Maxine | Poole | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Observation | OBSV | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 11212017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120122 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 11212017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11102017 | 2017-11-10T08:34:07+00:00 |  | 000022029-01 | ARTHUR | KEMERER SR | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11092017 | 11112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110031 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11212017 | 11092017 | 11112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T18:41:50+00:00 |  | 000054540-01 | DANNY | HITT | MIAMI VALLEY HOSPITAL | 936428 |  | MIAMI VALLEY HOSPITAL | 1073688354 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 11162017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121033 | R6889 | Other general symptoms and signs | ICD10 | 11212017 | 11162017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T08:10:28+00:00 |  | 000044302-01 | VANGIE | WILLIAMS | MERCY HEALTH PHYSICIANS | 921373 | PRASHANTH R | KESAV | 1235185950 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 11212017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031055 | I2699, I82492, N390 | Urinary tract infection, site not specified | ICD10 | 11212017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T07:47:07+00:00 |  | 000093705-01 | William | Devault | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120044 | R6889 | Other general symptoms and signs | ICD10 | 11212017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08182017 | 2017-08-18T10:03:20+00:00 |  | 000078685-01 | Everett | Truman | ALLIANCE PHYSICIANS INC | 904501 | CAROL J | SAWMILLER | 1043235070 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 08172017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821039 | R140 | Abdominal distension (gaseous) | ICD10 | 11212017 | 08172017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T09:54:07+00:00 | 250682807323 | 000057749-01 | BETTY | LYNN | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11182017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120022 | J159 | Unspecified bacterial pneumonia | ICD10 | 11212017 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T16:25:40+00:00 |  | 000109663-01 | Julia | Hampton | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11192017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121004 | N889, R42, R55 | Syncope and collapse | ICD10 | 11212017 | 11192017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11142017 | 2017-11-14T08:14:55+00:00 |  | 000106893-01 | Karen | Kuhn | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 11132017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114071 | J189 | Pneumonia, unspecified organism | ICD10 | 11212017 | 11132017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11202017 | 2017-11-20T09:03:09+00:00 |  | 000098117-01 | Stephen | Beck | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11192017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120055 | R079 | Chest pain, unspecified | ICD10 | 11212017 | 11192017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11192017 | 2017-11-19T08:31:11+00:00 |  | 000101066-01 | Mary | Brunk | SOUND KENWOOD HSPISTS OF | 932294 | NARENDRA B | VEERAPANENI | 1477784379 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11172017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120015 | H539, I951, N289, R55 | Syncope and collapse | ICD10 | 11212017 | 11172017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T10:03:30+00:00 |  | 000077234-01 | Clifford | King Jr | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11212017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11192017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120093 | R55 | Syncope and collapse | ICD10 | 11212017 | 11192017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T13:55:26+00:00 |  | 000079240-01 | Loretta | Bartkowiak | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11212017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 11112017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114063 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11212017 | 11112017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11192017 | 2017-11-19T20:42:10+00:00 |  | 000024930-01 | MARY | WALSH | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 11192017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171119007 | R1310 | Dysphagia, unspecified | ICD10 | 11212017 | 11192017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11102017 | 2017-11-10T14:27:52+00:00 |  | 000118278-01 | Frank | Green | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11212017 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110073 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 11212017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11202017 | 2017-11-20T09:44:17+00:00 |  | 000075795-01 | Maxine | Thomas | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11212017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 11172017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120073 | R0602 | Shortness of breath | ICD10 | 11212017 | 11172017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11162017 | 2017-11-16T09:55:55+00:00 |  | 000084606-01 | Ethel | Grimm | NEPHROLOGY CNSLT SE OH | 924053 | RENATO M | ROMAN | 1114979234 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 11162017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116056 | R4182 | Altered mental status, unspecified | ICD10 | 11212017 | 11162017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11152017 | 2017-11-15T15:32:19+00:00 |  | 000102058-01 | Roosevelt | Berry | SOUND KENWOOD HSPISTS OF | 932447 | OLGA A | MELZER | 1740414283 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 11212017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 11152017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116039 | A419, E871, G9341, N3000 | Acute cystitis without hematuria | ICD10 | 11212017 | 11152017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T13:09:23+00:00 | 251244357322 | 000109704-01 | David | Wilson | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11212017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 11192017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120072 | I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 11212017 | 11192017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T09:41:11+00:00 | 254401117323 | 000006540-01 | PAUL | HICKMAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11192017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120016 | R1013 | Epigastric pain | ICD10 | 11212017 | 11192017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T10:04:41+00:00 | 250804837322 | 000004762-01 | IMOGENE | MORBITZER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11182017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120027 | R410 | Disorientation, unspecified | ICD10 | 11212017 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T10:19:15+00:00 | 251079057323 | 000050285-01 | GWENDOLYN | SALYERS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11212017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 11202017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120035 | R079 | Chest pain, unspecified | ICD10 | 11212017 | 11202017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
