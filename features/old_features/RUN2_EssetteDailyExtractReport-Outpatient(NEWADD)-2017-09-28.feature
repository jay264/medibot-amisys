Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-28
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2DailyExtractReport-Outpatient(NEWADD)-2017-09-28
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
| 09222017 | 2017-09-22T14:10:59+00:00 |  | 000098292-01 | Phyllis | Todd | MELVIN S GALE & ASSOC | 913084 | MELVIN S | GALE | 1740343342 | MELVIN S GALE & ASSOC | 913084 | 1518914530 | MELVIN S GALE | 1740343342 | OP Behavioral Health | OP BH | Pre-Service | PRE | MELVIN S | GALE | 09282017 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09252017 | 12252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922149 | F319 | Bipolar disorder, unspecified | ICD10 | 09282017 | 90833, 99213, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 92, 92, 92 | CPT | C4 | Outreach to provider for clinical documentation made. |  |  |  |  | 0 |
| 08232017 | 2017-08-23T15:15:18+00:00 | Q19161588 | 000033377-01 | RAYMOND | CAMPBELL | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825111 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 09282017 | 33264, C1882, 33229, C1785, C2619, C2621, C1786, C2620 | PACEMAKER, SINGLE CHAMBER, NON RATE-RESPONSIVE (IMPLANTABE) | HCPCS | 0, 0, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Void, Void, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T11:26:00+00:00 | Q19311965 | 000106073-01 | Karen | Robinson | GRAYSON, DEBRA A | 936769 | DEBRA A | GRAYSON | 1356333785 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred |  | Medical Criteria Met | Outpatient | 09142017 | 10142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925109 | R109 | Unspecified abdominal pain | ICD10 | 09282017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T12:58:00+00:00 | Q19410440 | 000064180-01 | LARRY | DENLINGER | OH INSTITUTE OF CARDIAC | 900957 | SALIM O | DAHDAH | 1982608790 | OH INSTITUTE OF CARDIAC | 900683 | 1477576619 | OH INSTITUTE OF CARDIAC CARE INC | 1801098512 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH INSTITUTE OF CARDIAC CARE INC | 09282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09292017 | 10292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928110 | R079 | Chest pain, unspecified | ICD10 | 09282017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T07:51:00+00:00 | Q19404386 | 000055463-01 | ERNEST | BOWLES | SOUTH CENTRAL OH NEURO | 935740 | MICHAEL E | JONES | 1841226842 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09272017 | 10272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928046 | G20 | Parkinson's disease | ICD10 | 09282017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T15:20:00+00:00 | Q19359770 | 000015288-01 | ROBERT | MABE | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09202017 | 11192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925107 | I252 | Old myocardial infarction | ICD10 | 09282017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T12:35:00+00:00 | Q19410040 | 000005948-01 | RALPH | RISTER | CEN OH UROLOGY GRP INC | 942974 | ROBERT J | PIROLI | 1730180662 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10242017 | 01222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928106 | C61 | Malignant neoplasm of prostate | ICD10 | 09282017 | G6015 | RADIATION TX DELIVERY IMRT | HCPCS | 45 | 45 | Approved | 91 | HCPCS | HC | G6015: 45: G6015 45 |  |  |  |  | 0 |
| 09252017 | 2017-09-25T08:59:00+00:00 | Q19383461 | 000029386-01 | ROBERT | FAIRCHILD | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 12012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928079 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 09282017 | 33264, C1882 | CARDIOVERTER-DEFIBRILLATOR, OTHER THAN SINGLE OR DUAL CHAMBER (IMPLANTAB | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T13:50:12+00:00 |  | 000072867-01 | Mary | Holobaugh | OSU INTERNAL MED LLC | 919636 | SUMITHIRA | VASU | 1710159744 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09282017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09282017 | 12282017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927168 | D595 | Paroxysmal nocturnal hemoglobinuria [Marchiafava-Micheli] | ICD10 | 09282017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 83615, 85045, 83010, 88184, 86162, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC | Late entry from 8:05  PC  from Tammy at the James  wanted a verbal approval to see if f/u visit would be approved  she apologized for changing the status to expedited but the members appointment is today around noon.  She also gave me the members cell number 614-371-1382., Looked over past auths and took verbal account of member issue  gave verbal approval., EM to David re: expedited letter |  |  |  |  | 0 |
| 09182017 | 2017-09-18T15:15:00+00:00 | Q19337206 | 000097367-01 | Linda | Haley | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928083 | C221 | Intrahepatic bile duct carcinoma | ICD10 | 09282017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09252017 | 2017-09-25T09:07:00+00:00 | Q19384010 | 000031443-01 | JOHN | LEROY | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10192017 | 04172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928080 | C642 | Malignant neoplasm of left kidney, except renal pelvis | ICD10 | 09282017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 32 | 32 | Approved | 181 | HCPCS | HC | J3489: 32: Zoledronic Acid 4 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 06142017 | 2017-06-14T07:15:19+00:00 | Q18645583 | 000033007-01 | P | BARTON | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615093 | I495 | Sick sinus syndrome | ICD10 | 09282017 | C1779, C1898, 33207, C1786, C2620 | PACEMAKER, SINGLE CHAMBER, NON RATE-RESPONSIVE (IMPLANTABE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T12:55:00+00:00 | Q19410366 | 000096159-01 | Roberta | Penwell | LICKING MEM HLTH PROF | 903565 | COLLEEN M | SMITH | 1255330965 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 11082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928109 | R140 | Abdominal distension (gaseous) | ICD10 | 09282017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T09:59:00+00:00 | Q19330755 | 000078239-01 | Ruth | Johnson | AMJAD RASS DO INC RHC | 911635 | AMJAD A | RASS | 1184797367 | AMJAD RASS DO INC | 922333 | 1063430932 | AMJAD RASS DO INC RHC | 1033414081 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | AMJAD RASS DO INC RHC | 09282017 | Approved | MediGold Southeast OH Classic Preferred |  | Medical Criteria Met | Outpatient | 09182017 | 10182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170926070 | Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 09282017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09262017 | 2017-09-26T09:02:00+00:00 | Q19394411 | 000049539-01 | THOMAS | JIVIDEN | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | SCIOTO VALLEY UROLOGY IN | 938633 | 1346254976 | SCIOTO VALLEY UROLOGY INC | 1346254976 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SCIOTO VALLEY UROLOGY INC | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09262017 | 03252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928140 | C61 | Malignant neoplasm of prostate | ICD10 | 09282017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 09282017 | 2017-09-28T10:55:42+00:00 |  | 000114030-01 | Robert | Mccoy | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 941530 |  | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 1043397292 | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 941530 | 1043397292 | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 1043397292 | Out of Network Services | OONS | Pre-Service | PRE |  | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 09282017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10042017 | 11042017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928131 | D141, R490 | Dysphonia | ICD10 | 09282017 | 31541, 31571 | LARYNGO, INJ VCL CD,THERA,C OP MIC. | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 09212017 | 2017-09-21T07:24:00+00:00 | Q19361498 | 000072413-01 | George | Kelly | UNIVERSITY RADIATION ONC | 928811 | DUKAGJIN | BLAKAJ | 1144483272 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09282017 | Approved | MediGold Essential Care | Member Representative | Medical Criteria Met | Outpatient | 09272017 | 10272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927133 | R042 | Hemoptysis | ICD10 | 09282017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09262017 | 2017-09-26T13:54:00+00:00 | Q19400318 | 000061114-01 | SALLY | HABAN | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10032017 | 11022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928026 | C20 | Malignant neoplasm of rectum | ICD10 | 09282017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T13:59:00+00:00 | Q19411683 | 000031277-01 | ROSALIND | MOHLER | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09272017 | 10272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928120 | R310 | Gross hematuria | ICD10 | 09282017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T08:34:58+00:00 | Q19184721 | 000066043-01 | BETTY | FULWIDER | OHIOHEALTH PHYS GRP | 910645 | KAILASH K | NARAYAN | 1932214707 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 09282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170829192 | S22059A | Unsp fracture of T5-T6 vertebra, init for clos fx | ICD10 | 09282017 | 72128 | CAT SCAN THORACIC SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09212017 | 2017-09-21T09:52:06+00:00 |  | 000096176-01 | Robert | Rivera | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | UNKNOWN PROVIDER | 09282017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10022017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921114 | F2089 | Other schizophrenia | ICD10 | 09282017 | 90834 | PSYTX PTAND/FAMILY 45 MINUTES | CPT | 1 | 1 | Approved | 60 | CPT | C4 | PADMA TANDON  NPI 1427107622 , COLUMBUS AREA INTEGRATED HEALTH SERVICES  INC.     NPI 1154454379,     614-252-0711 |  |  |  |  | 0 |
| 09222017 | 2017-09-22T07:46:35+00:00 |  | 000053571-01 | DENNIE | MOSLEY | OSU OTOLARYNGOLOGISTS LL | 902915 |  | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 09282017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10052017 | 11052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922152 | H903 | Sensorineural hearing loss, bilateral | ICD10 | 09282017 | 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
