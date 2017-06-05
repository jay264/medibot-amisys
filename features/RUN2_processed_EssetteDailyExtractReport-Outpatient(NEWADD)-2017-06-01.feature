Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-01
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-01
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
| 05302017 | 2017-05-30T13:41:42+00:00 | Q18534317 | 000075449-01 | Lucille | Parker | MERCY HEALTH PHYSICIANS | 921339 | CARMELLA | GIULITTO | 1619975042 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 06012017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601066 | F17210 | Nicotine dependence, cigarettes, uncomplicated | ICD10 | 06012017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T08:26:46+00:00 | Q18539033 | 000100986-01 | Linda | Park | ORTHOPEDIC ONE INC | 927311 | DAVID M | WITTER | 1518992510 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601022 | M5416 | Radiculopathy, lumbar region | ICD10 | 06012017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T10:42:12+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06012017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 05132017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512133 | D7581 | Myelofibrosis | ICD10 | 06012017 | 38204, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05082017 | 2017-05-08T15:56:18+00:00 |  | 000057684-01 | DENNIS | HARVEY | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06012017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05172017 | 07172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170508151 | C089 | Malignant neoplasm of major salivary gland, unspecified | ICD10 | 06012017 | 42415, 38724, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T08:24:22+00:00 | Q18538934 | 000110516-01 | WILLIAM | CONING | THE UROLOGY GROUP | 929193 | DANIEL F | ROBERTSHAW | 1881856482 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 06012017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06012017 | 07012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601005 | C61 | Malignant neoplasm of prostate | ICD10 | 06012017 | 74177, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05302017 | 2017-05-30T18:36:51+00:00 | Q18517917 | 000012728-01 | DORCAS | SWANGER | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601051 | C450 | Mesothelioma of pleura | ICD10 | 06012017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05302017 | 2017-05-30T15:06:09+00:00 | Q18536143 | 000041988-01 | RONALD | MARSH | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06012017 | 07012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601079 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06012017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06012017 | 2017-06-01T10:19:17+00:00 |  | 000074788-01 | Sonia | Hazlett | AMERICAN MEDICAL EQUIPMENT INC | 903661 |  | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 903661 | 1801970934 | AMERICAN MEDICAL EQUIPMENT INC | 1801970934 | DME | DME | Pre-Service | PRE |  | AMERICAN MEDICAL EQUIPMENT INC | 06012017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06012017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601127 | R0602 | Shortness of breath | ICD10 | 06012017 | E2208, K0739 | Repair/svc DME non-oxygen eq | HCPCS | 2, 1 | 2, 1 | Approved, Approved | 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T08:36:59+00:00 |  | 000048633-01 | SHARON | JAMES | OSU INTERNAL MED LLC | 928269 | BRENT C | LAMPERT | 1700024577 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06012017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05222017 | 06202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512119 | Z941 | Heart transplant status | ICD10 | 06012017 | 93306 | TTE W/DOPPLER, COMPLETE | CPT | 1 | 1 | Approved | 30 | CPT | C4 |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T07:54:39+00:00 | Q18532078 | 000098602-01 | John | Humphries | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 07302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601061 | I255 | Ischemic cardiomyopathy | ICD10 | 06012017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T11:17:16+00:00 | Q18542655 | 000057876-01 | BEVERLY | LITTLE | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601017 | C20 | Malignant neoplasm of rectum | ICD10 | 06012017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T12:54:28+00:00 | Q18544423 | 000046355-01 | JAMES | CALHOUN | MOUNT CARMEL HLTH PRVDRS | 937182 | MICHAEL J | MELECA | 1942201306 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601099 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 06012017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T10:20:28+00:00 | Q18541357 | 000047348-01 | EVELYN | STEWART | ADENA MEDICAL GROUP LLC | 927435 | ZION | OSHIKANLU | 1750522694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601006 | C55 | Malignant neoplasm of uterus, part unspecified | ICD10 | 06012017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T11:37:11+00:00 | Q18543051 | 000073921-01 | Bruce | Felt | COPC CENTRAL OHIO PRIMAR | 909998 | RONALD M | TADDEO | 1033154323 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 06012017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601112 | R1902 | Left upper quadrant abdominal swelling, mass and lump | ICD10 | 06012017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T11:00:27+00:00 | Q18542310 | 000048592-01 | MARGIE | GOLDSBERRY | ADENA MEDICAL GROUP LLC | 936107 | ROBERT D | VIOLETTE | 1346245875 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601015 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 06012017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T13:22:37+00:00 | Q18512942 | 000054247-01 | Clara | Baker | OSU INTERNAL MED LLC | 909303 | JENNIFER A | SIPOS | 1033124813 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06012017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05302017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601044 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 06012017 | 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T11:48:40+00:00 | Q18543214 | 000086285-01 | June | Bruker-Elder | PARS NEUROSURG ASSOC INC | 924062 | SEYED ABDI | GHODSI | 1205803814 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 06012017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601114 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 06012017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06012017 | 2017-06-01T12:58:53+00:00 |  | 000100451-01 | Eugene | Allen | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06012017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06072017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601136 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 06012017 | 99211, 99212, 99213, 99214, 99215, 99201, 99202, 99203, 99204, 99205, 82310, 84100, 82565, 82374, 84520, 82435, 84295, 84132, 82947, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05312017 | 2017-05-31T14:48:56+00:00 |  | 000103505-01 | ANDREW | HOLUPKA | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06012017 | Denied | MediGold Essential Care | Fax | Administrative Denial | Outpatient | 06012017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170531110 | R4182 | Altered mental status, unspecified | ICD10 | 06012017 | A0428, A0425 | GROUND MILEAGE, PER STATUTE MILE | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Retroactive request.  Retroactive requests for prior authorization are denied., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05312017 | 2017-05-31T09:08:39+00:00 | Q18539840 | 000083140-01 | Wanda | Reed | SEASTERN OH RGNL MED CTR | 923984 | NABIEL | ALKHOURI | 1497728489 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06012017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601033 | Z85038 | Personal history of malignant neoplasm of large intestine | ICD10 | 06012017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06012017 | 2017-06-01T07:54:58+00:00 |  | 000082331-01 | Robert | Kattine | OSU SURGERY LLC | 914209 | SHERIF R | ABDEL-MISIH | 1255501250 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06012017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601072 | C169 | Malignant neoplasm of stomach, unspecified | ICD10 | 06012017 | 99211, 99212, 99213, 99214, 99215, 85025, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06012017 | 2017-06-01T07:38:53+00:00 |  | 000065626-01 | FRANK | HOLTER | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06012017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06142017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601055 | D3702 | Neoplasm of uncertain behavior of tongue | ICD10 | 06012017 | 99201, 99211, 88305, 88112, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 3, 1, 1, 3 | 1, 3, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05312017 | 2017-05-31T12:44:40+00:00 | Q18544245 | 000095159-01 | Joy | Sergent | MOUNT CARMEL HLTH SYS | 942590 | ELLEN H | BAILEY | 1184867756 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05312017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170601096 | C7A012 | Malignant carcinoid tumor of the ileum | ICD10 | 06012017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
