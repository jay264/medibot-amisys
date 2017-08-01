Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-28_thru_2017-07-30
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-28_thru_2017-07-30
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
| 05042017 | 2017-05-04T16:12:22+00:00 |  | 000074066-01 | Harlan | Hays | FIUMERA, CHARLES C | 918795 | CHARLES C | FIUMERA | 1851326524 | FIUMERA, CHARLES C | 918795 | 1851326524 | CHARLES C FIUMERA | 1851326524 | Out of Network Services | OONS | Pre-Service | PRE | CHARLES C | FIUMERA | 07282017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05042017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504200 | F0632 | Mood disord d/t physiol cond w major depressive-like epsd | ICD10 | 07282017 | 90837, 90791 | PSYCH DIAGNOSTIC EVALUATION | CPT | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T09:57:29+00:00 | Q18575402 | 000011660-01 | FOLLET | LEE | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170612174 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 07302017 | 74177, 71260, 70460, 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 0, 0, 1, 1 | 1, 1, 1, 1 | Withdrawal, Withdrawal, Approved, Approved | 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T15:14:42+00:00 |  | 000118559-01 | ERIC | WILSON | CLEVELAND CLINIC FNDN | 924747 | HADLEY M | WOOD | 1588833305 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 07282017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08112017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717139 | N319, Q059 | Spina bifida, unspecified | ICD10 | 07282017 | 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07182017 | 2017-07-18T12:16:18+00:00 |  | 000065994-01 | ARNOLD | WITT | CLEVELAND CLINIC FNDN | 943467 | KRISTIN B | HIGHLAND | 1740384528 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 07282017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09012017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718109 | J849 | Interstitial pulmonary disease, unspecified | ICD10 | 07282017 | 94060, 94620, 94729, G0463, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 07202017 | 2017-07-20T13:54:09+00:00 |  | 000087221-01 | Nancy | Baker | HAAR, JAY D | 925027 | JAY D | HAAR | 1508930629 | HAAR, JAY D | 925027 | 1508930629 | JAY D HAAR | 1508930629 | OP Behavioral Health | OP BH | Pre-Service | PRE | JAY D | HAAR | 07282017 | Approved | MediGold Classic Preferred | Member | Services Not Available In-Network | Outpatient | 08082017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170720126 | F200, F329 | Major depressive disorder, single episode, unspecified | ICD10 | 07282017 | 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 93, 93, 93 | CPT | C4 | Spoke to Dr. Haar office to request clinical information  diagnosis codes and NPI/TIN numbers.  Nurse reports that she will send in a PA form with the necessary information. |  |  |  |  | 0 |
| 07262017 | 2017-07-26T10:16:38+00:00 |  | 000114101-01 | Lenora | Bolinger | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07282017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 08012017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726134 | C311 | Malignant neoplasm of ethmoidal sinus | ICD10 | 07282017 | 92507, 92610, 92612, 92526, 92597, 31579, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07272017 | 2017-07-27T08:21:42+00:00 |  | 000114300-01 | Sharen | Kensler | RCHP WILMINGTON LLC | 908555 | DOUGLAS | MARTIN | 1811915291 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07282017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07282017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727120 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 07282017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07272017 | 2017-07-27T14:44:30+00:00 |  | 000093333-01 | Anna | Kreutz | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07282017 | Approved | MediGold Classic Preferred | Fax | Clinical Trial | Outpatient | 07272017 | 09272017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727144 | C9190 | Lymphoid leukemia, unspecified not having achieved remission | ICD10 | 07282017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 07272017 | 2017-07-27T15:39:44+00:00 |  | 000072670-01 | Elizabeth | Cole | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08172017 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727153 | C23 | Malignant neoplasm of gallbladder | ICD10 | 07282017 | J9267, J1100, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 24, 24, 6 | 24, 24, 6 | Approved, Approved, Approved | 185, 185, 185 | HCPCS | HC | PHONE CALL PLACED TO PROVIDER 614-383-6216  MESSAGE LEFT FOR ELLEN COX FOR NUMBER OF DOSES FOR 6 CYCLES |  |  |  |  | 0 |
| 07272017 | 2017-07-27T10:28:52+00:00 | Q18957952 | 000088067-01 | Baerbel | Daniels | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170728014 | C499 | Malignant neoplasm of connective and soft tissue, unsp | ICD10 | 07282017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07272017 | 2017-07-27T09:32:10+00:00 | Q18956669 | 000099989-01 | Evelyn | Johnson | SPRINGFIELD HEMATOLOGY & | 901540 | RAVI C | KHANNA | 1144221904 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07272017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170728072 | C50111 | Malignant neoplasm of central portion of right female breast | ICD10 | 07282017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T18:05:30+00:00 | Q18930945 | 000083380-01 | Rose | Lee | COSHOCTON COUNTY MEM HSP | 913615 | DUANE P | POOL | 1073599031 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 07282017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170728100 | I25118 | Athscl heart disease of native cor art w oth ang pctrs | ICD10 | 07282017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T10:48:50+00:00 |  | 000024954-01 | Agnes | Trombetti | MOUNT CARMEL HLTH PRVDRS | 937166 | JEAN E | MCKEE | 1417994351 | INTEGRATED PAIN SOLUTION | 918775 | 1346296621 | GLADSTONE C MCDOWELL II | 1346296621 | DME | DME | Pre-Service | PRE | GLADSTONE C | MCDOWELL II | 07282017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 07282017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170717119 | M25569 | Pain in unspecified knee | ICD10 | 07282017 | 64640 | INJ NUROLYTIC AGNT OTHR PERPHL NERV | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Left a VM message on 072617 at 09:54:07 requesting clinical documentation from Dr. McKee's office., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
