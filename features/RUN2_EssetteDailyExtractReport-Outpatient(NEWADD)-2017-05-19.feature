Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-19
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-19
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
| 05172017 | 2017-05-17T16:04:17+00:00 |  | 000014070-01 | CONSTANCE | BOMMER | OSU EYE PHYS & SURGEONS | 942944 | RAYMOND I | CHO | 1528009628 | OSU EYE PHYS & SURGEONS | 939010 | 1861437923 | OSU EYE PHYSICIANS & SURGEONS INC | 1861437923 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU EYE PHYSICIANS & SURGEONS INC | 05192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05242017 | 06242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170517142 | C44119 | Basal cell carcinoma skin/ left eyelid, including canthus | ICD10 | 05192017 | 67961, 68700, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T16:49:50+00:00 |  | 000026846-01 | ROBERT | SCARBOROUGH | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06072017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518131 | C329, C4910 | Malig neoplm of conn & soft tiss of unsp upr lmb, inc shldr | ICD10 | 05192017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579, 92597, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T08:43:48+00:00 |  | 000071093-01 | Thomas | Elk | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05172017 | 05312017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518159 | K625 | Hemorrhage of anus and rectum | ICD10 | 05192017 | 45378, 45385, 45380, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 15, 15, 15, 15 | HCPCS | HC |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T09:03:49+00:00 |  | 000040088-01 | MARGARET | VANHORN | OSU INTERNAL MED LLC | 935245 | ERIC H | KRAUT | 1780621433 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05252017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518164 | D649, D6949 | Other primary thrombocytopenia | ICD10 | 05192017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85730, 85610, 84443, 85652, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 83735, 82310, 84100, 85049, G0364, 38221, 88184, 88262, 88305, 88342, 88307, 88313, 88237, 84165, 85045, 82668, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | RECEIVED PHONE CALL FROM TAMMY C AT OSU  REQUESTED BM BX BE ADDED TO REQUEST  CPT CODES GIVEN BY TAMMY  READ BACK FOR CONFIRMATION |  |  |  |  | 0 |
| 05182017 | 2017-05-18T10:23:04+00:00 |  | 000031496-01 | GEORGIA | BROOKS JOHNSON | OH EAR INSTITUTE LLC | 904433 | JOHN M | RYZENMAN | 1871501437 | COCHLEAR AMERICA GROUP | 904032 | 1336149426 | COCHLEAR AMERICA GROUP | 1336149426 | DME | DME | Pre-Service | PRE |  | COCHLEAR AMERICA GROUP | 05192017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05102017 | 11062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518174 | H9012 | Condctv hear loss, uni, left ear, w unrestr hear cntra side | ICD10 | 05192017 | L7510 | REPAIR OF PROSTHETIC DEVICE, REPAIR OR REPLACE MINOR PARTS | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T12:48:22+00:00 | Q18460510 | 000049874-01 | ALVIN | BOGGS | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05182017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519017 | R1084 | Generalized abdominal pain | ICD10 | 05192017 | 74181 | MRI ABDOMEN | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T13:01:38+00:00 | Q18460777 | 000016823-01 | CORALEE | BRYANT | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 06242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519018 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 05192017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T12:30:00+00:00 | Q18460229 | 000022583-01 | CLARK | VANEST | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05222017 | 06212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519027 | M4806 | Spinal stenosis, lumbar region | ICD10 | 05192017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T11:49:05+00:00 | Q18459524 | 000062577-01 | DAVID | STILWELL | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05182017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519046 | Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 05192017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T08:52:56+00:00 | Q18455986 | 000074543-01 | Dean | Hall | SELBY GENERAL HOSPITAL | 921896 | KELLI A | CAWLEY | 1023113727 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SELBY GENERAL HOSPITAL | 05192017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06012017 | 07012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519049 | C153 | Malignant neoplasm of upper third of esophagus | ICD10 | 05192017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T09:36:47+00:00 | Q18456857 | 000113152-01 | Ernest | Pitts | ORTHO & NEURO CONSULTS I | 902411 | DONALD J | ROHL | 1578547097 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 05192017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05182017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519055 | M5410 | Radiculopathy, site unspecified | ICD10 | 05192017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T14:44:37+00:00 | Q18436511 | 000027218-01 | TONY | HOUSE | RIVER VALLEY ORTHOS & SP | 936928 | KEITH A | HOLLINGSWORTH | 1063490647 | PROSCAN IMAGING PICKERINGTON LLC | 903474 | 1629036223 | PROSCAN IMAGING PICKERINGTON LLC | 1629036223 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING PICKERINGTON LLC | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519064 | M25511 | Pain in right shoulder | ICD10 | 05192017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T14:56:26+00:00 | Q18452416 | 000092358-01 | Roy | Jenkins | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 936383 | 1538488564 | DANIEL J EVANS | 1760477640 | Radiology (HH) | OP RAD | Pre-Service | PRE | DANIEL J | EVANS | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05182017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519098 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 05192017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T15:48:53+00:00 | Q18453288 | 000096228-01 | Claudia | Henry | ALLIANCE PHYSICIANS INC | 900997 | SARAH | HUSSAIN | 1790762854 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 05192017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519107 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 05192017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05172017 | 2017-05-17T16:31:45+00:00 | Q18436028 | 000103062-01 | David | Asbury | PROVIDENCE MEDICAL GROUP | 914512 | JOHN | SEFTON | 1679559470 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 05192017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05162017 | 06152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170519119 | M25562 | Pain in left knee | ICD10 | 05192017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05102017 | 2017-05-10T13:59:18+00:00 |  | 000064506-01 | SANDRA | DONALDSON | N8 FAMILY CHIRO INC | 924462 | TODD A | HAMILTON | 1760499982 | N8 FAMILY CHIRO INC | 924462 | 1215943881 | TODD A HAMILTON | 1760499982 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | TODD A | HAMILTON | 05192017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 05192017 | 05202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170511130 | M4606, M9902, M9903 | Segmental and somatic dysfunction of lumbar region | ICD10 | 05192017 | 99212 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | As per phone call with Lacey additional information was requested in order to process request.  Current request is incomplete and missing clinical documentation.  Message was left for a return phone call from Tara., Letter is written in appropriate language with no abbreviations and is therefore approved., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05172017 | 2017-05-17T14:13:15+00:00 |  | 000039307-01 | CHARLOTTE | STRAITS | N8 FAMILY CHIRO INC | 924462 | TODD A | HAMILTON | 1760499982 | N8 FAMILY CHIRO INC | 924462 | 1215943881 | TODD A HAMILTON | 1760499982 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | TODD A | HAMILTON | 05192017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 05192017 | 05202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170517131 | G44209, M9901 | Segmental and somatic dysfunction of cervical region | ICD10 | 05192017 | 99203, 72082, 97026, 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0 | 1, 1, 1, 1 | Denied, Denied, Denied, Denied | 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05192017 | 2017-05-19T10:52:37+00:00 |  | 000096182-01 | Ollie | Cumberland | MERCY HEALTH PHYSICIANS | 921255 | ANDREW J | ACHE | 1740387067 | MEADOWVIEW REGIONAL MEDICAL CENTER | 931045 | 1881785863 | MEADOWVIEW REGIONAL MEDICAL CENTER | 1881785863 | Out of Network Services | OONS | Pre-Service | PRE |  | MEADOWVIEW REGIONAL MEDICAL CENTER | 05192017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Administrative Denial | Outpatient | 05192017 | 05202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170519132 | M79606 | Pain in leg, unspecified | ICD10 | 05192017 | 93971 | DUPLEX SCAN OF EXTREMITY VEINS & RESPONSES; FOLLOW-UP OR LIMITED STUDY | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter was sent in error Meadowview is out of network contacted the provider, Provider's office confirmed request is a retroactive request.  Prior authorization for services rendered can not be process.  Mbr arrived at the clinic with the prescription for the doppler.  Retroactive requests also can not be expedited. |  |  |  |  | 0 |
| 05182017 | 2017-05-18T14:47:17+00:00 |  | 000071256-01 | Steven | Levi | HOSPICE OF CENTRAL OHIO | 903552 | JONATHAN D | HOLLISTER | 1487621652 | WEXNER HERITAGE HOUSE | 939320 | 1932197704 | WEXNER HERITAGE HOUSE | 1932197704 | Part B Therapy | OP THER | Pre-Service | PRE |  | WEXNER HERITAGE HOUSE | 05192017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170518184 | M4802, M4806, M6281 | Muscle weakness (generalized) | ICD10 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  |  |  | 0 |
