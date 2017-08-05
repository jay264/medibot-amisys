Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-03
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-03
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
| 07312017 | 2017-07-31T13:33:25+00:00 | Q18965257 | 000060530-01 | RONALD | NOLL | OSU INTERNAL MED LLC | 935943 | MANISHA H | SHAH | 1679581896 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 08032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08022017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803011 | C7A8 | Other malignant neuroendocrine tumors | ICD10 | 08032017 | 74178, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T11:50:52+00:00 | Q18999916 | 000003846-01 | LORETTA | BALLENGER | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08152017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803015 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 08032017 | 75574, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T15:35:03+00:00 | Q18993595 | 000106172-01 | James | Linkhorn | GENESIS MEDICAL GRP LLC | 906801 | BRYAN | BJORNSTAD | 1114025830 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 08032017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08172017 | 09162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803021 | R4182 | Altered mental status, unspecified | ICD10 | 08032017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T11:27:50+00:00 | Q18999472 | 000092299-01 | John | Wokna | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 08032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 10102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803062 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 08032017 | 33208, 33225, C1900, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T13:50:17+00:00 | Q18977200 | 000044632-01 | CAROLE | VANHOOSE | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803069 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 08032017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J3489: 8 INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 4.00 mg  1 treatment(s) each cycle  2 cycle(s) |  |  |  |  | 0 |
| 08012017 | 2017-08-01T14:34:03+00:00 | Q18981934 | 000067681-01 | PAMELA | BARRETT | OH ONCOLOGY & HEMATOLOGY | 934906 | P KOTHAI | SUNDARAM | 1538127238 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803075 | C7A010 | Malignant carcinoid tumor of the duodenum | ICD10 | 08032017 | J2353 | INJECTION, OCTREOTIDE, DEPOT FORM FOR INTRAMUSCULAR INJECTION, 1 MG | HCPCS | 120 | 120 | Approved | 181 | HCPCS | HC | J2353: 120 INJECTION  OCTREOTIDE  DEPOT FORM FOR INTRAMUSCULAR INJECTION  1 MG  Dispensed as: 30.00 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 08022017 | 2017-08-02T13:58:19+00:00 | Q18986307 | 000066958-01 | JAMES | LEGG | MOUNT CARMEL HLTH PRVDRS | 934981 | DOUGLAS B | VAN FOSSEN | 1629039698 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08042017 | 10032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803082 | R0609 | Other forms of dyspnea | ICD10 | 08032017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T07:55:32+00:00 |  | 000093734-01 | Michael | Bland | OSU SURGERY LLC | 909342 | CARL R | SCHMIDT | 1386802460 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726107 | K868 | Other specified diseases of pancreas | ICD10 | 08032017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T12:29:40+00:00 |  | 000028797-01 | BILLY | SCHWAMBERGER | OSU INTERNAL MED LLC | 923784 | KIMBERLY A | FRIER | 1568427110 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08032017 | Approved | TRINITY HEALTH | Fax | Services Not Available In-Network | Outpatient | 08032017 | 11032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726140 | C44320 | Squamous cell carcinoma of skin of unspecified parts of face | ICD10 | 08032017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T14:50:18+00:00 |  | 000073283-01 | Mary | Lilly | OSU INTERNAL MED LLC | 947554 | DIANE M | SPEELMAN | 1952637241 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08042017 | 11042017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803146 | C4920 | Malig neoplm of conn and soft tiss of unsp low limb, inc hip | ICD10 | 08032017 | 99201, 99202, 99203, 99204, 99205, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 84100, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08032017 | 2017-08-03T11:44:56+00:00 |  | 000078591-01 | Mildred | Chutes | MICHAEL SHRAMOWIAT LLC | 927238 |  | MICHAEL SHRAMOWIAT LLC | 1003820374 | MICHAEL SHRAMOWIAT LLC | 927238 | 1003820374 | MICHAEL SHRAMOWIAT LLC | 1003820374 | Out of Network Services | OONS | Pre-Service | PRE |  | MICHAEL SHRAMOWIAT LLC | 08032017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09132017 | 12132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803139 | M25561, M25562, M542, M545 | Low back pain | ICD10 | 08032017 | 99213, 80307 | DRUG TEST PRSMV CHEM ANLYZR | CPT | 2, 2 | 2, 2 | Approved, Approved | 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
