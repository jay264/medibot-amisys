Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-16
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-16
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
| 02232017 | 2017-02-23T10:23:42+00:00 |  | 000069740-01 | NICHOLAS | PERRINI | WEXNER HERITAGE HOUSE | 939320 |  | WEXNER HERITAGE HOUSE | 1932197704 | WEXNER HERITAGE HOUSE | 939320 | 1932197704 | WEXNER HERITAGE HOUSE | 1932197704 | Part B Therapy | OP THER | Pre-Service | PRE |  | WEXNER HERITAGE HOUSE | 04142017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02222017 | 02232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170224011 | M542, M6281 | Muscle weakness (generalized) | ICD10 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  | mbr chose to have home health  no NOMNC given per facility. Only an eval completed and did not pick up for part B |  |  |  |  | 0 |
| 04072017 | 2017-04-07T12:33:56+00:00 |  | 000111702-01 | Linda | Bowen | UNIVERSITY OF CINCINNATI | 933053 | JOHN D | WYRICK | 1972553774 | UNIVERSITY OF CINCINNATI | 933053 | 1801840434 | JOHN D WYRICK | 1972553774 | Out of Network Services | OONS | Pre-Service | PRE | JOHN D | WYRICK | 04142017 | Approved | MediGold Southwest OH Classic Preferred | Member | SNF | Outpatient | 04072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410038 | S8290XA | Unsp fracture of unsp lower leg, init for clos fx | ICD10 | 04142017 | 99201 | OFFICE CALL - NEW PATIENT | CPT | 3 | 3 | Approved | 92 | CPT | C4 | Spoke with member.  Member states she is currently under the care of Dr Lee with Wellington Orthopedics.  Dr Lee is not able to perform the surgery needed for her leg to heal properly., Message left for Jackie (Wellington Orthopedics) to obtain additional clinical information |  |  |  |  | 0 |
| 04072017 | 2017-04-07T14:13:26+00:00 |  | 000112240-01 | Omer | Griffin | FULLENKAMP, LUKE G | 943411 | LUKE G | FULLENKAMP | 1619191368 | FULLENKAMP, LUKE G | 943411 | 1619191368 | LUKE G FULLENKAMP | 1619191368 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | LUKE G | FULLENKAMP | 04142017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 04142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410065 | H18603, H25013, H3129 | Other hereditary choroidal dystrophy | ICD10 | 04142017 | 99201 | OFFICE CALL - NEW PATIENT | CPT | 1 | 1 | Approved | 92 | CPT | C4 | P/c to Terren W w/ Dr Fullenkamps office let her know I need the ICD 10/diagnosis code for this pt and correct CPT codes.  She said she would have to check with doctor. Left call back information. |  |  |  |  | 0 |
| 04122017 | 2017-04-12T16:40:01+00:00 |  | 000099313-01 | JAMES | WALTER | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412112 | Z85819 | Prsnl hx of malig neoplm of unsp site lip,oral cav,& pharynx | ICD10 | 04142017 | 21076, 21077, 21079, 21080, 21081, 21082, 21083, 21084, 21086, 21089, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04122017 | 2017-04-12T08:02:09+00:00 |  | 000113918-01 | Larry | Capps | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04172017 | 07172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170412113 | G939 | Disorder of brain, unspecified | ICD10 | 04142017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04122017 | 2017-04-12T10:55:39+00:00 |  | 000084039-01 | Harold | Elkins | NEUROSCIENCE CENTER | 915908 | YASUSHI | KISANUKI | 1518182419 | NEUROSCIENCE CENTER | 915908 | 1962431817 | YASUSHI KISANUKI | 1518182419 | Out of Network Services | OONS | Pre-Service | PRE | YASUSHI | KISANUKI | 04142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170413119 | G1229, M62838 | Other muscle spasm | ICD10 | 04142017 | 62322, J0476, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T10:22:30+00:00 | Q18193637 | 000111878-01 | David | Raymond | MOUNT CARMEL HLTH PRVDRS | 932440 | SYED ALI SHAN | IDRIS | 1942317060 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414005 | Z8679 | Personal history of other diseases of the circulatory system | ICD10 | 04142017 | 70496, 70498 | CT ANGIOGRAPHY, NECK | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04202016 | 2016-04-20T07:45:50+00:00 | Q15564803 | 000064469-01 | ARMITA | RICHARDSON | COLS ARTHRITIS CENTER | 934748 | KEVIN D | SCHLESSEL | 1063490845 | COLS ARTHRITIS CENTER | 938963 | 1952433898 | COLS ARTHRITIS CENTER | 1952433898 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COLS ARTHRITIS CENTER | 04142017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414007 | M25531 | Pain in right wrist | ICD10 | 04142017 | 73221, 73218 | MRI UPPER EXTREMITY W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  |  |  | 0 |
| 04122017 | 2017-04-12T19:28:50+00:00 | Q18142210 | 000097535-01 | Carter | Sartin | ADENA MEDICAL GROUP LLC | 939881 | JESSICA N | LEWIS | 1770719452 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04142017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414035 | K6812 | Psoas muscle abscess | ICD10 | 04142017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04122017 | 2017-04-12T10:54:10+00:00 |  | 000054002-01 | CELESTINE | ADAMS | OHIOHEALTH PHYS GRP | 918222 | BENJAMIN C | TAYLOR | 1659595866 | OHIOHEALTH PHYS GRP | 918222 | 1578545273 | BENJAMIN C TAYLOR | 1659595866 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | BENJAMIN C | TAYLOR | 04142017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414119 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 04142017 | 99024, 99214, 73510, 73550, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 1 | 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T10:32:08+00:00 |  | 000085792-01 | Thomas | Maxwell | OSU INTERNAL MED LLC | 912077 | UDAY S | NORI | 1013923234 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11282017 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414125 | Z940, Z944 | Liver transplant status | ICD10 | 04142017 | 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 1 | 3, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T13:41:32+00:00 |  | 000109076-01 | Gary | Lowry | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04142017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04202017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414144 | C8330, E8352, I82423, M899 | Disorder of bone, unspecified | ICD10 | 04142017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T11:22:35+00:00 |  | 000034322-01 | MARY | WILSON | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | DISCOUNT DRUG MART INC | 931715 | 1023053030 | DISCOUNT DRUG MART INC | 1023053030 | DME | DME | Pre-Service | PRE |  | DISCOUNT DRUG MART INC | 04142017 | Denied | MediGold Classic Preferred | Member | Criteria Not Met | Outpatient | 04142017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170410164 | I868 | Varicose veins of other specified sites | ICD10 | 04142017 | S8429 | GRADIENT PRESSURE EXTERIOR WRAP | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04122017 | 2017-04-12T15:35:28+00:00 |  | 000102050-01 | Brett | Richards | HOSPICE OF CENTRAL OHIO | 935546 | THOMAS K | PETRYK | 1245210244 | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 900087 | 1811018609 | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 1811018609 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 04142017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 04142017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170414122 | E1165, M79671 | Pain in right foot | ICD10 | 04142017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04112017 | 2017-04-11T17:31:32+00:00 |  | 000110482-01 | Dennis | Donovan | OSU PHYSICAL MED LLC | 928551 | SARAH | GROVE | 1962721506 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04142017 | Partial Approval | MediGold Classic Preferred | Fax | Portion of Request Not Medically Necessary | Outpatient | 04072017 | 06302017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Partial Approval | X170412039 | H543, I63512, I639, I69351, I6990, R269, R279, R41841, R4189, R5381, Z7409 | Other reduced mobility | ICD10 | 04142017 | 97110, 97112, 97116, 97530, 97001, 97535, 97530, 97760, 97032, 92507, 92526, 92611, 97110, 97112, 97116, 97530, 97001, 97535, 97530, 97760, 97032 | APPLICATION OF A MODALITY, ELECTRICAL STIMULATION | CPT | 72, 72, 36, 72, 36, 36, 0, 36, 36, 36, 36, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 72, 72, 36, 72, 36, 36, 54, 36, 36, 36, 36, 1, 54, 54, 30, 30, 30, 24, 24, 24, 24 | Approved, Approved, Approved, Approved, Approved, Approved, Denied, Approved, Approved, Approved, Approved, Approved, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85, 85 | CPT | C4 | MESSAGE LEFT FOR JANIE WHEELER RN MC NEUROSCIENCE COORDINATOR FOR INQUIRY OF OUTPT STROKE REHAB  LEFT ON CONFIDENTIAL VM AND MESSAGE FOR RETURN CALL ALSO LEFT ON CELL PHONE., PHONE CALL PLACED TO KIM PREECE RN AT OSU SEEKING CLARIFICATION. MESSAGE LEFT ON CONFIDENTIAL VM. FOR RETURN CALL., PHONE CALL PLACED TO OUTPT STROKE REHAB AT MT CARMEL EAST.  SPOKE TO BRITTANY (SPEECH THERAPIST) SHE CONSULTED W/JEFF DIRECTOR AT EAST. THEY ARE ABLE TO PROVIDE INTENSE PT  OT AND SPEECH THERAPY.  THEY DO NOT HAVE BWST.  SOCIAL WORKER AND REHAB PSYCH IS NOT PART OF THE STROKE REHAB WITHIN MT CARMEL. |  |  |  |  | 0 |
