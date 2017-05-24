Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-11
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-11
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
| 04062017 | 2017-04-06T12:38:39+00:00 | Q18143525 | 000083517-01 | Patricia | Smith | ORTHO ASSOC OF ZANESVILL | 912928 | KARL C | SAUNDERS | 1285626531 | ORTHO ASSOC OF ZANESVILL | 900257 | 1942292388 | ORTHOPAEDIC ASSOC OF ZANESVILLE INC | 1942292388 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPAEDIC ASSOC OF ZANESVILLE INC | 04112017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170407036 | S82115A | Nondisp fx of left tibial spine, init for clos fx | ICD10 | 04112017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04092017 | 2017-04-09T16:32:13+00:00 |  | 000031496-01 | GEORGIA | BROOKS JOHNSON | OSU OTOLARYNGOLOGISTS LL | 935263 | EDWARD E | DODSON | 1871686147 | COCHLEAR AMERICA GROUP | 904032 | 1336149426 | COCHLEAR AMERICA GROUP | 1336149426 | DME | DME | Pre-Service | PRE |  | COCHLEAR AMERICA GROUP | 04112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04032017 | 09022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410109 | H903 | Sensorineural hearing loss, bilateral | ICD10 | 04112017 | L8624, L9900 | ORTHOTIC AND PROSTHETIC SUPPLY, ACCESSORY, AND/OR SERVICE COMPONENT OF A | HCPCS | 2, 1 | 2, 1 | Approved, Approved | 153, 153 | HCPCS | HC |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T10:33:26+00:00 |  | 000062837-01 | MICHAEL | CASTO | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04112017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04182017 | 07182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410151 | C329, R491 | Aphonia | ICD10 | 04112017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, 92597, 31231, 31237 | NASAL/SINUS ENDOSCOPY, SURGICAL; | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T10:35:59+00:00 |  | 000072413-01 | George | Kelly | FCMH MED & SURG ASSOC | 920274 | LAURA A | MATRKA | 1447476536 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04112017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04132017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170410156 | C329, R490 | Dysphonia | ICD10 | 04112017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T17:48:38+00:00 | Q18167806 | 000036717-01 | JEANNETTE | LECRONE | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Initial Review | INIT |  | FAIRFIELD MEDICAL CENTER | 04112017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04102017 | 07092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170411003 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 04112017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 04092017 | 2017-04-09T12:00:13+00:00 | Q18158070 | 000099930-01 | Ellen | Moore | SWEST OH ENT SPECIALTIST | 926332 | STEFANIE K | HORNE | 1568683399 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 04112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04092017 | 05092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411017 | E042 | Nontoxic multinodular goiter | ICD10 | 04112017 | 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T06:39:46+00:00 | Q18158164 | 000053744-01 | JAMES | LANGWELL | COPC CENTRAL OHIO PRIMAR | 905988 | RANDOLPH O | SCHULTZ | 1215991518 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 04112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411018 | R911 | Solitary pulmonary nodule | ICD10 | 04112017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T13:21:19+00:00 | Q18159109 | 000115116-01 | Deborah | Middleton | MERCY HEALTH PHYSICIANS | 920820 | BRENT W | KINDER | 1639284284 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 04112017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411026 | R911 | Solitary pulmonary nodule | ICD10 | 04112017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T11:18:17+00:00 | Q18149348 | 000082226-01 | Neil | Fultz | RADIOLOGY INC | 943494 | JOHN A | MASINO | 1659674083 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411044 | C44329 | Squamous cell carcinoma of skin of other parts of face | ICD10 | 04112017 | 77412 | RADIATION TREATMENT DELIVERY; UP TO 5 MEV; TECH ONLY | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 04072017 | 2017-04-07T14:37:17+00:00 | Q18155871 | 000037254-01 | NANCY | PHILLIPS | COPC CENTRAL OHIO PRIMAR | 927416 | ANDREW K | RHINEHART | 1427360643 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 04112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411053 | Z87891 | Personal history of nicotine dependence | ICD10 | 04112017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T12:10:18+00:00 | Q18140636 | 000055814-01 | DANIEL | BETKEY | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 04112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411077 | G919 | Hydrocephalus, unspecified | ICD10 | 04112017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T07:05:58+00:00 | Q18127311 | 000073577-01 | James | Sullivan | JACKSON FLANIGAN MD LLC | 925872 | JACKSON | FLANIGAN | 1760564793 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 04112017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411087 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 04112017 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T10:33:24+00:00 | Q18161248 | 000068375-01 | Mary | Cross | MOUNT CARMEL HLTH SYS | 947978 | VIRAL D | PATEL | 1346566858 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411101 | R1032 | Left lower quadrant pain | ICD10 | 04112017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T11:56:24+00:00 | Q18162941 | 000076785-01 | Diana | Eitel | COPC CENTRAL OHIO PRIMAR | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411110 | F17210 | Nicotine dependence, cigarettes, uncomplicated | ICD10 | 04112017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T12:50:27+00:00 | Q18163913 | 000093605-01 | Sharon | Bush | MOUNT CARMEL HLTH PRVDRS | 935805 | MARC L | CARROLL | 1639131329 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04112017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04102017 | 05102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411119 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 04112017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T13:05:09+00:00 | Q18164157 | 000102204-01 | Robin | Cross Jr | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 04112017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411121 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 04112017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04062017 | 2017-04-06T16:47:42+00:00 |  | 000097535-01 | Carter | Sartin | TRUSTED HEALTH CARE INC | 926690 | MARSHA K | MITCHELL | 1659502904 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Initial Review | INIT |  | ADENA REGIONAL MEDICAL CENTER | 04112017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Outpatient | 04112017 | 04122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170407009 | K6812 | Psoas muscle abscess | ICD10 | 04112017 | 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04102017 | 2017-04-10T13:31:48+00:00 |  | 000039520-01 | LLOYD | GOSSETT | RADIOLOGY INC | 935042 | DOUGLAS W | WIDMAN | 1669461828 | RADIOLOGY INC | 938484 | 1609865708 | RADIOLOGY INC | 1609865708 | Radiology (HH) | OP RAD | Initial Review | INIT |  | RADIOLOGY INC | 04112017 | Denied | MediGold Classic Preferred | HealthHelp | Criteria Not Met | Outpatient | 04112017 | 04122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170410072 | C61 | Malignant neoplasm of prostate | ICD10 | 04112017 | G0340 | IMAGE-GUIDED ROBOTIC LINEAR ACCELERATOR-BASED STEROTACTIC RADIOSURGERY, | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
