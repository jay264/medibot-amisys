Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-10
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-10
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
| 08092017 | 2017-08-09T12:56:28+00:00 |  | 000110949-01 | Tina | Gilbert | COPC CENTRAL OHIO PRIMAR | 905124 | KORT M | GRONBACH | 1336191170 | COPC CENTRAL OHIO PRIMAR | 905124 | 1194705194 | KORT M GRONBACH | 1336191170 | DME | DME | Pre-Service | PRE | KORT M | GRONBACH | 08102017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 08102017 | 09102017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170809115 | M5416 | Radiculopathy, lumbar region | ICD10 | 08102017 | L8689 | EXTERNAL RECHARGING SYSTEM FOR IMPLANTED NEUROSTIMULATOR, RE | HCPCS | 1 | 1 | Approved | 32 | HCPCS | HC | Spoke to in-network DME providers who report that they do not carry this battery. |  |  |  |  | 0 |
| 08092017 | 2017-08-09T13:11:13+00:00 | Q19053874 | 000109877-01 | John | Gombeda | SEASTERN OH RGNL MED CTR | 923984 | NABIEL | ALKHOURI | 1497728489 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08102017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810108 | C7A1 | Malignant poorly differentiated neuroendocrine tumors | ICD10 | 08102017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T17:06:07+00:00 |  | 000084039-01 | Harold | Elkins | OSU HLTH SYSTEM NEUROSUR | 942972 | VIBNOR | KRISHNA | 1114008364 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 08102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726101 | M62838 | Other muscle spasm | ICD10 | 08102017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 03312017 | 2017-03-31T09:03:48+00:00 |  | 000067831-01 | THOMAS | SCHWARTZ | OSU UROLOGY LLC | 943281 | FARA M | BELLOWS | 1083935118 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403093 | G8250 | Quadriplegia, unspecified | ICD10 | 08102017 | 97530, 97110, 97112, 97113, 97116, 97140, 97542, 97750, 97760, 97535, 97110, 97530, 97112 | PT NEUROMUSCULAR REEDUCATION, | CPT | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185, 185 | CPT | C4 | RECEIVED PHONE CALL 7/11/17 @ 09:44:23 FROM KIM PREECE RN W/OSU REHAB   REQUESTING DATE EXTENSION OF AUTH  MEMBER HAS USED 29/59 PT VISITS  AND 18/29 OT VISITS.  THERE IS NO OTHER CHANGE REQUESTED  JUST EXTENSION FOR MEMBER TO RECEIVE ALREADY AUTHORIZED VISITS.  AUTH EXTENDED TO 9/28/17. |  |  |  |  | 0 |
| 08082017 | 2017-08-08T18:27:57+00:00 | Q19040286 | 000033530-01 | LINDA | MATTES | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 10212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810080 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 08102017 | 33228, C1785, C2619 | PACEMAKER, DUAL CHAMBER, NON RATE-RESPONSIVE (IMPLANTABLE) | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T10:14:31+00:00 | Q19050409 | 000084253-01 | Candy | Bettinger | ELITE FOOT & ANKLE LLC | 947251 | JACQUELINE K | DONOVAN | 1225394596 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08112017 | 09102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810030 | S82851A | Displaced trimalleolar fracture of right lower leg, init | ICD10 | 08102017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07282017 | 2017-07-28T11:02:31+00:00 |  | 000111239-01 | Gerald | Rose | EYE CARE ASSOC OF GREATE | 921866 | DONALD T | HUDAK | 1396709234 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | BETHESDA NORTH HOSPITAL | 08102017 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 08232017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170728122 | H02132, H02135 | Senile ectropion of left lower eyelid | ICD10 | 08102017 | 68440, 67917 | ECTROPION REPAIR(KUHNT-SZSYMANOWSKY | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07262017 | 2017-07-26T00:50:29+00:00 | Q18932798 | 000093502-01 | Wayne | Johnson | LICKING MEM HLTH PROF | 906427 | WILLIAM A | STALLWORTH | 1457312597 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08042017 | 01312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170727115 | C61 | Malignant neoplasm of prostate | ICD10 | 08102017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08092017 | 2017-08-09T08:38:44+00:00 | Q19047984 | 000099205-01 | David | Hull | EYE SPEC INC CHILLI | 911930 | LISA H | REAVES | 1346297058 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 08102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810041 | H468 | Other optic neuritis | ICD10 | 08102017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08082017 | 2017-08-08T16:27:59+00:00 | Q19026743 | 000045649-01 | SHIRLEY | RATCLIFF | ADENA MEDICAL GROUP LLC | 927435 | ZION | OSHIKANLU | 1750522694 | ADENA HEALTH SYSTEMS | 913325 | 1639362619 | ADENA MEDICAL GROUP LLC | 1235468083 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA MEDICAL GROUP LLC | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810065 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 08102017 | J9145 | INJECTION, DARATUMUMAB 10 MG | HCPCS | 1036 | 1036 | Approved | 181 | HCPCS | HC | J9145: 1036 Injection  daratumumab  10 mg  Dispensed as: 735.00 mg  1 treatment(s) each cycle  14 cycle(s) |  |  |  |  | 0 |
| 08012017 | 2017-08-01T11:38:41+00:00 | Q18974891 | 000101855-01 | William | Packard | MOUNT CARMEL HLTH PRVDRS | 934981 | DOUGLAS B | VAN FOSSEN | 1629039698 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802043 | I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 08102017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T08:45:14+00:00 |  | 000106677-01 | Mardell | Ohlmacher | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 927947 | 1396178620 | ORTHOPEDIC ONE INC | 1396178620 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 08102017 | Denied | MediGold Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 08102017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170810085 | M2011, M2041, Z981 | Arthrodesis status | ICD10 | 08102017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 07202017 | 2017-07-20T10:34:31+00:00 | Q18905656 | 000055743-01 | Barbara | Morehouse | MOUNT CARMEL HLTH PRVDRS | 936223 | NAHID | DADMEHR | 1366552721 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07212017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170731001 | R260 | Ataxic gait | ICD10 | 08102017 | 72141, 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T13:27:46+00:00 | Q19054355 | 000028535-01 | JUDITH | POENISCH | COPC CENTRAL OHIO PRIMAR | 934884 | ROBERT W | STEPHENSON | 1588664650 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810116 | M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 08102017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T12:33:16+00:00 | Q19053129 | 000044632-01 | CAROLE | VANHOOSE | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810104 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 08102017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T13:49:39+00:00 | Q19054696 | 000093576-01 | William | Molen | ALLIANCE PHYSICIANS INC | 912636 | SHITAL | PEMA | 1780640995 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 08102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810117 | M14672 | Charcot's joint, left ankle and foot | ICD10 | 08102017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T00:23:44+00:00 | Q19027437 | 000113445-01 | Kathryn | Franklin | FAIRFIELD HLTHCARE PROFS | 934808 | KANWALJIT | SINGH | 1679765770 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810013 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 08102017 | J9171, J2505, J1626, J9070 | CYCLOPHOSPHAMIDE, 100 MG | HCPCS | 600, 8, 160, 48 | 600, 8, 160, 48 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9171: 600 (TC) Docetaxel 75 mg/m2  IV  day 1  every 21 days  4 cycles; J9070: 48 Cyclophosphamide 600 mg/m2  IV  day 1  every 21 days  4 cycles; J2505: 8 PegFilgrastim (Neulasta) 6 mg  SQ  day 2  every 21 days  8 cycles; J1626: 160 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 03162017 | 2017-03-16T09:42:56+00:00 | Q17981650 | 000099029-01 | Joan | Houk | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 08102017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03172017 | 04162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810111 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 08102017 | 70496 | CT ANGIOGRAPHY, HEAD | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07312017 | 2017-07-31T15:45:17+00:00 | Q18965131 | 000029394-01 | JUDY | MCCLELLAND | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170802018 | C180 | Malignant neoplasm of cecum | ICD10 | 08102017 | J9263, J1100, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1200, 160, 40 | 1200, 160, 40 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9263: 1200 INJECTION  OXALIPLATIN  0.5 MG  Dispensed as: 150.00 mg  2 treatment(s) each cycle  2 cycle(s); J1100: 160 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  2 cycle(s); J2469: 40 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 08032017 | 2017-08-03T09:50:39+00:00 |  | 000033824-01 | WILLIAM | POOLER | ORTHO ASSOC OF ZANESVILL | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 927947 | 1396178620 | ORTHOPEDIC ONE INC | 1396178620 | DME | DME | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 08102017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 08102017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170803133 | M19072 | Primary osteoarthritis, left ankle and foot | ICD10 | 08102017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | 08/10/2017 08:30:00 Received a call from Wanda stating MBR has appointment 08/14/17, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08082017 | 2017-08-08T15:39:10+00:00 | Q19039000 | 000014757-01 | RONALD | LATZ | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08152017 | 10142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810078 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 08102017 | 33228, C1785, C2619 | PACEMAKER, DUAL CHAMBER, NON RATE-RESPONSIVE (IMPLANTABLE) | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T13:24:46+00:00 | Q19028370 | 000089918-01 | Houston | Rogers | MIDWEST HYPERBARIC PHYS | 904412 | LOUIS E | PILATI | 1205886439 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 08102017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 09062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810066 | L97524 | Non-prs chronic ulcer oth prt left foot w necrosis of bone | ICD10 | 08102017 | 73720 | MRI LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T08:44:41+00:00 | Q19043585 | 000064880-01 | LEWIS | HAUBEIL | ADENA MEDICAL GROUP LLC | 928152 | SERENA J | MILLER | 1285066647 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08082017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810084 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 08102017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05222017 | 2017-05-22T10:03:52+00:00 | Q18477167 | 000045678-01 | JAMES | FALLER | HEMATOLOGY ONCOLOGY CONS | 933419 | ANITHA S | NALLARI | 1881649879 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05242017 | 11202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170523005 | C188 | Malignant neoplasm of overlapping sites of colon | ICD10 | 08102017 | J9263, J0640, J9035 | INJECTION, BEVACIZUMAB, 10 MG | HCPCS | 300, 15, 32 | 300, 15, 32 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9263: 300 Oxaliplatin 150mg IV every day 1 every 14 days x 1 cycles ( 1 treatments ).  Total billing units = 300; J0640: 15 Leucovorin Calcium 720 IV every 14 days x 1 cycle (1 treatment ).  Total billing units = 15; J9035: 32 Bevacizumab 320 mg IV every 14 days x 1 cycles (1 treatment ).  Total billing units = 32 |  |  |  |  | 0 |
| 07112017 | 2017-07-11T09:47:05+00:00 | Q18831185 | 000081594-01 | Barbara | Shirkey | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07142017 | 08172020 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717039 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 08102017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 1131 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T00:21:49+00:00 | Q19022968 | 000028125-01 | HAROLD | NEELY | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 02032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810063 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 08102017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 48 | 48 | Approved | 181 | HCPCS | HC | J3489: 48 INJECTION  ZOLEDRONIC ACID  1 MG  Dispensed as: 4.00 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 07242017 | 2017-07-24T07:50:04+00:00 |  | 000077275-01 | Donald | Chamberlain | UNIVERSITY RADIATION ONC | 949435 | JESSICA L | WOBB | 1356653984 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08102017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07282017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170724098 | C131 | Malig neoplasm of aryepiglottic fold, hypopharyngeal aspect | ICD10 | 08102017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T10:19:50+00:00 | Q19050121 | 000007686-01 | NORA | COPLEY | MADISON FAMILY HEALTH | 937353 | DAVID R | RALSTON | 1164408472 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08102017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810026 | M3130 | Wegener's granulomatosis without renal involvement | ICD10 | 08102017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05112017 | 2017-05-11T16:40:25+00:00 |  | 000020762-01 | FLORENCE | HARDESTY | FORRESTAL JR, THOMAS P | 922021 | THOMAS P | FORRESTAL JR | 1487644696 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Part B Therapy | OP THER | Pre-Service | PRE |  | ZANESVILLE HEALTH AND REHABILITATION | 08102017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05112017 | 05312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512123 | G309, I214, M545 | Low back pain | ICD10 | 08102017 | 97161, 97116, 97112, 97110, 97165, 97530, 97110 | THERAPEUTIC PROCEDURE, ONE OR MORE AREAS, | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 21, 21, 21, 21, 21, 21, 21 | CPT | C4 | Spoke with Tracy at the SNF  asked about the contract that was sent on friday 5/12/16 but not rec. back yet. Tracy states it had to be sent to the Administrator for review and they had some questions about the contract  directed them to contact JP and states she will do that., Non Compliant NOMNC received |  |  |  |  | 0 |
| 06292017 | 2017-06-29T12:02:22+00:00 |  | 000042352-01 | STELLA | HERNANDEZ | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08102017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07062017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629153 | C07 | Malignant neoplasm of parotid gland | ICD10 | 08102017 | 92550, 92552, 92553, 92557, 92567, 92588, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T08:21:57+00:00 | Q19048090 | 000016917-01 | CLARA | WHALEY | AKSM HEALTHCARE COLLABO | 934886 | DAVID W | STEWART | 1720029903 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08102017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08092017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810042 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 08102017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
