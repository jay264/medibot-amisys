Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-16
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-16
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I input the alternate procedure codes if there are any

	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

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
| 03072017 | 2017-03-07T15:21:46+00:00 |  | 000091150-01 | George | Schwab | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | BIOVENTUS LLC | 948489 | 1861761785 | BIOVENTUS LLC | 1861761785 | DME | DME | Pre-Service | PRE |  | BIOVENTUS LLC | 03162017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03162017 | 03172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170308037 | M960 | Pseudarthrosis after fusion or arthrodesis | ICD10 | 03162017 | E0760 | OSTEOGENESIS STIMULATOR, LO INTENSITY U/S | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03082017 | 2017-03-08T11:43:36+00:00 |  | 000074035-01 | Beverly | Geiger | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 900087 |  | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 1811018609 | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 919963 | 1497876007 | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 1497876007 | DME | DME | Pre-Service | PRE |  | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 03162017 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Outpatient | 03162017 | 03172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170309002 | Q72812 | Congenital shortening of left lower limb | ICD10 | 03162017 | L3310 | LIFT, ELEVATION, HEEL AND SOLE, NEOPRENE, PER INCH | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03082017 | 2017-03-08T14:37:13+00:00 |  | 000103243-01 | David | Tagg | ADENA MEDICAL GROUP LLC | 927200 | GARRETT M | SESSIONS | 1598077406 | TACTILE SYSTEMS TECHNOLOGY | 914949 | 1427131424 | TACTILE SYSTEMS TECHNOLOGY | 1427131424 | DME | DME | Pre-Service | PRE |  | TACTILE SYSTEMS TECHNOLOGY | 03162017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 03162017 | 03172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170309017 | I890 | Lymphedema, not elsewhere classified | ICD10 | 03162017 | E0652, E0669 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, HALF | HCPCS | 0, 0 | 1, 2 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03092017 | 2017-03-09T16:24:05+00:00 |  | 000035024-01 | DAVID | CUMMINGS | KIDNEY SPECIALISTS INC | 901233 | STEPHANIE E | LADSON-WOFFORD | 1689673329 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Initial Review | INIT |  | LICKING MEMORIAL HOSPITAL | 03162017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03162017 | 03172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170310114 | R591 | Generalized enlarged lymph nodes | ICD10 | 03162017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03092017 | 2017-03-09T16:40:24+00:00 |  | 000080784-01 | John | Magnus | DAYTON CTR FOR NEURO DIS | 917956 | RAJINDER | SINGH | 1750506457 | PROVIDER, UNKNOWN | 999999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Initial Review | INIT | UNKNOWN | PROVIDER | 03162017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 03162017 | 03172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170310115 | G40909 | Epilepsy, unsp, not intractable, without status epilepticus | ICD10 | 03162017 | 70553, 70544 | MR ANGIOGRAPHY HEAD W/O DYE | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03092017 | 2017-03-09T17:14:31+00:00 |  | 000083924-01 | Linda | Thomas | JAMES P JOHNSTON DO INC | 922037 | JAMES P | JOHNSTON | 1922095264 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Initial Review | INIT |  | GENESIS HEALTHCARE SYSTEM | 03162017 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Outpatient | 03162017 | 03172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170310117 | R109 | Unspecified abdominal pain | ICD10 | 03162017 | 72192 | CAT SCAN PELVIS WO CONTRAST | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03062017 | 2017-03-06T15:28:47+00:00 |  | 000029024-01 | CHARLENE | EVANS | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | TUSCANY GARDENS | 905810 | 1073634788 | TUSCANY GARDENS | 1073634788 | Part B Therapy | OP THER | Pre-Service | PRE |  | TUSCANY GARDENS | 03162017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170307037 | R1312 | Dysphagia, oropharyngeal phase | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 03082017 | 2017-03-08T15:23:41+00:00 |  | 000031372-01 | LENORA | ASH | OHIOHEALTH PHYS GRP | 909723 | WILLIAM M | JOHNSON | 1225130917 | WEXNER HERITAGE HOUSE | 939320 | 1932197704 | WEXNER HERITAGE HOUSE | 1932197704 | Part B Therapy | OP THER | Pre-Service | PRE |  | WEXNER HERITAGE HOUSE | 03162017 | Interim Approval | TRINITY HEALTH | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170313042 | M6281 | Muscle weakness (generalized) | ICD10 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T08:36:27+00:00 |  | 000093291-01 | Lois | Chism | MARIETTA MEM HSP | 914362 | CURTIS L | DEHMLOW | 1558366922 | HARMAR PLACE REHABILITATION AND EXTE | 930027 | 1144202417 | HARMAR PLACE REHABILITATION AND EXTE | 1144202417 | Part B Therapy | OP THER | Pre-Service | PRE |  | HARMAR PLACE REHABILITATION AND EXTE | 03162017 | Interim Approval | MediGold Southeast OH Classic Preferred | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170315130 | F0150, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 03162017 | 92526 | TREATMENT OF SWALLOWING DYSFUNCTION AND/OR ORAL FUNCTION FOR | CPT | 0 | 1 |  | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T11:02:13+00:00 |  | 000101408-01 | Donna | Parker | VEMANA, SIVA R | 911014 | SIVA R | VEMANA | 1104848761 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Part B Therapy | OP THER | Pre-Service | PRE |  | UNKNOWN PROVIDER | 03162017 | Interim Approval | MediGold Essential Care | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170315134 | R531 | Weakness | ICD10 | 03162017 | 97161, 97110, 97112, 97116, 97010, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1 | , , , , ,  | 0, 0, 0, 0, 0, 0 | CPT | C4 | Called facility to clarify frequency and duration of PT due to was not completed on the form.  Spoke with Chris Baker-- he clarified requesting 4 times a week for 4 weeks., Received signed SCA back from JP in Provider Relations. SCA was attached to case. |  |  |  |  | 0 |
| 03072017 | 2017-03-07T10:08:19+00:00 |  | 000044350-01 | TERRY | NOGGLE | OSU INTERNAL MED LLC | 918787 | MARK E | LUSTBERG | 1104948934 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03202017 | 06202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170308019 | D649, E875, R140, R197, Z8619 | Personal history of other infectious and parasitic diseases | ICD10 | 03162017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 83615, 80048, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03092017 | 2017-03-09T09:55:58+00:00 |  | 000079571-01 | Paul | Mcdaniel | RETINA CONSULTANTS | 924209 | DAVID J | HUNT | 1740284579 | RETINA CONSULTANTS | 924208 | 1902800758 | RETINA CONSULTANTS | 1902800758 | Out of Network Services | OONS | Pre-Service | PRE |  | RETINA CONSULTANTS | 03162017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 03312017 | 07312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170310116 | E113311 | TYPE 2 DIAB WITH MOD NONP RTNOP WITH MACULAR EDEMA, R EYE | ICD10 | 03162017 | 93014, 92134, J0178 | AFLIBERCEPT INJECTION | HCPCS | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 123, 123, 123 | HCPCS | HC |  |  |  |  |  | 0 |
| 03102017 | 2017-03-10T10:36:07+00:00 | Q17930663 | 000071794-01 | Lawrence | Dixon Jr | KNOX COMMUNITY HOSP GRP | 937051 | SCOTT D | BARKIN | 1841282969 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 03162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03092017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170310129 | N200 | Calculus of kidney | ICD10 | 03162017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 0 | 1 |  | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03132017 | 2017-03-13T15:09:17+00:00 |  | 000066828-01 | Doralou | Knapp | MOUNT CARMEL HLTH PRVDRS | 936731 | NANCY | GRAESSER | 1336252071 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03132017 | 04122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170315055 | R109 | Unspecified abdominal pain | ICD10 | 03162017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T09:21:15+00:00 |  | 000114036-01 | George | Miller | MARIETTA HLTH CARE PHYS | 947328 | SHINOJ | PATTALI JAYAVA | 1275849788 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 03162017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03142017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170315089 | C20 | Malignant neoplasm of rectum | ICD10 | 03162017 | J9190 | FLUOROURACIL, 500 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T10:49:26+00:00 |  | 000049047-01 | THOMAS | MEEHAN | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 936383 | 1538488564 | DANIEL J EVANS | 1760477640 | Radiology (HH) | OP RAD | Pre-Service | PRE | DANIEL J | EVANS | 03162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 04142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170315102 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 03162017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T10:23:37+00:00 |  | 000069947-01 | Ramona | Lowery | GREENFIELD AREA MED CTR | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 03162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03132017 | 04122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170315110 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 03162017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T14:04:36+00:00 |  | 000077034-01 | Sue | Clark | OSU HLTH SYS ORTHO ONC P | 913428 | COREY L | VANHOFF | 1245455617 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 03162017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01242017 | 02242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170315112 | S32433A, S32443A | Disp fx of posterior column of unsp acetabulum, init | ICD10 | 03162017 | 99203, 27220, 72190 | PELVIS, COMPLETE, MIN 3 VIEWS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T11:48:16+00:00 |  | 000108204-01 | Judith | Smith | MERCY HEALTH PHYSICIANS | 921310 | JAMES A | DAY | 1487667440 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 03162017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03162017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316010 | R109 | Unspecified abdominal pain | ICD10 | 03162017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T09:32:08+00:00 |  | 000102752-01 | Paul | Gray | MOUNT CARMEL HLTH PRVDRS | 942981 | ESSA M | ESSA | 1992966113 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316017 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 03162017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T14:49:48+00:00 | Q17968597 | 000112626-01 | Kevin | Ranke | RECONSTRUCTIVE ORTHOS & | 924290 | KEVIN J | SHAW | 1639185770 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 03162017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 04142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316032 | M25561 | Pain in right knee | ICD10 | 03162017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03132017 | 2017-03-13T08:57:29+00:00 |  | 000109076-01 | Gary | Lowry | MADDOCKS-CHRIS, KAMI J | 920315 | KAMI J | MADDOCKS-CHRIS | 1689698284 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 03162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03142017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316069 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 03162017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T14:35:47+00:00 |  | 000115166-01 | NORMAN | HART | FAIRFIELD HLTHCARE PROFS | 916056 | ANDREW R | TWEHUES | 1346457355 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03162017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 04142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316075 | Z87891 | Personal history of nicotine dependence | ICD10 | 03162017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T09:47:55+00:00 |  | 000086237-01 | Imajean | Saunders | PICKAWAY HEALTH SERVICES | 932751 | ANUPREET | KAUR | 1417244393 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 04202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316080 | M545 | Low back pain | ICD10 | 03162017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T14:00:44+00:00 |  | 000073832-01 | Bonnie | Walters | MOUNT CARMEL HLTH PRVDRS | 937182 | MICHAEL J | MELECA | 1942201306 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316081 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 03162017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T11:58:16+00:00 |  | 000117241-01 | Kathleen | Weber | THE CHRIST HSP MED ASSOC | 947278 | THOMAS R | YUELLIG | 1609873827 | THE CHRIST HOSPITAL | 924156 | 1932157385 | THE CHRIST HOSPITAL | 1932157385 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 03162017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 04142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316090 | S22000G | Wedge comprsn fx unsp thor vert, subs for fx w delay heal | ICD10 | 03162017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T16:52:28+00:00 |  | 000063656-01 | MICHAEL | ALLEN | OSU OTOLARYNGOLOGISTS LL | 908507 | THEODOROS N | TEKNOS | 1265521496 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03162017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316102 | C01, K121 | Other forms of stomatitis | ICD10 | 03162017 | 92507, 92610, 92612, 92526, 92597, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | RECEIVED DUPLICATE REQUEST  NO CHANGE IN REQUEST |  |  |  |  | 0 |
| 03162017 | 2017-03-16T09:15:34+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03162017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03212017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316109 | D492 | Neoplasm of unsp behavior of bone, soft tissue, and skin | ICD10 | 03162017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T13:54:34+00:00 | Q17981787 | 000082199-01 | Paul | Brill | MEM HSP OF UNION COUNTY | 935268 | ROBERT D | RUPERT JR | 1831305325 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 03162017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03162017 | 04152017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170316122 | C139 | Malignant neoplasm of hypopharynx, unspecified | ICD10 | 03162017 | J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
