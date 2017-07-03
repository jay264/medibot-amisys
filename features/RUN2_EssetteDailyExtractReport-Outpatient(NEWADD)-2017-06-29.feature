Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-29
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-29
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
| 06202017 | 2017-06-20T15:56:51+00:00 |  | 000081133-01 | Lonnie | King | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 900087 |  | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 1811018609 | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 900087 | 1811018609 | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 1811018609 | DME | DME | Pre-Service | PRE |  | CAPITAL PROSTHETIC & ORTHOTIC CENTER | 06292017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06202017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170620187 | E1142, M216X1, M216X2 | Other acquired deformities of left foot | ICD10 | 06292017 | A5501, A5503, A5506, L2820, A5508 | FOR DIABETICS ONLY, DELUXE FEATURE OF OFF-THE-SHELF DEPTH-INLAY SHOE OR | HCPCS | 2, 2, 2, 2, 2 | 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62 | HCPCS | HC | Auth updated with end date of Aug 20 2017 per request of Michelle due to longer period needed for delivery of custom shoes. |  |  |  |  | 0 |
| 05052017 | 2017-05-05T19:24:46+00:00 | Q18318140 | 000098653-01 | Kathleen | Jackson | ALLIANCE PHYSICIANS INC | 902333 | ALEJANDRO R | CALVO | 1457341760 | ALLIANCE PHYS BH INC | 916872 | 1780852228 | ALLIANCE PHYSICIANS BH INC | 1780852228 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ALLIANCE PHYSICIANS BH INC | 06292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 11062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622176 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 06292017 | J9045, J9305, J1453 | Fosaprepitant injection | HCPCS | 60, 492, 900 | 60, 492, 900 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T16:04:35+00:00 |  | 000065768-01 | GEORGE | MEYER | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Predetermination Request | PR | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06292017 | Approved | MediGold Essential Care | Fax | With Additional Info | Outpatient | 06222017 | 09222017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170623047 | C8333 | Diffuse large B-cell lymphoma, intra-abdominal lymph nodes | ICD10 | 06292017 | J1190 | INJECTION, DEXRAZOXANE HCL, PER 250 MG | HCPCS | 0 | 1 | Denied | 93 | HCPCS | HC | PHONE CALL TO JESSICA W/ DR RIOS-PEREZ  CONFIRMED THAT MEMBER RECEIVED 1ST DOSE OF DOXORUBICIN 50.75 MG ON 6/22/17  AS WELL AS INITIAL DOSE OF ZINECARD INJECTION., Letter is written in appropriate language with no abbreviations and is therefore approved., received notification of expedited appeal. Case reviewed by Dr. Robert Durbin and approved. |  |  |  |  | 0 |
| 06282017 | 2017-06-28T01:06:50+00:00 | Q18734379 | 000086130-01 | Burton | Miller | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 06292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06272017 | 12242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629011 | C8331 | Diffuse large B-cell lymphoma, nodes of head, face, and neck | ICD10 | 06292017 | J9310, J2505, J2469, J1100, J9070, J9000, J9370, J7512 | PREDNISONE IR OR DR ORAL 1MG | HCPCS | 48, 8, 60, 480, 90, 60, 12, 3000 | 48, 8, 60, 480, 90, 60, 12, 3000 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC | J9310: 48 (RCHOP) Rituximab 375 mg/m2  IV  day 1  every 21 days  6 cycles; J9070: 90 Cyclophosphamide 750 mg/m2  IV  day 1  every 21 days  6 cycles; J9000: 60 Doxorubicin 50 mg/m2  IV  day 1  every 21 days  6 cycles; J9370: 12 Vincristine 1.4 mg/m2 (max 2 mg)  IV  day 1  every 21 days  6 cycles; J7512: 3000 Prednisone 100 mg  PO  days 1-5  every 21 days  6 cycles; J2505: 8 PegFilgrastim (Neulasta) 6 mg  SQ  once  every 21 days  8 cycles; J2469: 60 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s); J1100: 480 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 06282017 | 2017-06-28T09:22:38+00:00 | Q18704189 | 000045412-01 | SARA | FORD | LICKING MEM ONCOLOGY HEM | 931839 | D'ANNA N | MULLINS | 1790946861 | LICKING MEM HLTH PROF | 914072 | 1326072265 | LICKING MEMORIAL HEALTH PROFESSIONAL | 1326072265 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HEALTH PROFESSIONAL | 06292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06212017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629013 | C539 | Malignant neoplasm of cervix uteri, unspecified | ICD10 | 06292017 | J9045, J2469, J1100, J9267 | PACLITAXEL INJECTION | HCPCS | 120, 80, 640, 2800 | 120, 80, 640, 2800 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T07:40:46+00:00 | Q18727534 | 000084140-01 | Alfred | Perry | SOUTHEASTERN OHIO PHYS | 924393 | JOSHUA A | PAULICK | 1942499611 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06292017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629016 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 06292017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06272017 | 2017-06-27T14:29:37+00:00 | Q18741174 | 000115578-01 | Melinda | Claggett | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07182017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629020 | C541 | Malignant neoplasm of endometrium | ICD10 | 06292017 | J9045, J1453, J2469, J9267 | PACLITAXEL INJECTION | HCPCS | 126, 1050, 70, 1225 | 126, 1050, 70, 1225 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9045: 126 Carboplatin AUC 6 (max 900 mg)  IV  day 1  every 21 days  7 cycles; J9267: 1225 Paclitaxel 175 mg/m2  IV  day 1  every 21 days  7 cycles; J1453: 1050 Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  7 cycle(s); J2469: 70 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  7 cycle(s) |  |  |  |  | 0 |
| 06282017 | 2017-06-28T12:06:07+00:00 | Q18753662 | 000080500-01 | Paul | Wolters | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06292017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629029 | C8310 | Mantle cell lymphoma, unspecified site | ICD10 | 06292017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06282017 | 2017-06-28T12:58:04+00:00 | Q18754533 | 000104194-01 | James | Brewer | MERCY HEALTH PHYSICIANS | 928367 | SHERVIN | SADRPOUR | 1821287509 | JEWISH HOSPITAL LLC | 949378 | 1609251891 | JEWISH HOSPITAL LLC | 1609251891 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | JEWISH HOSPITAL LLC | 06292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629044 | I4892 | Unspecified atrial flutter | ICD10 | 06292017 | 93653, 93655, 93621, 93622, 93623, 93609 | INTRA-VENTRICULAR AND/OR -ATRIAL MAPPING TACHY SITE C CATH. MANIPULAT. | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06282017 | 2017-06-28T12:09:59+00:00 | Q18753681 | 000111454-01 | Tomlyn | Watson | MOUNT CARMEL HLTH PRVDRS | 932965 | MATTHEW R | PAULUS | 1407131022 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06282017 | 08272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629052 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 06292017 | 93460 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 06282017 | 2017-06-28T12:32:34+00:00 | Q18754149 | 000043951-01 | PATRICIA | BRIGHT | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629057 | M542 | Cervicalgia | ICD10 | 06292017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06282017 | 2017-06-28T12:36:21+00:00 | Q18754205 | 000096969-01 | Wendell | Williamson | MOUNT CARMEL HLTH PRVDRS | 942767 | KYLE | PFAHL | 1801096789 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 06292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 09042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629058 | Z01818 | Encounter for other preprocedural examination | ICD10 | 06292017 | 93460 | R&L HRT ART/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 06282017 | 2017-06-28T12:36:23+00:00 | Q18754217 | 000043951-01 | PATRICIA | BRIGHT | MOUNT CARMEL HLTH PRVDRS | 909299 | PATRICIA C | GARCIA | 1184833436 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629059 | M542 | Cervicalgia | ICD10 | 06292017 | 72125 | CAT SCAN CERVICAL SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06282017 | 2017-06-28T10:55:31+00:00 | Q18752423 | 000016322-01 | TEDDIE | KIBBEY | DAMASCUS FAMILY MED INC | 937207 | JEFFREY E | MOORE | 1366493405 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MEMORIAL HOSPITAL OF UNION COUNTY | 06292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629069 | J984 | Other disorders of lung | ICD10 | 06292017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06282017 | 2017-06-28T08:49:41+00:00 | Q18749457 | 000092555-01 | Jo Ann | Smiley | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06272017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629127 | I5032 | Chronic diastolic (congestive) heart failure | ICD10 | 06292017 | 33207, 33225, C1900, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06272017 | 2017-06-27T15:11:40+00:00 | Q18729702 | 000044759-01 | KATHERINE | BUTTERBAUGH | ADENA MEDICAL GROUP LLC | 903460 | SIYUN | LI | 1902821366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 06292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629133 | G939 | Disorder of brain, unspecified | ICD10 | 06292017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06272017 | 2017-06-27T17:19:37+00:00 | Q18738744 | 000039059-01 | JAMES | BURKHART | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629142 | I255 | Ischemic cardiomyopathy | ICD10 | 06292017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06292017 | 2017-06-29T12:02:22+00:00 |  | 000042352-01 | STELLA | HERNANDEZ | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06292017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06302017 | 09302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629152 | C07 | Malignant neoplasm of parotid gland | ICD10 | 06292017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06292017 | 2017-06-29T12:02:22+00:00 |  | 000042352-01 | STELLA | HERNANDEZ | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06292017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07062017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629153 | C07 | Malignant neoplasm of parotid gland | ICD10 | 06292017 | 92550, 92552, 92553, 92557, 92567, 92588, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
