Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-04
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-04
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
| 09272017 | 2017-09-27T10:38:00+00:00 | Q19407844 | 000053127-01 | CHARLES | GRUMMAN | MOUNT CARMEL HLTH PRVDRS | 933528 | JOSEPH | JOZIC | 1700863149 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 09042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928129 | I208 | Other forms of angina pectoris | ICD10 | 10042017 | 93459 | L HRT ART/GRFT ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T10:42:00+00:00 | Q19375649 | 000103357-01 | Bertha | Hays | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 10042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09282017 | 03272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170926054 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 10042017 | J9310 | RITUXIMAB, 100 MG | HCPCS | 72 | 72 | Approved | 181 | HCPCS | HC | J9310: 72: INJECTION  RITUXIMAB  100 MG  Dispensed as: 550.00 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 09212017 | 2017-09-21T09:36:02+00:00 | 19363686 | 000080700-01 | Clarence | McKenney | ONCOLOGY HEMATOLOGY CARE | 920870 | KURT P | LEUENBERGER | 1194765800 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 10042017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09222017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002009 | Z85118 | Personal history of malignant neoplasm of bronchus and lung | ICD10 | 10042017 | 74176, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T16:03:54+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | OSU OTOLARYNGOLOGISTS LL | 933405 | OLIVER F | ADUNKA | 1316975444 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10032017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925151 | C44229 | Squamous cell carcinoma skin/ left ear and extrn auric canal | ICD10 | 10042017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T08:29:29+00:00 |  | 000046362-01 | NORMAN | COLLIER | OSU INTERNAL MED LLC | 914553 | SINDHU B | MUKKU | 1073799045 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09222017 | 01222018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927076 | J449, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 10042017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 123, 123, 123, 123, 123, 123 | HCPCS | HC | PC to Kelly at provider office  member appointment was at noon  he did show and decided to keep appointment even though auth had not been obtained. Kelly relays that she has been out of the office and things weren't handled correctly in her absence., I asked if she had a different number for member  she had 614-824-8209  but the voice mail is not set up  she had tried to call member and found this as well and told him when he was in the office today., EM TO D. ADKINS  R/T EXPEDITED LETTER |  |  |  |  | 0 |
| 09272017 | 2017-09-27T07:48:01+00:00 | Q19404416 | 000099698-01 | Patricia | Taylor | GENESIS MEDICAL GRP LLC | 946480 | EUGENE | HONG | 1811230600 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10042017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10032017 | 01012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004147 | C541 | Malignant neoplasm of endometrium | ICD10 | 10042017 | 77770 | HDR RDNCL NTRSTL/ICAV BRCHTX | CPT | 3 | 3 | Approved | 91 | CPT | C4 | 77770: 3: 77770 3 |  |  |  |  | 0 |
| 10022017 | 2017-10-02T11:39:22+00:00 | Q19441053 | 000089621-01 | Raymond | Rush | KNOX COMMUNITY HSP PHYS | 908962 | JAWAHAR | PALANIAPPAN | 1083726400 | KNOX COMMUNITY HOSP GRP | 938072 | 1295761963 | KNOX COMMUNITY HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL 1500 | 10042017 | Approved | MediGold Southeast OH Essential Care |  | Medical Criteria Met | Outpatient | 10032017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171003034 | R0602 | Shortness of breath | ICD10 | 10042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T08:48:16+00:00 |  | 000053571-01 | DENNIE | MOSLEY | OSU OTOLARYNGOLOGISTS LL | 927444 | AARON | MOBERLY | 1083872022 | OSU OTOLARYNGOLOGISTS LL | 927444 | 1861449407 | AARON MOBERLY | 1083872022 | Out of Network Services | OONS | Pre-Service | PRE | AARON | MOBERLY | 10042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10052017 | 11052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171003070 | H903 | Sensorineural hearing loss, bilateral | ICD10 | 10042017 | 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 09252017 | 2017-09-25T17:33:00+00:00 | Q19392615 | 000089826-01 | Steven | Peitsmeyer | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | SCIOTO VALLEY UROLOGY IN | 938633 | 1346254976 | SCIOTO VALLEY UROLOGY INC | 1346254976 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SCIOTO VALLEY UROLOGY INC | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09252017 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927107 | C61 | Malignant neoplasm of prostate | ICD10 | 10042017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 10032017 | 2017-10-03T08:44:27+00:00 | Q19448311 | 000082956-01 | Kathern | Brand | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 10042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10062017 | 11052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004069 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T09:55:43+00:00 |  | 000043343-01 | JACK | DODRILL | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10052017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170929111 | D0439 | Carcinoma in situ of skin of other parts of face | ICD10 | 10042017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T08:16:43+00:00 | Q19447837 | 000010822-01 | THEOLA | THOMAS | MOUNT CARMEL WEST PHYS | 936783 | VINCENT L | GUINN | 1528009016 | EPI | 937837 | 1912006719 | EPI | 1912006719 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | EPI | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10172017 | 11162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004066 | R072 | Precordial pain | ICD10 | 10042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T10:11:13+00:00 | Q19450220 | 000002014-01 | Joanne | Dematteo | MOUNT CARMEL HLTH PRVDRS | 927234 | TINA | LEE | 1982924619 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 10042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10042017 | 11032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004083 | M25512 | Pain in left shoulder | ICD10 | 10042017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09252017 | 2017-09-25T14:30:00+00:00 | Q19390147 | 000084864-01 | Douglas | Glasmeier | KNOX COMMUNITY HSP PHYS | 912126 | BARRY S | GEORGE | 1386605319 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09292017 | 11282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927091 | Z01818 | Encounter for other preprocedural examination | ICD10 | 10042017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T19:14:00+00:00 | Q19338963 | 000115262-01 | Robert | Morgan | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921044 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 10042017 | 33229, 33225, C1900, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T07:19:11+00:00 | Q19447334 | 000119413-01 | Dickie | Roark | ALLIANCE PHYSICIANS INC | 913338 | PRIYA G | JAIN | 1912093360 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 10042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004011 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 10042017 | J9267, J1442, J2405, J8540, J9045 | CARBOPLATIN, 50 MG | HCPCS | 1500, 9999, 576, 2880, 78 | 1500, 9999, 576, 2880, 78 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9267: 1500: followed by Paclitaxel 200 mg/m2  IV  day 1  every 21 days  2 cycles; Paclitaxel 45-50 mg/m2  IV  day 1  every 7 days  7 cycles: J9045: 78: Carboplatin AUC 2 (max 300 mg)  IV  day 1  every 7 days  7 cycles; Carboplatin AUC 6 (max 900 mg)  IV  day 1  every 21 days 2 cycles: J1442: 40320: Filgrastim (Neupogen) 480 mcg  SQ  days 2-8  every 14 days  12 cycles: J2405: 576: Ondansetron up to 16 mg  IV  up to 4 days  Dispensed as: 16.00 mg  4 treatment(s) each cycle  9 cycle(s): J8540: 2880: Dexamethasone up to 20 mg  PO  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  9 cycle(s) |  |  |  |  | 0 |
| 10032017 | 2017-10-03T12:35:44+00:00 | Q19453152 | 000096257-01 | Patrick | Gins | CARDIOVASCULAR SPEC LLC | 937026 | RICHARD M | BARDALES | 1619978889 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004103 | R072 | Precordial pain | ICD10 | 10042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T13:53:27+00:00 |  | 000073580-01 | Ruth | Clager | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10042017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925135 | C4922 | Malig neoplm of conn and soft tiss of left low limb, inc hip | ICD10 | 10042017 | 71020, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T08:52:38+00:00 | Q19427518 | 000000059-01 | ROBERT | WORSTELL | OSU CAMBRIDGE HEART | 917495 | MICHAEL R | DONNALLY | 1245359520 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10032017 | 12022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004028 | I519 | Heart disease, unspecified | ICD10 | 10042017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 10022017 | 2017-10-02T14:37:54+00:00 | Q19444625 | 000034315-01 | JOHN | CHACEY | COSHOCTON COUNTY MEM HSP | 922139 | ABDULHAY | ALBIRINI | 1174509160 | GENESIS HLTHCARE SYSTEM | 904350 | 1598868655 | GENESIS HEALTHCARE SYSTEM 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM 1500 | 10042017 | Approved | MediGold Classic Preferred |  | Medical Criteria Met | Outpatient | 10062017 | 11052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004137 | I472 | Ventricular tachycardia | ICD10 | 10042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10042017 | 2017-10-04T09:51:18+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10042017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 10052017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004163 | D7581, Z9481 | Bone marrow transplant status | ICD10 | 10042017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83735, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 80299, 87497, 85730, 85610, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 84100, 82310, 83735, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T08:00:00+00:00 |  | 000071036-01 | Dwight | Johnson | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10042017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09272017 | 11272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920011 | Z952 | Presence of prosthetic heart valve | ICD10 | 10042017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T13:30:38+00:00 | Q19454266 | 000093646-01 | Patricia | Rauch | MOUNT CARMEL HLTH PRVDRS | 936382 | ANGELA A | EUBANKS | 1386681104 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10032017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004110 | R3121 | ASYMPTOMATIC MICROSCOPIC HEMATURIA | ICD10 | 10042017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09262017 | 2017-09-26T15:45:51+00:00 |  | 000078945-01 | Elmer | Shutts Jr. | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10042017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 10022017 | 01022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170926142 | C030 | Malignant neoplasm of upper gum | ICD10 | 10042017 | 21089, 21081, 99211, 99212, 99214, 99215, 99213, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T12:34:08+00:00 | Q19453111 | 000081936-01 | Brenda | Kettell | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | BRUCE L AUERBACH MD LLC | 902501 | 1770787723 | BRUCE L AUERBACH MD LLC | 1770787723 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BRUCE L AUERBACH MD LLC | 10042017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10042017 | 11032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004102 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 10042017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10022017 | 2017-10-02T15:56:02+00:00 | Q19446074 | 000103584-01 | SUSAN | SNAPP | HEMATOLOGY ONCOLOGY CONS | 903590 | SANJAY | YADAV | 1528177714 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 10042017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 10052017 | 04032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171004128 | C50411 | Malig neoplm of upper-outer quadrant of right female breast | ICD10 | 10042017 | J0897 | Denosumab injection | HCPCS | 60 | 60 | Approved | 181 | HCPCS | HC | J0897: 60: Denosumab 60 mg  SQ  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 06292017 | 2017-06-29T08:13:08+00:00 | Q18759786 | 000113889-01 | Paula | Erwin | RADIOLOGY INC | 914289 | ABHAY S | GOKHALE | 1528371937 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170630120 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 10042017 | G0340, 77373 | STEROTACTIC BODY RADIATION THERAPY TREATMENT DELIVERY PER FRACTION TO 1 | CPT | 0, 5 | 1, 5 | Void, Approved | 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 10022017 | 2017-10-02T13:52:23+00:00 | Q19438853 | 000044466-01 | BETTY | MOORE | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 10042017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10032017 | 04012018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002137 | C801 | Malignant (primary) neoplasm, unspecified | ICD10 | 10042017 | J9045, J9201, J2505, J2405, J2469, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 3, 6, 8, 12, 3, 54 | 3, 6, 8, 12, 3, 54 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 09252017 | 2017-09-25T16:06:48+00:00 |  | 000091307-01 | Frances | Miller | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Part B Therapy | OP THER | Pre-Service | PRE |  | SPRINGFIELD MASONIC COMMUNITY | 10042017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09252017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170926127 | I639, M6281 | Muscle weakness (generalized) | ICD10 | 10042017 | 97110, 97112, 97116, 97140, 97163, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved | 28, 28, 28, 28, 28, 28 | CPT | C4 |  |  |  |  |  | 0 |
