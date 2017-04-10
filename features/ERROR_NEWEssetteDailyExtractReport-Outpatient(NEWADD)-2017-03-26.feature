Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-26
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-26
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
| 03132017 | 2017-03-13T14:44:26+00:00 |  | 000101868-01 | Alyssa | Bohlander | CONCORD COUNSELING | 913377 | SARA L | BONACCI | 1225272628 | CONCORD COUNSELING | 913377 | 1043258767 | SARA L BONACCI | 1225272628 | OP Behavioral Health | OP BH | Pre-Service | PRE | SARA L | BONACCI | 03242017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03092017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170314120 | F4312, P914 | Neonatal cerebral depression | ICD10 | 03242017 | 90791, 90834, 90835, 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03132017 | 2017-03-13T14:44:26+00:00 |  | 000115477-01 | Penny | Starr | CONCORD COUNSELING | 913377 | SARA L | BONACCI | 1225272628 | CONCORD COUNSELING | 913377 | 1043258767 | SARA L BONACCI | 1225272628 | OP Behavioral Health | OP BH | Pre-Service | PRE | SARA L | BONACCI | 03242017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03172017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170314122 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 03242017 | 90791, 90834, 90835, 90836, 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T09:05:23+00:00 |  | 000078631-01 | Larry | Jean | NCHMD INC | 949577 | RICHARD J | DE ASLA | 1053387191 | NCH HEALTHCARE SYSTEM INC | 920306 | 1720085137 | NCH HEALTHCARE SYSTEM INC | 1720085137 | Out of Network Services | OONS | Pre-Service | PRE |  | NCH HEALTHCARE SYSTEM INC | 03242017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03162017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170321088 | Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 03242017 | 97110, 97140, 97116 | PT GAIT TRAINING, | CPT | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T12:24:05+00:00 |  | 000030242-01 | CAROLE | EISEL | SACRED HEART HOSPITAL | 934633 |  | SACRED HEART HOSPITAL | 0 | SACRED HEART HOSPITAL | 934633 | 0 | SACRED HEART HOSPITAL | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | SACRED HEART HOSPITAL | 03242017 | Approved | MediGold Classic Preferred | Phone | Services Not Available In-Network | Outpatient | 03222017 | 04012017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170322134 | D759 | Disease of blood and blood-forming organs, unspecified | ICD10 | 03242017 | 85610 | PROTHROMBIN TIME | CPT | 2 | 2 | Approved | 11 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T14:06:15+00:00 |  | 000071892-01 | Alice | Dillman | OSU HLTH SYSTEM NEUROSUR | 901016 |  | OSU HEALTH SYSTEM NEUROSURGERY | 1619935525 | OSU HLTH SYS ORTHO ONC P | 949004 | 1710944814 | YAZEED M GUSSOUS | 1891969184 | Out of Network Services | OONS | Pre-Service | PRE | YAZEED M | GUSSOUS | 03242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03232017 | 06232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170323135 | M4120 | Other idiopathic scoliosis, site unspecified | ICD10 | 03242017 | 99204, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 3 | 1, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T14:31:57+00:00 | Q18030103 | 000084469-01 | Robert | Emerick | PARKERSBURG NEUROLOGICAL | 923186 | MALCOLM B | LOUDEN | 1649272303 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 03242017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324004 | G451 | Carotid artery syndrome (hemispheric) | ICD10 | 03242017 | 70551, 70549 | MR ANGIOGRAPH NECK W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T14:32:49+00:00 | Q18030273 | 000026612-01 | NORMA | MILLER | COPC CENTRAL OHIO PRIMAR | 907773 | BRYAN A | SAULS | 1417173907 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 03242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324013 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 03242017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T15:44:46+00:00 |  | 000014233-01 | LUANN | FUTRYK | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 03242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324022 | M25562 | Pain in left knee | ICD10 | 03242017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03212017 | 2017-03-21T19:36:57+00:00 | Q17987499 | 000046709-01 | BETTY | THOMAN | MOUNT CARMEL HLTH PRVDRS | 935073 | FRED W | WORLEY | 1003814633 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03232017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324033 | R079 | Chest pain, unspecified | ICD10 | 03242017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T09:56:26+00:00 | Q18035305 | 000064935-01 | VIRGINIA | MAYER | MOUNT CARMEL HLTH PRVDRS | 933528 | JOSEPH | JOZIC | 1700863149 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03232017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324043 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 03242017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T11:02:27+00:00 |  | 000109385-01 | Christina | Millhouse | FAIRFIELD HLTHCARE PROFS | 920348 | LINDA A | STALEY | 1821251497 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 03242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03232017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324052 | R569 | Unspecified convulsions | ICD10 | 03242017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T16:16:48+00:00 | Q18029479 | 000051145-01 | RICHARD | SOUTHWORTH | ORTHOPEDIC ONE INC | 936646 | STEVEN | GAINES | 1235122573 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 03242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324065 | M545 | Low back pain | ICD10 | 03242017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T08:04:29+00:00 | Q18033273 | 000079227-01 | Anne | Sullivan | NORTHSIDE FAMILY PHYS | 909035 | JOSEPH | SMITH | 1417057589 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 03242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324071 | M25512 | Pain in left shoulder | ICD10 | 03242017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 | See attachments for Approval letter sent to member. |  |  |  |  | 0 |
| 03232017 | 2017-03-23T08:53:00+00:00 | Q18034000 | 000066703-01 | LARRY | BAILEY | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 03242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03232017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324076 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 03242017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T09:51:17+00:00 | Q18025149 | 000059542-01 | DOROTHY | GILBERT | FAIRFIELD HLTHCARE PROFS | 927434 | ALAEDDIN | AYYAD | 1548434046 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Initial Review | INIT |  | FAIRFIELD MEDICAL CENTER | 03242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03232017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170324086 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 03242017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T14:11:03+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03282017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324102 | D492 | Neoplasm of unsp behavior of bone, soft tissue, and skin | ICD10 | 03242017 | 20225, 77012, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 03202017 | 2017-03-20T13:47:51+00:00 |  | 000063379-01 | ROBERT | FUHRMAN | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 03242017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03242017 | 03252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170321101 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 03242017 | E0486 | ORAL DEVICE/APPLIANCE USED TO REDUCE UPPER AIRWAY COLLAPSIBI | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03202017 | 2017-03-20T14:43:32+00:00 |  | 000029024-01 | CHARLENE | EVANS | HOSP SVC MED GRP OF MARY | 913868 | RAJU | FATEHCHAND | 1346201407 | TUSCANY GARDENS | 905810 | 1073634788 | TUSCANY GARDENS | 1073634788 | Part B Therapy | OP THER | Pre-Service | PRE |  | TUSCANY GARDENS | 03242017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170322084 | M6281 | Muscle weakness (generalized) | ICD10 | 03242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T12:54:58+00:00 |  | 000068801-01 | DONNA | SMITH | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 03242017 | Partial Approval | MediGold Classic Preferred | Fax | Portion of Request Not Covered By Medicare | Outpatient | 03242017 | 03312017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Partial Approval | X170323117 | C569, R531 | Weakness | ICD10 | 03242017 | E0143, E0260, K0001 | STANDARD WHEELCHAIR | HCPCS | 0, 1, 1 | 1, 1, 1 | Denied, Approved, Approved | 8, 8, 8 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
