Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-10
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-10
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
| 04042017 | 2017-04-04T09:10:28+00:00 |  | 000117207-01 | Carol | Shultz | COPC CENTRAL OHIO PRIMAR | 934893 | KIMBERLY A | STOCK | 1053307827 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 04102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04102017 | 05102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170405038 | G0489, G8114, G8194, R269, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 04102017 | K0861, E2361, E1028, E2377, E2313, E1007, E2620, E2311, E2607, E0955, E1028 | WHEELCHAIR ACCESSORY, MANUAL SWINGAWAY, RETRACTABLE OR REMOVABLE MOUNTIN | HCPCS | 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396 | HCPCS | HC |  |  |  |  |  | 0 |
| 04052017 | 2017-04-05T14:16:35+00:00 |  | 000012905-01 | LEROY | SHEETS | OSU PHYSICAL MED LLC | 941881 | DANIEL | KIM | 1013147255 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 04102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04052017 | 05052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170406013 | G8194, I6990 | Unspecified sequelae of unspecified cerebrovascular disease | ICD10 | 04102017 | K0835, E2365, E1028, E1002, E2620, E2311, E1012, E0955, E1028, K0108, E2622, E1028, E0956, E0956, E1028 | WHEELCHAIR ACCESSORY, MANUAL SWINGAWAY, RETRACTABLE OR REMOVABLE MOUNTIN | HCPCS | 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 2, 2, 1 | 1, 2, 1, 1, 1, 1, 1, 1, 2, 2, 1, 2, 2, 2, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396, 396 | HCPCS | HC |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T12:43:52+00:00 | Q18143603 | 000048567-01 | David | Justus | OHIO ENT & ALLERGY PHYSI | 936912 | JEFFERY B | HILTBRAND | 1184696585 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407037 | J328 | Other chronic sinusitis | ICD10 | 04102017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T11:45:02+00:00 | Q18142627 | 000040678-01 | REGINA | TURNER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04102017 | Approved | MediGold Classic Preferred |  | Medical Criteria Met | Outpatient | 04052017 | 06042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407087 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 04102017 | 93461 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 04072017 | 2017-04-07T10:24:14+00:00 | Q18151096 | 000032090-01 | MARY | DOUGHERTY | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04102017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410037 | C8510 | Unspecified B-cell lymphoma, unspecified site | ICD10 | 04102017 | 70492, 71270, 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04072017 | 2017-04-07T10:04:03+00:00 | Q18136456 | 000095889-01 | Jerry | Michaels | ALLIANCE PHYSICIANS INC | 911865 | CARROL H | ESTEP | 1639134448 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 04102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410046 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 04102017 | 74176, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04072017 | 2017-04-07T07:02:35+00:00 | Q18148412 | 000110150-01 | John | Bonnette | ORTHO & NEURO CONSULTS I | 909495 | MICHAEL D | SKEELS | 1922213552 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 04102017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410062 | M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 04102017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T13:33:08+00:00 | Q18144563 | 000075480-01 | John | Brooks | MOUNT CARMEL HLTH PRVDRS | 935536 | DOUGLAS D | MASSICK | 1881666287 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410091 | J320 | Chronic maxillary sinusitis | ICD10 | 04102017 | 70486 | CAT SCAN MAXIOFACIAL WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T13:54:45+00:00 | Q18160639 | 000053744-01 | JAMES | LANGWELL | LOWER LIGHTS CHRISTIAN H | 933482 | NOI F | HUGHES | 1144666702 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 04102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170410095 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 04102017 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T13:32:49+00:00 | Q18118895 | 000100236-01 | Betty | Zimmerman | CANYON MEDICAL CENTER | 904476 | BEATA K | STERKOWICZ | 1477659993 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410101 | R55 | Syncope and collapse | ICD10 | 04102017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T14:30:55+00:00 | Q18121772 | 000072424-01 | Wanda | Ledinski | AMERICAN HLTH NETWORK OF | 902621 | INDERPREET K | RANGI | 1114964368 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04042017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410103 | R0789 | Other chest pain | ICD10 | 04102017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T14:07:38+00:00 | Q18160840 | 000108728-01 | Richard | Dickson | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Initial Review | INIT |  | FAIRFIELD MEDICAL CENTER | 04102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 07092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170410104 | C3482 | Malignant neoplasm of ovrlp sites of left bronchus and lung | ICD10 | 04102017 | J9060, J9305, J1453, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 04072017 | 2017-04-07T12:28:37+00:00 | Q18128807 | 000106792-01 | Phyllis | Biller | GENESIS PRIMARY CARE PHY | 922063 | ISMET B | OZKAZANC | 1386686988 | GENESIS HEALTHCARE SYSTEM DME | 924099 | 1972640332 | GENESIS HEALTHCARE SYSTEM DME | 1972640332 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM DME | 04102017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410117 | M542 | Cervicalgia | ICD10 | 04102017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
