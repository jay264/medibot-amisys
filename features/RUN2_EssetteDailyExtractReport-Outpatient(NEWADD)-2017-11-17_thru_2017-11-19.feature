Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-17_thru_2017-11-19
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-17_thru_2017-11-19
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
| 09272017 | 2017-09-27T17:11:00+00:00 | Q19415091 | 000085849-01 | Judy | Landis | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10122017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171006099 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 11172017 | 70470 | CAT SCAN HEAD WO/W IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Provider cannot be found in the system. Could you please find the provider from the information for this authorization in the 278-5010 10/05 Initial folder  and update the provider information. |  |  |  |  | 0 |
| 11142017 | 2017-11-14T14:56:51+00:00 | Q19775471 | 000055207-01 | Linda | Morgan | FAIRFIELD HLTHCARE PROFS | 905120 | STEPHANIE J | OTT | 1215154562 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117011 | M25572 | Pain in left ankle and joints of left foot | ICD10 | 11172017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T11:26:13+00:00 | Q19782121 | 000045979-01 | LEWIS | FENTON | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11292017 | 05282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117013 | C9310 | Chronic myelomonocytic leukemia not achieve remission | ICD10 | 11172017 | J0881 | INJECTION, DARBEPOETIN ALFA, 1 MICROGRAM (NON-ESRD USE) | HCPCS | 7200 | 7200 | Approved | 181 | HCPCS | HC | J0881: 7200: Darbepoetin Alfa (Aranesp) 150-300 mcg  SQ  QW  every 28 days  6 cycles |  |  |  |  | 0 |
| 11152017 | 2017-11-15T14:06:48+00:00 | Q19785105 | 000039745-01 | GEORGE | KINDER | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117020 | M545 | Low back pain | ICD10 | 11172017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T14:30:21+00:00 | Q19785693 | 000056485-01 | KYLE | HUFFORD | TAJ MEDICAL INC | 906519 | NAJEEB | AHMED | 1972574275 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 11172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11152017 | 01142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117030 | I472 | Ventricular tachycardia | ICD10 | 11172017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T07:01:21+00:00 | Q19788448 | 000083436-01 | Donald | Runyon | ORTHO ASSOC OF SW OH INC | 912321 | MATTHEW W | HECKLER | 1164634689 | ORTHO ASSOC OF SW OH INC | 907280 | 1447422118 | ORTHOPEDIC ASSOC OF SW OH INC | 1447422118 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ASSOC OF SW OH INC | 11172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117040 | M75101 | Unsp rotatr-cuff tear/ruptr of right shoulder, not trauma | ICD10 | 11172017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T07:31:41+00:00 | Q19788626 | 000070410-01 | Marjorie | Kleer | KNOX COMMUNITY HOSP GRP | 926430 | ALIX J | TERCIUS | 1598942468 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 11172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 01152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117045 | I495 | Sick sinus syndrome | ICD10 | 11172017 | 33208, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T09:42:49+00:00 | Q19790775 | 000112907-01 | Freda | Thomas | OHIOHEALTH PHYS GRP | 911198 | GREGORY K | LAM | 1255319760 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 11172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11282017 | 12282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117065 | R0789 | Other chest pain | ICD10 | 11172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T11:22:43+00:00 | Q19792838 | 000073857-01 | John | Shaw | ADENA MEDICAL GROUP LLC | 932324 | MATTHEW W | CHRISTIAN | 1043260698 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11162017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117079 | R310 | Gross hematuria | ICD10 | 11172017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T12:32:26+00:00 | Q19793928 | 000101642-01 | June | Griffith | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11172017 | 12172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117088 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 11172017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T08:47:33+00:00 | Q19778831 | 000094557-01 | Donald | Felix Jr | FIRST SETTLEMENT ORTHOS | 924619 | NARESH | NAYAK | 1356309108 | FIRST SETTLEMENT ORTHOS | 924319 | 1215992458 | FIRST SETTLEMENT ORTHOPAEDICS INC | 1215992458 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FIRST SETTLEMENT ORTHOPAEDICS INC | 11172017 | Approved | MediGold Southeast OH Classic Preferred |  | Medical Criteria Met | Outpatient | 11162017 | 12162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116121 | M79641 | Pain in right hand | ICD10 | 11172017 | 73218 | MRI UPPER EXTREMITY W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T11:44:33+00:00 | Q19773701 | 000066063-01 | NANCY | WETZEL | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 05132018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171115143 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 11172017 | J9206 | IRINOTECAN, 20 MG | HCPCS | 15 | 15 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 11082017 | 2017-11-08T09:19:53+00:00 | Q19726647 | 000005570-01 | DELORES | SMITH | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 11172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11102017 | 12102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114021 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 11172017 | 74160, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11092017 | 2017-11-09T11:59:00+00:00 | Q19742820 | 000004007-01 | JOE | FIELDS | MADISON FAMILY HEALTH | 904568 | WILLIAM P | GIANAKOPOULOS | 1841239142 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 11172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11092017 | 05082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114066 | C61 | Malignant neoplasm of prostate | ICD10 | 11172017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 11132017 | 2017-11-13T10:02:00+00:00 | Q19758743 | 000118924-01 | Eugene | Martin | PREMIER UROLOGY CORP | 930560 | ADAM J | CLEMENS | 1477798049 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 11172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171114116 | R310 | Gross hematuria | ICD10 | 11172017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10032017 | 2017-10-03T12:42:21+00:00 |  | 000107548-01 | Larry | Green | OSU HLTH SYSTEM NEUROSUR | 942972 | VIBNOR | KRISHNA | 1114008364 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12062017 | 01152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171003156 | G250 | Essential tremor | ICD10 | 11172017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 41, 41 | HCPCS | HC | This was a request for date change but appears that this was already done., 12/19/2017 to 12/06/2017. |  |  |  |  | 0 |
