Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-17
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-17
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
| 08042017 | 2017-08-04T00:30:45+00:00 | Q18999842 | 000057061-01 | LAWRENCE | MOCK | OH ONCOLOGY & HEMATOLOGY | 934932 | MARK E | THOMPSON | 1093763195 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170805049 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 08172017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1600 | 1600 | Approved | 181 | HCPCS | HC | J9271: 1600 Pembrolizumab 200 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 08162017 | 2017-08-16T05:54:10+00:00 | Q19100171 | 000113812-01 | Kathleen | Creamer | COPC CENTRAL OHIO PRIMAR | 935124 | SETH E | HOLTZAPFEL | 1689650269 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817046 | M818 | Other osteoporosis without current pathological fracture | ICD10 | 08172017 | 72128 | CAT SCAN THORACIC SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T17:06:17+00:00 | Q19068653 | 000020641-01 | ROBERT | CLIFTON | CEN OH UROLOGY GRP INC | 901105 | LINDA | OSBORNE | 1861463721 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812071 | C61 | Malignant neoplasm of prostate | ICD10 | 08172017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08092017 | 2017-08-09T14:07:15+00:00 | Q19053532 | 000029726-01 | Bernard | Edwards | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811066 | C61 | Malignant neoplasm of prostate | ICD10 | 08172017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J9217: 8 Leuprolide 22.5 mg  IM  day 1  every 84 days  2 cycles |  |  |  |  | 0 |
| 08092017 | 2017-08-09T16:29:31+00:00 | Q19057638 | 000111157-01 | Dorothea | Morgan | ALLIANCE PHYSICIANS INC | 906600 | MALEK M | SAFA | 1427016914 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811009 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 08172017 | 70491, 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02032017 | 2017-02-03T15:51:00+00:00 | Q1768455 | 000085561-01 | Carole | Keil | TRIHEALTH O S LLC | 905823 | JOEL I | SORGER | 1295730588 | PROSCAN IMAGING EASTGATE | 939998 | 1861482911 | PROSCAN IMAGING EASTGATE | 1861482911 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING EASTGATE | 08172017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02032017 | 03052017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170206018 | M71372 | Other bursal cyst, left ankle and foot | ICD10 | 08172017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 | ON 02/06/17 @ 15:04:00 LEFT V/M FOR MBR TO RETURN MY CALL GAVE MY NAME NUMBER AND HOURS, ON 02/16/17 @ 16:25:00 LEFT V/M FOR MBR TO RETURN MY CALL GAVE MY NAME NUMBER AND HOURS, CORRECTION TO DATE IT SHOULD BE 02/06/17 @ 16:25:00, Authorization never approved post procedural change.  Updated. |  |  |  |  | 0 |
| 08162017 | 2017-08-16T07:15:19+00:00 | Q19100330 | 000081785-01 | Cora | Stevens | MOUNT CARMEL HLTH PRVDRS | 942767 | KYLE | PFAHL | 1801096789 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08242017 | 10232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817049 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 08172017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T07:07:33+00:00 | Q19090821 | 000102550-01 | Robert | Pelphrey | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | RADIOLOGY INC | 938484 | 1609865708 | RADIOLOGY INC | 1609865708 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RADIOLOGY INC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08152017 | 11132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817067 | C61 | Malignant neoplasm of prostate | ICD10 | 08172017 | 77385 | NTSTY MODUL RAD TX DLVR SMPL | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 08112017 | 2017-08-11T15:02:01+00:00 | Q19062995 | 000118213-01 | Marsha | Gaudi | LICKING MEM HLTH PROF | 941939 | EVEN F | WANG | 1871813691 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815027 | G35 | Multiple sclerosis | ICD10 | 08172017 | 70551, 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08012017 | 2017-08-01T13:50:17+00:00 | Q18977200 | 000044632-01 | CAROLE | VANHOOSE | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803069 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 08172017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J3489: 8 INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 4.00 mg  1 treatment(s) each cycle  2 cycle(s) |  |  |  |  | 0 |
| 07102017 | 2017-07-10T11:11:13+00:00 | Q18806118 | 000101894-01 | Judith | Pacino | FAIRFIELD HLTHCARE PROFS | 920348 | LINDA A | STALEY | 1821251497 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170711070 | R4189 | Oth symptoms and signs w cognitive functions and awareness | ICD10 | 08172017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T13:10:34+00:00 | Q19064615 | 000073186-01 | Karolyn | Shaw | MOUNT CARMEL HLTH PRVDRS | 933631 | SHILPA A | PADIA | 1760799175 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811038 | C50312 | Malig neoplasm of lower-inner quadrant of left female breast | ICD10 | 08172017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T08:51:04+00:00 | Q19101504 | 000113708-01 | Robert | Sigman | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817027 | N200 | Calculus of kidney | ICD10 | 08172017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T09:37:06+00:00 | Q19102207 | 000072088-01 | Mary | Riffle | MOUNT CARMEL HLTH PRVDRS | 934617 | IRINA | RYAZANSKY | 1073550893 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817031 | R911 | Solitary pulmonary nodule | ICD10 | 08172017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08172017 | 2017-08-17T10:23:49+00:00 | Q19109494 | 000113869-01 | John | Scull | ORTHOPEDIC ONE INC | 934155 | DUSTIN R | FORD | 1124378492 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 08172017 | Approved | MediGold Essential Care | Fax | Observation | Outpatient | 08172017 | 09162017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817130 | M24852 | Oth specific joint derangements of left hip, NEC | ICD10 | 08172017 | 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T13:02:16+00:00 |  | 000071247-01 | Kenneth | Nagel | KNOX COMMUNITY HOSP GRP | 937051 | SCOTT D | BARKIN | 1841282969 | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 928505 | 1881948073 | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 1881948073 | Out of Network Services | OONS | Pre-Service | PRE |  | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 08172017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08222017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802140 | R9720 | ELEVATED PROSTATE SPECIFIC ANTIGEN [PSA] | ICD10 | 08172017 | 55700 | BIOPSY PROSTATE-NEEDLE-1 OR MORE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 08072017 | 2017-08-07T15:01:59+00:00 | NCT02667587 | 000099528-01 | Larry | Conrad | UNIVERSITY RADIATION ONC | 933056 | RAJU R | RAVAL | 1962733949 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08172017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 08082017 | 11082017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170807027 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 08172017 | 85025, 99211, 36415, 36592, 99213, 96365, 96366, 71020, A9579, Q9966, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | All Health Help codes were faxed to them under this clinical trial. |  |  |  |  | 0 |
| 07032017 | 2017-07-03T08:46:41+00:00 | Q18779934 | 000001776-01 | RICHARD | LONGHENRY | COPC CENTRAL OHIO PRIMAR | 935079 | JOAN E | WURMBRAND | 1790762904 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07032017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170705053 | M25511 | Pain in right shoulder | ICD10 | 08172017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Completed building auth |  |  |  |  | 0 |
| 08172017 | 2017-08-17T10:10:00+00:00 | 19111513 | 000009430-01 | Neil | Pritchard | OSU INTERNAL MED LLC | 930475 | ANNE M | NOONAN | 1477887479 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08172017 | 09162017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817099 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 08172017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 | Health Help ask if and additional code to be added to this request 74177 |  |  |  |  | 0 |
| 08012017 | 2017-08-01T14:34:03+00:00 | Q18981934 | 000067681-01 | PAMELA | BARRETT | OH ONCOLOGY & HEMATOLOGY | 934906 | P KOTHAI | SUNDARAM | 1538127238 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170803075 | C7A010 | Malignant carcinoid tumor of the duodenum | ICD10 | 08172017 | J2353 | INJECTION, OCTREOTIDE, DEPOT FORM FOR INTRAMUSCULAR INJECTION, 1 MG | HCPCS | 120 | 120 | Approved | 182 | HCPCS | HC | J2353: 120 INJECTION  OCTREOTIDE  DEPOT FORM FOR INTRAMUSCULAR INJECTION  1 MG  Dispensed as: 30.00 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 07072017 | 2017-07-07T08:23:44+00:00 | Q18808814 | 000093672-01 | Herman | Hendrickson Jr | MOUNT CARMEL HLTH PRVDRS | 932649 | GREGORY B | COMFORT | 1144482415 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07132017 | 08122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170710045 | R0609 | Other forms of dyspnea | ICD10 | 08172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T10:08:03+00:00 | Q19061080 | 000068453-01 | THOMAS | COVENTRY | ORTHO SPEC & SPORTS MED | 903844 | BRAD L | BERNACKI | 1356303481 | ORTHO SPEC & SPORTS MED | 938453 | 1710983200 | ORTHOPAEDIC SPEC & SPORTS MED INC | 1710983200 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPAEDIC SPEC & SPORTS MED INC | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811018 | M5412 | Radiculopathy, cervical region | ICD10 | 08172017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T09:40:17+00:00 | Q19102433 | 000098381-01 | John | Clemmons | COLONNADE MED GRP INC | 936341 | TROY A | EDWARDS | 1841274552 | FAIRFIELD HLTHCARE PROFS | 937735 | 1457396368 | FAIRFIELD HEALTHCARE PROFS INC | 1457396368 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD HEALTHCARE PROFS INC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817033 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 08172017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T14:43:39+00:00 | Q19066472 | 000087451-01 | William | Short | DAYTON PHYSICIANS LLC | 909670 | KETAN S | SHAH | 1083664023 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 02072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812058 | C61 | Malignant neoplasm of prostate | ICD10 | 08172017 | J9293, J7510 | PREDNISOLONE ORAL PER 5 MG | HCPCS | 40, 336 | 40, 336 | Approved, Approved | 181, 181 | HCPCS | HC | J9293: 40 Mitoxantrone 12 mg/m2  IV  day 1  every 21 days  8 cycles; J7510: 336 Prednisone 5 mg  PO  BID  QD  every 21 days  8 cycles |  |  |  |  | 0 |
| 08102017 | 2017-08-10T11:31:01+00:00 | Q19062742 | 000075563-01 | Barbara | Dowell | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 02062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811027 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 08172017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1600 | 1600 | Approved | 181 | HCPCS | HC | J9271: 1600 Pembrolizumab 200 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 08152017 | 2017-08-15T12:09:39+00:00 | Q19094468 | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 08172017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817009 | C8338 | Diffuse large B-cell lymphoma, lymph nodes of multiple sites | ICD10 | 08172017 | 71250, 70490, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T13:22:20+00:00 | Q19042236 | 000045979-01 | LEWIS | FENTON | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 02122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170811010 | C9310 | Chronic myelomonocytic leukemia not achieve remission | ICD10 | 08172017 | J9025, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 3906, 240 | 3906, 240 | Approved, Approved | 181, 181 | HCPCS | HC | J9025: 3906 INJECTION  AZACITIDINE  1 MG  Dispensed as: 93.00 mg  7 treatment(s) each cycle  6 cycle(s); J1626: 240 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 08042017 | 2017-08-04T06:41:14+00:00 | Q19016543 | 000044240-01 | SARA | MYERS | COPC CENTRAL OHIO PRIMAR | 932486 | MAGDALENA | TEODORESCU | 1750674693 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 09062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170805080 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 08172017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06302017 | 2017-06-30T18:42:11+00:00 | Q18772948 | 000011802-01 | LLOYD | DEAN | RADIOLOGY INC | 914289 | ABHAY S | GOKHALE | 1528371937 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08172017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 06302017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170705039 | C20 | Malignant neoplasm of rectum | ICD10 | 08172017 | 77412 | RADIATION TREATMENT DELIVERY; UP TO 5 MEV; TECH ONLY | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T10:02:35+00:00 | Q19022360 | 000030358-01 | Joseph | Sullivan | CEN OH UROLOGY GRP INC | 937030 | RICHARD | KLUMP | 1114971512 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170812096 | C61 | Malignant neoplasm of prostate | ICD10 | 08172017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08162017 | 2017-08-16T12:31:52+00:00 | Q19106006 | 000075517-01 | Kathryn | Jarrell | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08172017 | 09162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817105 | C641 | Malignant neoplasm of right kidney, except renal pelvis | ICD10 | 08172017 | 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T13:04:06+00:00 | Q19106629 | 000118901-01 | Robert | Mcallister Jr | MOUNT CARMEL HLTH PRVDRS | 933528 | JOSEPH | JOZIC | 1700863149 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 10152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817110 | R079 | Chest pain, unspecified | ICD10 | 08172017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T13:30:59+00:00 | Q18995121 | 000097238-01 | Ruth | Wright | OH ONCOLOGY & HEMATOLOGY | 939552 | JERRY W | MITCHELL | 1750339651 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804077 | D480 | Neoplasm of uncertain behavior of bone/artic cartl | ICD10 | 08172017 | J0897 | Denosumab injection | HCPCS | 1440 | 1440 | Approved | 181 | HCPCS | HC | J0897: 1440 INJECTION  DENOSUMAB  1 MG  Dispensed as: 120.00 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 08072017 | 2017-08-07T14:39:20+00:00 |  | 000072590-01 | Lloyd | Minnard | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08032017 | 11032017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170807026 | D61818, E538 | Deficiency of other specified B group vitamins | ICD10 | 08172017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | Laura at provider's office states that member has not had this service the correct date on request should be 080717 not 080317 stated this on 080717 15:42:32. |  |  |  |  | 0 |
| 08162017 | 2017-08-16T13:26:57+00:00 | Q19091318 | 000081163-01 | William | Gumm | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817068 | I481 | Persistent atrial fibrillation | ICD10 | 08172017 | 75572 | CT HRT W/3D IMAGE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T16:27:10+00:00 |  | 000083167-01 | Patricia | Preston | UNIVERSITY OF CINCINNATI | 924152 | MILTON T | SMITH | 1790726446 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 08172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08142017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810060 | K831 | Obstruction of bile duct | ICD10 | 08172017 | 43260, 43262, 43264, 43274, 43275, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC | PC to provider  LVMM  auth approved  advised of auth number. |  |  |  |  | 0 |
