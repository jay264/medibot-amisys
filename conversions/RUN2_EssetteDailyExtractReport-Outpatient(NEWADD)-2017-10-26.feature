Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-26
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-26
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
| 10182017 | 2017-10-18T10:59:40+00:00 |  | 000095092-01 | Vickie | Cook | OSU OTOLARYNGOLOGISTS LL | 927444 | AARON | MOBERLY | 1083872022 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 10262017 | Approved | Flexible Choice PPO | Fax | Services Not Available In-Network | Outpatient | 10182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019070 | G960 | Cerebrospinal fluid leak | ICD10 | 10262017 | 99213, 92557, 92550, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T10:27:01+00:00 | Q19622701 | 000115275-01 | Freeman | Burke Jr | CEN OH UROLOGY GRP INC | 935062 | MICHAEL A | WODARCYK | 1407827264 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10252017 | 11242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026035 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 10262017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10182017 | 2017-10-18T16:17:39+00:00 |  | 000030251-01 | PHYLLIS | NOE | EYE SURGICAL & MED CARE | 936834 | WESLEY | HARNISH | 1619979911 | UPPER ARLINGTON SURGERY CENTER | 939327 | 1477558641 | UPPER ARLINGTON SURGERY CENTER | 1477558641 | Out of Network Services | OONS | Pre-Service | PRE |  | UPPER ARLINGTON SURGERY CENTER | 10262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11092017 | 12092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019132 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 10262017 | 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T08:30:06+00:00 | Q19620330 | 000005948-01 | RALPH | RISTER | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11212017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026101 | C61 | Malignant neoplasm of prostate | ICD10 | 10262017 | G6015 | RADIATION TX DELIVERY IMRT | HCPCS | 45 | 45 | Approved | 91 | HCPCS | HC | G6015: 45: G6015 45 |  |  |  |  | 0 |
| 10252017 | 2017-10-25T12:09:38+00:00 |  | 000049352-01 | BARBARA | SMITH | OSU INTERNAL MED LLC | 909303 | JENNIFER A | SIPOS | 1033124813 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10262017 | 01262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026056 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 10262017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T13:08:15+00:00 | NCT02538666 . | 000068535-01 | MARILYN | WINKFIELD | OSU HLTH SYSTEM NEUROSUR | 950480 | JAVIER | GONZALEZ | 1730370917 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10302017 | 01302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026089 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 10262017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10182017 | 2017-10-18T17:36:51+00:00 |  | 000111403-01 | Ronald | Emrich | CHILDRENS HOSPITAL | 936516 |  | CHILDRENS HOSPITAL | 1134152986 | CHILDRENS HOSPITAL | 936516 | 1134152986 | CHILDRENS HOSPITAL | 1134152986 | Out of Network Services | OONS | Pre-Service | PRE |  | CHILDRENS HOSPITAL | 10262017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11262017 | 02262018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019141 | G809 | Cerebral palsy, unspecified | ICD10 | 10262017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  |  |  |  | 0 |
| 10262017 | 2017-10-26T13:27:00+00:00 | Q19632524 | 000103357-01 | Bertha | Hays | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 10262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 04242018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026150 | C8228 | Follicular lymphoma grade III, unsp, lymph nodes mult site | ICD10 | 10262017 | J1447 | INJ TBO FILGRASTIM 1 MICROG | HCPCS | 7 | 7 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10262017 | 2017-10-26T13:34:44+00:00 | Q19635157 | 000107749-01 | Denna | Davis | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 10262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 04242018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171026153 | C482 | Malignant neoplasm of peritoneum, unspecified | ICD10 | 10262017 | J9267, J9045, J2505, J2469, J1453, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 6, 6, 8, 6, 6, 24 | 6, 6, 8, 6, 6, 24 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T12:23:59+00:00 |  | 000071774-01 | Larry | Fairchild | OH GASTRO GRP INC | 947901 | BRETT W | SLEESMAN | 1295050136 | CENTRAL OHIO ENDOSCOPY CENTER LLC | 941998 | 1003220187 | CENTRAL OHIO ENDOSCOPY CENTER LLC | 1003220187 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OHIO ENDOSCOPY CENTER LLC | 10262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10312017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024155 | Z86010 | Personal history of colonic polyps | ICD10 | 10262017 | 45378, 45380, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 | Last test for polyps 04/24/17, Julie from requesting providers office called requesting status.  I told her it was IN PROCESS. |  |  |  |  | 0 |
| 03202017 | 2017-03-20T08:06:32+00:00 | Q18001419 | 000000282-01 | JOAN | SMITH | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513047 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 10262017 | 74174, 75574 | CT ANGIO HRT W/3D IMAGE | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 08142017 | 2017-08-14T15:30:24+00:00 | Q19087808 | 000114101-01 | Lenora | Bolinger | MEM HSP OF UNION COUNTY | 935268 | ROBERT D | RUPERT JR | 1831305325 | MOUNT CARMEL HLTH PRVDRS | 914650 | 1013942630 | MOUNT CARMEL HEALTH PROVIDERS | 1013942630 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS | 10262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10132017 | 11122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170816025 | C319 | Malignant neoplasm of accessory sinus, unspecified | ICD10 | 10262017 | 70540 | MRI ORBIT FACE & NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T11:19:00+00:00 | 19311864 | 000075805-01 | Jean | Kessler | CLEVELAND CLINIC FNDN | 910952 | SEAN | LYDEN | 1962508416 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 10262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09152017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170915058 | I716 | Thoracoabdominal aortic aneurysm, without rupture | ICD10 | 10262017 | 71275, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 48, 48 | CPT | C4 | HH reference number for 74174 is 19312034., Spoke with Dr. Sean Lyden's office (Jackie) at 216.444.3581 and requested clinical., RECEIVED PHONE MESSAGE FROM IRIS AT CCF.  REQUESTING CHANGE OF DATES OF AUTHORIZATION.  SCANS NOT SCHEDULED UNTIL 10/30/17.  AUTH UPDATED WITH NEW DATES OF SERVICE. |  |  |  |  | 0 |
| 10102017 | 2017-10-10T14:52:44+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10262017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 10122017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171011087 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 10262017 | 99211, 99212, 99213, 99214, 99215, 88305, G0463, 36415 | ROUTINE VENIPUNCTURE FOR SPEC COL. | CPT | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T17:32:05+00:00 | Q19528043 | 000073770-01 | Nina | Huffer | ADENA MEDICAL GROUP LLC | 911234 | COLLINS N | OKOLIE | 1235331224 | FRANKLIN CLINIC | 938029 | 1316131683 | FRANKLIN CLINIC | 1316131683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FRANKLIN CLINIC | 10262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10122017 | 11112017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171013108 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 10262017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
