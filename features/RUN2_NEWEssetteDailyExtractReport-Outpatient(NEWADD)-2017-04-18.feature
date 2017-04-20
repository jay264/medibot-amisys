Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-18
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-18
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
| 02232017 | 2017-02-23T09:33:48+00:00 | Q17562603 | 000108346-01 | RUTH | OPPHILE | GENESIS MEDICAL GRP LLC | 921922 | STEVEN H | KIMBERLY | 1851383137 | ORTHO ASSOC OF ZANESVILL | 900257 | 1942292388 | ORTHOPAEDIC ASSOC OF ZANESVILLE INC | 1942292388 | Radiology (HH) | OP RAD | Initial Review | INIT |  | ORTHOPAEDIC ASSOC OF ZANESVILLE INC | 04182017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01232017 | 02222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170223116 | M25562 | Pain in left knee | ICD10 | 04182017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02242017 | 2017-02-24T11:19:11+00:00 | Q17837025 | 000084087-01 | Penny | Bush | OSU SURGERY LLC | 919591 | MOUNIR J | HAURANI | 1679781546 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 04182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03172017 | 04162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170224070 | I716 | Thoracoabdominal aortic aneurysm, without rupture | ICD10 | 04182017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04112017 | 2017-04-11T12:38:49+00:00 |  | 000029283-01 | LADONNA | DOLL | COLS OB GYN INC | 935429 | MADHURI | KURUP | 1801895875 | UNIV GYN & OB CNSLT | 907960 | 1073552493 | ANDREW HUNDLEY | 1831132653 | Out of Network Services | OONS | Pre-Service | PRE | ANDREW | HUNDLEY | 04182017 | Denied | TRINITY HEALTH | Member | Services Available In-Network | Outpatient | 04182017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170411008 | N8110 | Cystocele, unspecified | ICD10 | 04182017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04112017 | 2017-04-11T07:49:16+00:00 |  | 000109505-01 | Linda | Seward | CEN OH BEHAVIORAL MED | 928275 | PETER P | ZAFIRIDES | 1699845388 | CEN OH BEHAVIORAL MED | 928275 | 1508936204 | PETER P ZAFIRIDES | 1699845388 | Out of Network Services | OONS | Pre-Service | PRE | PETER P | ZAFIRIDES | 04182017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04132017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170411011 | F331 | Major depressive disorder, recurrent, moderate | ICD10 | 04182017 | 99213, 90833 | PSYTX PTAND/FAM W/EANDM 30 MIN | CPT | 3, 3 | 3, 3 | Approved, Approved | 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T12:46:59+00:00 |  | 000063026-01 | CAROLYN | ANDERSON | MOUNT CARMEL HLTH PRVDRS | 917545 | BRIAN J | HAMBURG | 1437270709 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 04182017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 04182017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170415008 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04182017 | E1392 | PORTABLE OXYGEN CONCENTRATOR, RENTAL | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04142017 | 2017-04-14T14:39:37+00:00 |  | 000065994-01 | ARNOLD | WITT | CLEVELAND CLINIC FNDN | 943467 | KRISTIN B | HIGHLAND | 1740384528 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 04182017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05012017 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417004 | J849 | Interstitial pulmonary disease, unspecified | ICD10 | 04182017 | 94060, 94729, 94620, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 12, 12, 12, 12 | 12, 12, 12, 12 | Approved, Approved, Approved, Approved | 366, 366, 366, 366 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T16:38:44+00:00 |  | 000090534-01 | Louise | Hartman | MOUNT CARMEL HLTH SYS | 944092 | BRITTON D | RINK | 1811034242 | AMBRY GENETICS CORPORATION | 929192 | 1861568784 | AMBRY GENETICS CORPORATION | 1861568784 | Genetic Testing | OP GEN | Pre-Service | PRE |  | AMBRY GENETICS CORPORATION | 04182017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Outpatient | 04182017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170417014 | Z803, Z8041 | Family history of malignant neoplasm of ovary | ICD10 | 04182017 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04142017 | 2017-04-14T08:44:54+00:00 |  | 000107649-01 | Monti | Smith | PICKAWAY HEALTH SERVICES | 910320 | CAROLYN R | YOST | 1396955498 | MYRIAD GENETIC LABORATORIES | 903741 | 1669484473 | MYRIAD GENETIC LABORATORIES | 1669484473 | Genetic Testing | OP GEN | Pre-Service | PRE |  | MYRIAD GENETIC LABORATORIES | 04182017 | Denied | MediGold Essential Care | Fax | Member Not Eligible | Outpatient | 04182017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170417018 | Z803 | Family history of malignant neoplasm of breast | ICD10 | 04182017 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04172017 | 2017-04-17T14:17:56+00:00 |  | 000034143-01 | RUTH | FRAME | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 04182017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 04182017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170417158 | C3431 | Malignant neoplasm of lower lobe, right bronchus or lung | ICD10 | 04182017 | J2469, J9181, J9045 | CARBOPLATIN, 50 MG | HCPCS | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04152017 | 2017-04-15T09:50:36+00:00 | Q18158314 | 000061482-01 | JUDY | HAYWOOD | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418001 | C50211 | Malig neoplm of upper-inner quadrant of right female breast | ICD10 | 04182017 | J9171, J9045, J9355 | TRASTUZUMAB, 10 MG | HCPCS | 774, 72, 297 | 774, 72, 297 | Approved, Approved, Approved | 91, 91, 91 | HCPCS | HC | J9171: 774 Docetaxel: 129 mg IV Day 1 q 3 weeks x 6 cycles (6 treatments).  Total billing units = 774; J9045: 72 Carboplatin: 561 mg IV Day 1 q 3 weeks x 6 cycles (6 treatments).  Total billing units = 72; J9355: 297 Trastuzumab: 614 mg IV Day 1 for first cycle (Loading dose)  and then 461 mg IV Day 1 q 3 weeks cycles 2-6  6 cycles in total (6 treatments).  Total billing units = 297 |  |  |  |  | 0 |
| 04152017 | 2017-04-15T09:52:28+00:00 | Q18158439 | 000061482-01 | JUDY | HAYWOOD | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418002 | C50211 | Malig neoplm of upper-inner quadrant of right female breast | ICD10 | 04182017 | J2469, J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 60, 6 | 60, 6 | Approved, Approved | 91, 91 | HCPCS | HC | J2469: 60 Palonosetron: 0.25 mg IV Day 1 q 3 weeks x 6 cycles (6 treatments).  Total billing units = 60; J2505: 6 Neulasta OBI:  6 mg subcutaneous q 3 weeks x 6 cycles (6 treatments).  Total billing units = 6 |  |  |  |  | 0 |
| 04162017 | 2017-04-16T11:30:17+00:00 | Q18209232 | 000102178-01 | Phyllis | Payne | ALLIANCE PHYSICIANS INC | 940214 | BARBARA L | HANEY | 1528466075 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 04182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04162017 | 05162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418007 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 04182017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T12:59:58+00:00 | Q18214928 | 000088049-01 | William | Powell | MERCY HEALTH PHYSICIANS | 921187 | DANIEL A | TRAMUTA | 1902803612 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 04182017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04182017 | 05182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418010 | I739 | Peripheral vascular disease, unspecified | ICD10 | 04182017 | 73706 | CT ANGIO LWR EXTR W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T13:14:00+00:00 | Q18215159 | 000073339-01 | Marcus | Knott | ALLIANCE PHYSICIANS INC | 902625 | KENNETH B | PUGAR | 1528060399 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 04182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418013 | H8113 | Benign paroxysmal vertigo, bilateral | ICD10 | 04182017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T05:32:20+00:00 | Q18182478 | 000115126-01 | Ruby | Layne | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 05122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418035 | S82102K | Unsp fx upper end of left tibia, subs for clos fx w nonunion | ICD10 | 04182017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T12:12:22+00:00 | Q18195921 | 000044040-01 | LINDA | JOHNSON | ADENA MEDICAL GROUP LLC | 917273 | SHANE M | MATHENY | 1831301548 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418044 | R079 | Chest pain, unspecified | ICD10 | 04182017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04162017 | 2017-04-16T11:09:11+00:00 | Q18209230 | 000102354-01 | LAWRENCE | SHELLEY | ALLIANCE PHYSICIANS INC | 907817 | MILTON F | NATHAN | 1114909744 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GREENE MEMORIAL HOSPITAL | 04182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04162017 | 05162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418072 | R0789 | Other chest pain | ICD10 | 04182017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04182017 | 2017-04-18T06:59:12+00:00 |  | 000082368-01 | Janet | Huggins | OSU HLTH SYS ORTHO ONC P | 911790 | THOMAS J | SCHARSCHMIDT | 1639399918 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04182017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04252017 | 05252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418079 | D492 | Neoplasm of unsp behavior of bone, soft tissue, and skin | ICD10 | 04182017 | 27059, 27041 | BIOPSY SOFT TISSUES DEEP | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T08:17:50+00:00 | Q18209913 | 000078905-01 | Nancy | Gibbs | MUSKINGUM VALLEY HLTH CT | 945633 | MICHELLE | GARBER | 1235596669 | COSHOCTON COUNTY MEM HSP | 949437 | 0 | COSHOCTON COUNTY MEMORIAL HOSPITAL A | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COSHOCTON COUNTY MEMORIAL HOSPITAL A | 04182017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418082 | K582 | MIXED IRRITABLE BOWEL SYNDROME | ICD10 | 04182017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T16:37:51+00:00 |  | 000112375-01 | Richard | France | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04182017 | Denied | MediGold Essential Care | Fax | Not Medically Necessary | Outpatient | 04182017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170418084 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 04182017 | 97166 | OT EVAL MOD COMPLEX 45 MIN | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04172017 | 2017-04-17T09:57:03+00:00 |  | 000023694-01 | BETTY | COOPER | OSU PLASTIC SURGERY LLC | 947537 | ROMAN J | SKORACKI | 1477651966 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04182017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418088 | C499 | Malignant neoplasm of connective and soft tissue, unsp | ICD10 | 04182017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T11:32:09+00:00 | Q18171688 | 000078071-01 | Donald | Gibbons | ORTHO ASSOC OF ZANESVILL | 921890 | BRAD E | BRAUTIGAN | 1114919479 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 04182017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04182017 | 05182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418100 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 04182017 | 73201 | CAT SCAN UPPER EXTREMITY ENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T10:41:06+00:00 |  | 000083518-01 | Rose | Dorsey | RCHP WILMINGTON LLC | 939625 | CASSANDRA | GRENADE | 1770744807 | OSU UROLOGY LLC | 913349 | 1588612568 | GEOFFREY N BOX | 1871509406 | Out of Network Services | OONS | Pre-Service | PRE | GEOFFREY N | BOX | 04182017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 04262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418107 | C7A8, C7B8 | Other secondary neuroendocrine tumors | ICD10 | 04182017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04182017 | 2017-04-18T14:50:50+00:00 |  | 000079885-01 | Herbert | Tipton | OSU HLTH SYSTEM NEUROSUR | 908505 | JOHN M | MCGREGOR | 1992754212 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04182017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04192017 | 06192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418122 | D181, G912, Z982 | Presence of cerebrospinal fluid drainage device | ICD10 | 04182017 | 70250, 71020, 74020, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 04182017 | 2017-04-18T15:19:51+00:00 |  | 000093581-01 | Frances | Southers | ADVANCED CARE SOLUTIONS INC | 927080 |  | ADVANCED CARE SOLUTIONS INC | 1164410635 | ADVANCED CARE SOLUTIONS INC | 927080 | 1164410635 | ADVANCED CARE SOLUTIONS INC | 1164410635 | DME | DME | Pre-Service | PRE |  | ADVANCED CARE SOLUTIONS INC | 04182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04192017 | 07192017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418128 | C7802, J910 | Malignant pleural effusion | ICD10 | 04182017 | A7048 | VACUUM DRAIN BOTTLE/TUBE KIT | HCPCS | 90 | 90 | Approved | 92 | HCPCS | HC |  |  |  |  |  | 0 |
