Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-20
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-20
	Given I save the auth class "<auth_class>" to a variable
	And I sign in to the application
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "loaded_sidebar" image
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And the test pauses for "1" seconds
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And in the "Certification" page I save the "<service_code>" service codes
	And the test pauses for "2" seconds
	And in the "certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
	And the test pauses for "2" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter the first quantity requested "<qty_reqd>" into the "how_many_requested" image and save the variable
	And in the "authorized_services" page I enter the first quantity approved "<qty_appr>" into the "how_many_authorized" image and save the variable
	And in the "authorized_services" page I convert "<authorized_date>" into the "dates_begin_requested" image and save the variable
	And in the "authorized_services" page I convert "<expiration_date>" into the "dates_end_requested" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "4" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<practice_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
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
	And I copy the provider number to the clipboard and save the variable
	And in the "authorized_services" page I should see the "loaded_sidebar" image
	And in the "authorized_services" page I enter "$" into the "prov" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
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
	And the test pauses for "2" seconds
	And I determine whether something is PAR or NONPAR
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable

	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "3" seconds

	And in the "authorized_services" page I enter the first service code into the "proc_number" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds

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

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
	And the test pauses for "3" seconds
	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "4" seconds
	And I press ENTER graphically
	And the test pauses for "4" seconds
	And I close "Internet Explorer"

	Examples:
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 02162018 | 2018-02-16T08:04:57+00:00 | Q20421429 | 000072146-01 | Joseph | Bova | BERGER HEALTH PARTNERS | 905899 | SUDHATHI | CHENNURU | 1689740326 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 02202018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02282018 | 03302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220015 | C7800 | Secondary malignant neoplasm of unspecified lung | ICD10 | 02202018 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02162018 | 2018-02-16T14:01:23+00:00 | Q20428001 | 000111358-01 | Beverly | Miller | ALLIANCE PHYSICIANS INC | 942086 | CHARLES P | OPPERMAN | 1891051892 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 02202018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02162018 | 03182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220019 | R1013 | Epigastric pain | ICD10 | 02202018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02162018 | 2018-02-16T14:23:16+00:00 | Q20428378 | 000038591-01 | MARY | MATHERS | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02202018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02222018 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220027 | C184 | Malignant neoplasm of transverse colon | ICD10 | 02202018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02202018 | 2018-02-20T09:43:03+00:00 | Q20421279 | 000065626-01 | FRANK | HOLTER | OSU INTERNAL MED LLC | 935268 | ROBERT D | RUPERT JR | 1831305325 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02202018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02192018 | 03212018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220040 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 02202018 | 71260, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02172018 | 2018-02-17T09:15:23+00:00 | Q20430722 | 000028143-01 | EILENE | SCHNEIDER | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02202018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02202018 | 03222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220042 | R079 | Chest pain, unspecified | ICD10 | 02202018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02162018 | 2018-02-16T09:51:44+00:00 |  | 000036603-01 | BARBARA | SMITH | AMERICAN MEDICAL EQUIPMENT INC | 903661 |  | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 903661 | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | DME | DME | Pre-Service | PRE |  | AMERICAN MEDICAL EQUIPMENT INC | 02202018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 02202018 | 02212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180216037 | E119, G609, M4800 | Spinal stenosis, site unspecified | ICD10 | 02202018 | K0823 | PWC gp 2 std cap chair | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02192018 | 2018-02-19T12:38:10+00:00 |  | 000003513-01 | JUDITH | PRESSLER | OSU INTERNAL MED LLC | 935829 | KEVIN V | HACKSHAW | 1255348785 | OSU INTERNAL MED LLC | 935829 | 1740231448 | KEVIN V HACKSHAW | 1255348785 | Out of Network Services | OONS | Pre-Service | PRE | KEVIN V | HACKSHAW | 02202018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02202018 | 05202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219124 | M797 | Fibromyalgia | ICD10 | 02202018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 | Call to Lori  in providers office 614-293-4837. Requested Clinical documentation for the PA request. She agreed to fax the information tomorrow  2/20/18 |  |  |  |  | 0 |
| 02192018 | 2018-02-19T08:48:30+00:00 | Q20432338 | 000053176-01 | ELVIN | ENNIS | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02202018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03202018 | 04192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220063 | C8598 | Non-Hodgkin lymphoma, unsp, lymph nodes of multiple sites | ICD10 | 02202018 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02192018 | 2018-02-19T10:22:11+00:00 | Q20434280 | 000071598-01 | Bill | Schweinsberg Jr | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02202018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02192018 | 03212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220083 | M25561 | Pain in right knee | ICD10 | 02202018 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02192018 | 2018-02-19T11:43:40+00:00 | Q20435993 | 000120910-01 | Julienne | Wright | FAIRFIELD HLTHCARE PROFS | 947849 | JASON T | WEINGART | 1114188273 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 02202018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220092 | R079 | Chest pain, unspecified | ICD10 | 02202018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02192018 | 2018-02-19T12:55:33+00:00 | Q20437305 | 000046700-01 | EVELYN | WINTERS | ADENA MEDICAL GROUP LLC | 922384 | JAYA | THAKUR | 1457589277 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 02202018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02212018 | 03232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220101 | R109 | Unspecified abdominal pain | ICD10 | 02202018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02192018 | 2018-02-19T13:49:39+00:00 | Q20438140 | 000107686-01 | Patricia | Mccutchen | KNOX COMMUNITY HOSP GRP | 920510 | TAMMY A | JOSEPH | 1538475181 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 02202018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02202018 | 03222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180220110 | F17210 | Nicotine dependence, cigarettes, uncomplicated | ICD10 | 02202018 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
