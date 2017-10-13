Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-12_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-12_OBS
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
| 10042017 | 2017-10-04T09:03:49+00:00 |  | 000104447-01 | Ralphine | Harper | SOUND KENWOOD HSPISTS OF | 931299 | JIGAR | PATEL | 1497064323 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 10122017 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 10032017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171004016 | R0602 | Shortness of breath | ICD10 | 10122017 | 10032017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10112017 | 2017-10-11T09:14:46+00:00 | 175745497283 | 000098026-01 | Gary | Lustgarten | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | Flexible Choice PPO | Reports | Observation | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011020 | A419 | Sepsis, unspecified organism | ICD10 | 10122017 | 10102017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10062017 | 2017-10-06T10:34:33+00:00 | 263951587278 | 000027151-01 | CARL | HOY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10052017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171006038 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 10122017 | 10052017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10102017 | 2017-10-10T08:31:31+00:00 |  | 000079743-01 | James | Dorsey | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010055 | D649 | Anemia, unspecified | ICD10 | 10122017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10092017 | 2017-10-09T16:05:42+00:00 |  | 000099705-01 | Donna | Laughlin | PULMONARY MED OF DAYTON | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10062017 | 10062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010045 | R079 | Chest pain, unspecified | ICD10 | 10122017 | 10062017 | 10062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10052017 | 2017-10-05T13:46:30+00:00 |  | 000117098-01 | Ceopha | Beach | INTERNAL MED CARE INC | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10032017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171005045 | E871, R202, R739 | Hyperglycemia, unspecified | ICD10 | 10122017 | 10032017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09272017 | 2017-09-27T13:01:12+00:00 |  | 000099743-01 | Arthur | Moore | MIAMI VALLEY HSPISTS GRP | 931966 | SRAVYA S | SURAPANENI | 1932405297 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09262017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927055 | R52 | Pain, unspecified | ICD10 | 10122017 | 09262017 | 10032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10032017 | 2017-10-03T13:53:16+00:00 |  | 000071267-01 | Patricia | Beck | PULMONARY MED OF DAYTON | 922847 | ASHLEE R | AMES | 1962655142 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10012017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003071 | R079 | Chest pain, unspecified | ICD10 | 10122017 | 10012017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09182017 | 2017-09-18T15:04:46+00:00 |  | 000100504-01 | Chris | Weekley | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09172017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919094 | I82412, R42 | Dizziness and giddiness | ICD10 | 10122017 | 09172017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10032017 | 2017-10-03T09:59:37+00:00 |  | 000092416-01 | Edith | Zakel | MIAMI VALLEY HSPISTS GRP | 925537 | JENNIFER | HARTSOCK-VANDI | 1528386604 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10022017 | 10052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003033 | R109 | Unspecified abdominal pain | ICD10 | 10122017 | 10022017 | 10052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09252017 | 2017-09-25T08:13:58+00:00 |  | 000115143-01 | Patricia | Broering | APOGEE MED GRP OHIO INC | 945887 | HIDETAKA | KITAZONO | 1033316104 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 09242017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925026 | M4854XA, R42, W19XXXA | Unspecified fall, initial encounter | ICD10 | 10122017 | 09242017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09282017 | 2017-09-28T13:38:32+00:00 |  | 000054218-01 | ROBERT | THOMPSON | ARTHUR H WIN MD LLC | 905247 |  | ARTHUR H WIN MD LLC | 1114107166 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09272017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928065 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10122017 | 09272017 | 09302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10022017 | 2017-10-02T10:03:22+00:00 |  | 000046178-01 | RUSSELL | ANGLEMYER | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09302017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171002103 | R42, R531 | Weakness | ICD10 | 10122017 | 09302017 | 10022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T08:36:33+00:00 |  | 000114525-01 | Joyce | Thompson | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10072017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009061 | M25472, R0602, R0902, R109, R112 | Nausea with vomiting, unspecified | ICD10 | 10122017 | 10072017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10092017 | 2017-10-09T16:53:28+00:00 |  | 000113186-01 | Donald | Lane | PRIME HEALTHCARE FOUNDAT | 950913 |  | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010086 | R251, R462 | Strange and inexplicable behavior | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09042017 | 2017-09-04T05:32:02+00:00 |  | 000016601-01 | RAYMOND | STACK | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905081 | D72829, J40, R509 | Fever, unspecified | ICD10 | 10122017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T09:06:09+00:00 |  | 000012312-01 | CLYDE | RANNEBARGER | OSU INTERNAL MED LLC | 942381 | SOPHIA J | PENG | 1831455831 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10082017 | 10092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009069 | I499 | Cardiac arrhythmia, unspecified | ICD10 | 10122017 | 10082017 | 10092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08232017 | 2017-08-23T10:19:39+00:00 |  | 000008791-01 | EVELYN | NETHERS | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823043 | I509 | Heart failure, unspecified | ICD10 | 10122017 | 08212017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10122017 | 2017-10-12T09:12:51+00:00 |  | 000118009-01 | Samuel | Styer | MEM HLTH SYSTEMS INC | 949590 | RAJANEESH | PACHALA | 1134413370 | FLORIDA HOSPITAL MEM | 915629 | 1063426823 | FLORIDA HOSPITAL MEMORIAL | 1063426823 | Observation | OBSV | Concurrent Review | CONC |  | FLORIDA HOSPITAL MEMORIAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10072017 | 10082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012033 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10122017 | 10072017 | 10082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10112017 | 2017-10-11T13:51:26+00:00 |  | 000107564-01 | LESTER | SEARS | MIAMI VALLEY HSPISTS GRP | 914307 | PARASRAM | RAMDEO | 1821246125 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10102017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011066 | R531 | Weakness | ICD10 | 10122017 | 10102017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T13:09:53+00:00 |  | 000010562-01 | PEGGY | TALBOTT | MUSKINGUM VALLEY HLTH CT | 940020 | ALI R | IMANI | 1285921858 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010017 | R55 | Syncope and collapse | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10092017 | 2017-10-09T13:07:07+00:00 |  | 000070781-01 | Betty | Mitchell | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10122017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10072017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010014 | D6489 | Other specified anemias | ICD10 | 10122017 | 10072017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09012017 | 2017-09-01T12:05:49+00:00 |  | 000044221-01 | WILLIAN | KURTZ | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901042 | J189, J441, R079, R222 | Localized swelling, mass and lump, trunk | ICD10 | 10122017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T11:20:41+00:00 |  | 000023315-01 | ETTA | CHESROWN | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 09242017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925079 | R471 | Dysarthria and anarthria | ICD10 | 10122017 | 09242017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T08:46:11+00:00 |  | 000094030-01 | Donald | Eltringham | GENESIS MEDICAL GRP LLC | 918994 | PATRICK W | RENAUD | 1548296833 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10122017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010068 | R633 | Feeding difficulties | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T09:13:40+00:00 | 256400017282 | 000013013-01 | ALICE | BEOUGHER | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010006 | K5900, R531 | Weakness | ICD10 | 10122017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10102017 | 2017-10-10T08:46:08+00:00 |  | 000109684-01 | Evelyn | Jesse | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Observation | OBSV | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10122017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 10092017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010067 | N3000 | Acute cystitis without hematuria | ICD10 | 10122017 | 10092017 | 10112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10102017 | 2017-10-10T11:49:12+00:00 |  | 000089145-01 | Charles | Bussard | GENESIS MEDICAL GRP LLC | 924019 | KAREN E | MURPHY | 1811276058 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Observation | OBSV | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 10122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 10092017 | 10102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011026 | R079 | Chest pain, unspecified | ICD10 | 10122017 | 10092017 | 10102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10112017 | 2017-10-11T09:14:45+00:00 | 252144747284 | 000104757-01 | James | Ott | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011019 | I4891 | Unspecified atrial fibrillation | ICD10 | 10122017 | 10112017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10112017 | 2017-10-11T09:19:20+00:00 | 253094717284 | 000056803-01 | EDWARD | JOHNSON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10112017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011022 | I509 | Heart failure, unspecified | ICD10 | 10122017 | 10112017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10102017 | 2017-10-10T17:04:40+00:00 |  | 000030684-01 | EDWIN | MCCLUNG | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010094 | I509 | Heart failure, unspecified | ICD10 | 10122017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10112017 | 2017-10-11T10:50:37+00:00 |  | 000059669-01 | Juanita | Arnold | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 10122017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 10102017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011053 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10122017 | 10102017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10092017 | 2017-10-09T09:48:25+00:00 | 164729097282 | 000070078-01 | Marie | Morgan Carr | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10122017 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 10092017 | 10122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171009033 | J159 | Unspecified bacterial pneumonia | ICD10 | 10122017 | 10092017 | 10122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
