Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-25
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-25
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
| 10242017 | 2017-10-24T09:26:00+00:00 | Q19611239 | 000104659-01 | Barbara | Adkins | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10302017 | 04282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025009 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 10252017 | J9305, J2469, J9045 | CARBOPLATIN, 50 MG | HCPCS | 800, 80, 144 | 800, 80, 144 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9305: 800: Pemetrexed 500 mg/m2  IV  day 1  every 21 days  8 cycles: J9045: 144: Carboplatin AUC 6 (max 900 mg)  IV  day 1  every 21 days  8 cycles: J2469: 80: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 10232017 | 2017-10-23T14:24:44+00:00 | Q19605421 | 000072360-01 | Michael | Kessler | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025015 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 10252017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10132017 | 2017-10-13T14:49:25+00:00 |  | 000034178-01 | JACK | FARABEE | OHIO ENT & ALLERGY PHYSI | 935410 | DAVID M | POWELL | 1649242652 | OH SURGERY CENTER LLC | 939330 | 1063514107 | OH SURGERY CENTER LLC | 1063514107 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | OH SURGERY CENTER LLC | 10252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10132017 | 11132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171016095 | H02831, H02834 | Dermatochalasis of left upper eyelid | ICD10 | 10252017 | 15823 | BLEPHAROPLASTY UPPER LD C EXCSV SKN | CPT | 2 | 2 | Approved | 32 | CPT | C4 | Per Amisys  Ohio Surgery Center is PAR 1063514107, no date given on procedure |  |  |  |  | 0 |
| 10232017 | 2017-10-23T15:30:03+00:00 | Q19607004 | 000119426-01 | Bruce | Blue | MOUNT CARMEL HLTH PRVDRS | 915095 | RENEE | ADKINS | 1942236377 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10252017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 10272017 | 11262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025047 | Z01810 | Encounter for preprocedural cardiovascular examination | ICD10 | 10252017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T06:40:01+00:00 | Q19608287 | 000104587-01 | Edwin | Terry | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10252017 | 11242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025056 | M25461 | Effusion, right knee | ICD10 | 10252017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T13:35:34+00:00 | Q19583443 | 000073544-01 | Gary | Franke | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | RIVER VALLEY ORTHOS & SP | 938435 | 1669450961 | RIVER VALLEY ORTHOS & SPORTS MED | 1669450961 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | RIVER VALLEY ORTHOS & SPORTS MED | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 11182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025074 | M25511 | Pain in right shoulder | ICD10 | 10252017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10182017 | 2017-10-18T14:37:00+00:00 | Q19574588 | 000107250-01 | Billie | Welsh | ADENA MEDICAL GROUP LLC | 932324 | MATTHEW W | CHRISTIAN | 1043260698 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10182017 | 11172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025081 | Q6100 | Congenital renal cyst, unspecified | ICD10 | 10252017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10182017 | 2017-10-18T08:56:55+00:00 | Q19567125 | 000030340-01 | RAYMOND | VANHORN | PULMONARY MED OF DAYTON | 932993 | EHAB B | HUSSEIN | 1740449495 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10182017 | 11172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025087 | R911 | Solitary pulmonary nodule | ICD10 | 10252017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T10:28:09+00:00 | Q19611678 | 000057791-01 | KENNETH | JOY | ORTHO & NEURO CONSULTS I | 937363 | CARL C | BERASI | 1861476368 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 11022017 | 12022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025096 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 10252017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T12:02:42+00:00 | Q19613597 | 000076025-01 | Richard | Tuck | GENESIS MEDICAL GRP LLC | 941995 | GRANT V | CHOW | 1184771701 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 10252017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11172017 | 01162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025105 | I495 | Sick sinus syndrome | ICD10 | 10252017 | 33208, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T12:54:05+00:00 | Q19614585 | 000018772-01 | HELEN | HIGGINS | MOUNT CARMEL HLTH PRVDRS | 937214 | WILLIAM | MORRIS | 1912935453 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10242017 | 11232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025115 | R1032 | Left lower quadrant pain | ICD10 | 10252017 | 72193 | CAT SCAN PELVIS C CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T08:11:38+00:00 | Q19608962 | 000077704-01 | Rollin | Metz | MID OH NEUROLOGY INC | 939558 | JOSHUA C | NELSON | 1609870344 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 10252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11012017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025129 | R411 | Anterograde amnesia | ICD10 | 10252017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T08:14:39+00:00 | Q19609031 | 000104757-01 | James | Ott | MOUNT CARMEL HLTH PRVDRS | 932649 | GREGORY B | COMFORT | 1144482415 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11032017 | 12032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025132 | I480 | Paroxysmal atrial fibrillation | ICD10 | 10252017 | 75572 | CT HRT W/3D IMAGE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T09:22:29+00:00 | Q19610228 | 000074663-01 | Robert | Calder | COSHOCTON COUNTY MEM HSP | 919987 | JOHN D | CAFFARATTI | 1265418255 | SEASTERN OH RGNL MED CTR | 923983 | 1922138981 | SOUTHEASTERN OH RGNL MED CTR 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH RGNL MED CTR 1500 | 10252017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10262017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025143 | R079 | Chest pain, unspecified | ICD10 | 10252017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T09:26:39+00:00 | Q19610286 | 000047896-01 | GRANVILLE | FAULKNER | MOUNT CARMEL HLTH PRVDRS | 908292 | TARIQ M | GILL | 1104001189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10252017 | 11242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025146 | M4802 | Spinal stenosis, cervical region | ICD10 | 10252017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T10:00:07+00:00 | Q19611045 | 000043123-01 | GARY | PATTERSON | MOUNT CARMEL HLTH PRVDRS | 936395 | THOMAS S | FANNING | 1013970581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10242017 | 12232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025157 | R079 | Chest pain, unspecified | ICD10 | 10252017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T09:31:26+00:00 |  | 000099622-01 | Mary | Upton | GENESIS PRIMARY CARE PHY | 922111 | BRANDY R | PERKINS | 1144504101 | OSU CAMBRIDGE HEART | 906643 | 1528025657 | OSU CAMBRIDGE HEART | 1528025657 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU CAMBRIDGE HEART | 10252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10252017 | 11252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012158 | I480, I5032 | Chronic diastolic (congestive) heart failure | ICD10 | 10252017 | 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T08:29:00+00:00 |  | 000099241-01 | ALICE | WING | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10252017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11082017 | 12082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171019147 | C50212 | Malig neoplasm of upper-inner quadrant of left female breast | ICD10 | 10252017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T15:55:53+00:00 |  | 000059220-01 | SHIRLEY | ASTOR | CHRISTMAN, KENNETH D | 932097 | KENNETH D | CHRISTMAN | 1821156092 | CHRISTMAN, KENNETH D | 932097 | 1821156092 | KENNETH D CHRISTMAN | 1821156092 | Out of Network Services | OONS | Pre-Service | PRE | KENNETH D | CHRISTMAN | 10252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10242017 | 01312018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171024166 | S81802A | Unspecified open wound, left lower leg, initial encounter | ICD10 | 10252017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 100, 100, 100, 100, 100, 100, 100, 100, 100, 100 | CPT | C4 |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T12:07:02+00:00 |  | 000056326-01 | BECKY | CHILCOTE | PATIENT TRANSPORT SRVS O | 912320 |  | COLUMBUS CONNECTION | 0 | PATIENT TRANSPORT SRVS O | 912320 | 1164750451 | COLUMBUS CONNECTION | 0 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | COLUMBUS CONNECTION | 10252017 | Denied | MediGold Classic Preferred | Phone | Not a Covered Benefit (PA) | Outpatient | 10252017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X171025166 | R6889 | Other general symptoms and signs | ICD10 | 10252017 | A0425, A0428 | AMBULANCE SERVICE, BASIC LIFE SUPPORT, NON-EMERGENCY TRANSPORT, (BLS) | HCPCS | 0, 0 | 25, 1 | Denied, Denied | 0, 0 | HCPCS | HC |  |  |  |  |  | 0 |
| 10172017 | 2017-10-17T10:32:08+00:00 | Q19563733 | 000105646-01 | James | Ruble | UNIVERSITY OF CINCINNATI | 948338 | RUSSELL O | HOFFMAN III | 1346284221 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 10252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10182017 | 11172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025178 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 10252017 | 78492 | HEART IMAGE (PET), MULTIPLE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10252017 | 2017-10-25T08:37:32+00:00 |  | 000116078-01 | JOSEPH | SANOK JR | OSU HLTH SYS ORTHO ONC P | 942750 | THUAN V | LY | 1487697637 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10252017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 10262017 | 11262017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025107 | S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 10252017 | 73552, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 10172017 | 2017-10-17T12:56:07+00:00 |  | 000045547-01 | RONALD | PERKINS | VASCULAR SRVS OF OH INC | 935228 | PATRICK S | VACCARO | 1871540880 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10312017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018136 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 10252017 | 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 10182017 | 2017-10-18T08:36:00+00:00 |  | 000046933-01 | ANNA | MOORE | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10202017 | 01202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171018159 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 10252017 | 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T08:59:20+00:00 |  | 000097196-01 | Richard | Kulp | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10172017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010090 | C321 | Malignant neoplasm of supraglottis | ICD10 | 10252017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10192017 | 2017-10-19T13:37:21+00:00 | Q19584223 | 000070269-01 | Robert | Webb | SWESTERN OH UROLOGY INC | 935542 | PHILIP C | ASCHI | 1467463695 | SWESTERN OH UROLOGY INC | 937844 | 1538346929 | SOUTHWESTERN OH UROLOGY INC | 1538346929 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SOUTHWESTERN OH UROLOGY INC | 10252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11072017 | 05062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023050 | C61 | Malignant neoplasm of prostate | ICD10 | 10252017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 10202017 | 2017-10-20T12:15:24+00:00 | Q19592953 | 000042825-01 | Leon | Endicott | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10242017 | 01222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023074 | C61 | Malignant neoplasm of prostate | ICD10 | 10252017 | G6013 | RADIATION TREATMENT DELIVERY | HCPCS | 10 | 10 | Approved | 91 | HCPCS | HC | G6013: 10: G6013 10 |  |  |  |  | 0 |
