Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-24
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-24
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
| 10132017 | 2017-10-13T14:50:13+00:00 |  | 000103505-01 | ANDREW | HOLUPKA | PSYCHOLOGICAL TRANSITION | 947083 |  | PSYCHOLOGICAL TRANSITIONS, INC | 1902914278 | PSYCHOLOGICAL TRANSITION | 947083 | 1902914278 | PSYCHOLOGICAL TRANSITIONS, INC | 1902914278 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | PSYCHOLOGICAL TRANSITIONS, INC | 10242017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10062017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016097 | F339, F419 | Anxiety disorder, unspecified | ICD10 | 10242017 | 90791, 90832, 90834, 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 8, 8, 8, 8 | 8, 8, 8, 8 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 10232017 | 2017-10-23T13:23:20+00:00 | Q19604143 | 000082892-01 | Robin | Hoffman | MOUNT CARMEL HLTH PRVDRS | 932965 | MATTHEW R | PAULUS | 1407131022 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10312017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024029 | R0609 | Other forms of dyspnea | ICD10 | 10242017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10232017 | 2017-10-23T08:26:00+00:00 | Q19598655 | 000079053-01 | Robert | Smith | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10232017 | 04212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024063 | C61 | Malignant neoplasm of prostate | ICD10 | 10242017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 10232017 | 2017-10-23T09:01:55+00:00 | Q19598910 | 000044977-01 | WERNER | SPIELBERGER | COPC CENTRAL OHIO PRIMAR | 936840 | MELISSA D | HARRIS | 1841267812 | PROSCAN IMAGING PICKERINGTON LLC | 903474 | 1629036223 | PROSCAN IMAGING PICKERINGTON LLC | 1629036223 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING PICKERINGTON LLC | 10242017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 10242017 | 11232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024065 | M545 | Low back pain | ICD10 | 10242017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10232017 | 2017-10-23T13:46:48+00:00 |  | 000033073-01 | MARGARET | FATHBRUCKNER | COPC CENTRAL OHIO PRIMAR | 944617 | SHRUTI S | FERNANDES | 1225074800 | OHIOHEALTH PHYS GRP | 907414 | 1578545273 | MARIAN SCHUDA | 1265421531 | Out of Network Services | OONS | Pre-Service | PRE | MARIAN | SCHUDA | 10242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10242017 | 01312018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023115 | E782, I10, I953 | Hypotension of hemodialysis | ICD10 | 10242017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 100, 100, 100, 100, 100, 100, 100, 100, 100, 100 | CPT | C4 | Per Voyager  ROI Tonya daughter 740-369-2847 and Tina daughter 740-369-0670., (740) 369-3802 member phone number, ROI returned call  discussed approval. She relays that he mother doesn't actually want to see a geriatrician.  Lengthy pc about her mother and her father  both MediGold members.  She asked a question regarding dental benefits  advised to speak to a member services rep about all things related to benefits. |  |  |  |  | 0 |
| 10202017 | 2017-10-20T14:07:52+00:00 | Q19594689 | 000106285-01 | Wanda | Bartley | MOUNT CARMEL HLTH SYS | 925969 | JASON R | FERREL | 1063790657 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 10242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10242017 | 11232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024102 | M5416 | Radiculopathy, lumbar region | ICD10 | 10242017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T10:40:00+00:00 | Q19582193 | 000117833-01 | George | Hammock | THE UROLOGY GROUP | 921693 | MARK G | DELWORTH | 1275579856 | THE UROLOGY GROUP | 922524 | 1568404846 | THE UROLOGY GROUP | 1568404846 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE UROLOGY GROUP | 10242017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 04172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024115 | C61 | Malignant neoplasm of prostate | ICD10 | 10242017 | J9217, J0897 | Denosumab injection | HCPCS | 6, 60 | 6, 60 | Approved, Approved | 181, 181 | HCPCS | HC | J9217: 6: LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION)  7.5 MG  Dispensed as: 22.50 mg  1 treatment(s) each cycle  2 cycle(s): J0897: 60: INJECTION  DENOSUMAB  1 MG  Dispensed as: 60.00 mg  1 treatment(s) each cycle  1 cycle(s) |  |  |  |  | 0 |
| 10182017 | 2017-10-18T10:06:09+00:00 | Q19568616 | 000111342-01 | Larry | Tackett | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 10242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10182017 | 11172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024131 | R413 | Other amnesia | ICD10 | 10242017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10232017 | 2017-10-23T13:51:51+00:00 |  | 000040244-01 | JOYCE | CLARK | OSU INTERNAL MED LLC | 925720 | JON | MICKLE | 1851595664 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10232017 | 11232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024146 | C9501 | Acute leukemia of unspecified cell type, in remission | ICD10 | 10242017 | 93306, 71020, 94729, 94010, 94060, 94070, 94375, 94726, 94727, 94728, 94240, 94260, 94720, 36600, 87081, 38221, 88313, 88237, 88262, 88271, 88275, G0364, 93005, 86900, 86901, 86850, 36415, 36591, 36592, 85025, 82728, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83735, 84100, 84165, 84155, 85730, 85610, 84450, 83615, 80048, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10232017 | 2017-10-23T15:08:19+00:00 |  | 000017997-01 | LARRY | WALSH | OSU INTERNAL MED LLC | 912908 | BETH A | CHRISTIAN | 1194940783 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10242017 | 01242018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023119 | C8335 | Diffus large B-cell lymph, nodes of ing rgn and lower limb | ICD10 | 10242017 | 85025, 80053, 82232, 81503, 81500, 82784, 83615, 82040, 84075, 84450, 82248, 82247, 84155, 84166, 84550, 86335, 82784, 84165, 86703, 80074, 86334, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 02092017 | 2017-02-09T07:51:49+00:00 | Q17686950.1 | 000098286-01 | CARL | BURNS | SOMC MED CARE FOUNDATION | 922226 | MUHAMMAD T | GILL | 1033323381 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 10242017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02072017 | 03092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170209158 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 10242017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10172017 | 2017-10-17T09:49:43+00:00 | Q19557101 | 000069573-01 | DAVID | HORN | NEUROSURGICAL ASSOCIATES | 933015 | MEGHAN A | RAUCHENSTEIN | 1326232307 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10182017 | 11172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018082 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 10242017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10132017 | 2017-10-13T16:33:40+00:00 |  | 000105689-01 | RONALD | CONLEY | OH GASTRO GRP INC | 918776 | PRIYA M | ROY | 1043492895 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Out of Network Services | OONS | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10242017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10182017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016094 | K5100 | Ulcerative (chronic) pancolitis without complications | ICD10 | 10242017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T12:33:00+00:00 | Q19519387 | 000005948-01 | RALPH | RISTER | CEN OH UROLOGY GRP INC | 908504 | WILLIAM E | BLOCH | 1023013505 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10162017 | 04142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018125 | C61 | Malignant neoplasm of prostate | ICD10 | 10242017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 10132017 | 2017-10-13T10:59:16+00:00 |  | 000079515-01 | Thomas | Dodd | OSU SURGERY LLC | 943637 | MARY E | DILLHOFF | 1518174739 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10242017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 10182017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016077 | K862 | Cyst of pancreas | ICD10 | 10242017 | 93000, 71020, 94760, 99201, 99202, 99203, 99204, 99205, 85730, 85610, 83036, 85025, 36415, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T17:19:43+00:00 |  | 000074925-01 | Marie | Wohl | HEALOGICS SPECIALTY PHYS | 952320 | MATTHEW | HIGHFIELD | 1245603828 | HEALOGICS SPECIALTY PHYS | 949832 | 1124430491 | HEALOGICS SPECIALTY PHYSICIANS OF OH | 1124430491 | Part B Therapy | OP THER | Pre-Service | PRE |  | HEALOGICS SPECIALTY PHYSICIANS OF OH | 10242017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10102017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012138 | L02215 | Cutaneous abscess of perineum | ICD10 | 10242017 | 99305, 99306, 99307, 99308, 99309, 11042 | DEBRIDEMENT SKIN & SUBCU TISSUE | CPT | 12, 12, 12, 12, 12, 1 | 12, 12, 12, 12, 12, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 78, 78, 78, 78, 78, 78 | CPT | C4 |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T08:13:17+00:00 |  | 000076284-01 | Fred | Polk | OSU SURGERY LLC | 918628 | KYLE A | PERRY | 1821209925 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10242017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10132017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012155 | C155, C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 10242017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10092017 | 2017-10-09T13:57:02+00:00 |  | 000102648-01 | Ellen | Williams | COMMUNITY URG CARE CTR | 935197 | M HUSAIN | JAWADI | 1972532703 | RGH ENTERPRISES INC | 904699 | 1609858729 | EDGEPARK MEDICAL SUPPLIES | 1609858729 | DME | DME | Pre-Service | PRE |  | EDGEPARK MEDICAL SUPPLIES | 10242017 | Denied | MediGold Essential Care | Member | Not a Covered Benefit (PA) | Outpatient | 10242017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171009151 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 10242017 | A9276, A9277 | External transmitter, CGM | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Outreach to provider for clinical documentation made., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 10122017 | 2017-10-12T12:53:02+00:00 |  | 000009288-01 | JOANN | ROTHE | EYE SURGICAL & MED CARE | 936834 | WESLEY | HARNISH | 1619979911 | UPPER ARLINGTON SURGERY CENTER | 939327 | 1477558641 | UPPER ARLINGTON SURGERY CENTER | 1477558641 | Out of Network Services | OONS | Pre-Service | PRE |  | UPPER ARLINGTON SURGERY CENTER | 10242017 | Approved | MediGold Classic Preferred | Fax | Observation | Outpatient | 10312017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171013126 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 10242017 | 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
