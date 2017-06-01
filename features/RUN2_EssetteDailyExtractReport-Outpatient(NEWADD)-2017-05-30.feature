Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-30
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-30
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
| 05122017 | 2017-05-12T08:36:59+00:00 |  | 000048633-01 | SHARON | JAMES | OSU INTERNAL MED LLC | 928269 | BRENT C | LAMPERT | 1700024577 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05302017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05222017 | 06222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512119 | Z941 | Heart transplant status | ICD10 | 05302017 | 93306 | TTE W/DOPPLER, COMPLETE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 11102016 | 2016-11-10T13:46:23+00:00 | Q17096080 | 000028393-01 | SAMMY | JUNK | RADIOLOGY INC | 914289 | ABHAY S | GOKHALE | 1528371937 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 11102016 | 02082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170513014 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 05302017 | 70553, 77373 | STEROTACTIC BODY RADIATION THERAPY TREATMENT DELIVERY PER FRACTION TO 1 | CPT | 1, 1 | 1, 1 | Approved, Approved | 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 05242017 | 2017-05-24T14:50:29+00:00 |  | 000052943-01 | Sandra | Yeazel | ALLIANCE PHYSICIANS INC | 947359 | DANIEL B | VERRILL | 1447543525 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | KETTERING MEDICAL CENTER SYCAMORE | 05302017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05312017 | 09052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170524141 | M25561 | Pain in right knee | ICD10 | 05302017 | 64640 | INJ NUROLYTIC AGNT OTHR PERPHL NERV | CPT | 3 | 3 | Approved | 98 | CPT | C4 | Awaiting Clarification of Credentialing of Dr Verrill as office stated he is approved and part of their network  Emailed Cathy Wood  Nancy Gardner  Karina Olney  Laura Marado in MediGold Provider Credentialing, Spoke first to Cathy Woods in Provider Credentialing and she referred me to Nancy Gardner in Provider Credentialing   She stated Dr Daniel Verrell MD had gone through credentialing and that he is now considered in our network, Spoke with Katie and she requested a date change to 5/31/2017., Katie Aware date change Approval Letter and authorization refaxed with date of 5/31/17 |  |  |  |  | 0 |
| 03032017 | 2017-03-03T08:17:13+00:00 | Q17885639 | 000073406-01 | Merle | Valentine | ADENA MEDICAL GROUP LLC | 902418 | JOHN J | KELLER | 1700849114 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 04202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526020 | R001 | Bradycardia, unspecified | ICD10 | 05302017 | 33212, C1786, C2620 | PACEMAKER, SINGLE CHAMBER, NON RATE-RESPONSIVE (IMPLANTABE) | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03072017 | 2017-03-07T18:36:53+00:00 | Q17888389 | 000035180-01 | DELBERT | ROBINSON | MOUNT CARMEL HLTH PRVDRS | 909600 | CHAD D | CLARK | 1881659258 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03102017 | 04092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526022 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 05302017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03062017 | 2017-03-06T13:46:47+00:00 | Q17902148 | 000002849-01 | MICHAEL | JONES | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03082017 | 04072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526026 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 05302017 | 33249, 33264, C1882, 33225, 33241, C1900, C1721, C1722, C1777, C1895, C1896 | LEAD, CARDIOVERTER-DEFIBRILLATOR, OTHER THAN ENDOCARDIAL SINGLE OR DUAL | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T18:26:19+00:00 | Q17949963 | 000031681-01 | L | MUNCY | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526032 | I428 | Other cardiomyopathies | ICD10 | 05302017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T18:34:50+00:00 | Q17955038 | 000036997-01 | EUGENE | WASHINGTON | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526035 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 05302017 | 33264, C1882 | CARDIOVERTER-DEFIBRILLATOR, OTHER THAN SINGLE OR DUAL CHAMBER (IMPLANTAB | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T13:25:12+00:00 | Q17959040 | 000088251-01 | John | Lehman | MERCY HEALTH PHYSICIANS | 926848 | MUHAMMAD S | ASHRAF | 1891765038 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05302017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03132017 | 04122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526036 | I519 | Heart disease, unspecified | ICD10 | 05302017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T13:37:55+00:00 | Q17960370 | 000084227-01 | Franklin | Dale | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 05302017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526040 | I420 | Dilated cardiomyopathy | ICD10 | 05302017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03222017 | 2017-03-22T07:58:10+00:00 | Q18022762 | 000051138-01 | RAYMOND | MCGEE | MOUNT CARMEL HLTH PRVDRS | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05302017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03222017 | 04212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526055 | R55 | Syncope and collapse | ICD10 | 05302017 | 33208, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T15:20:55+00:00 | Q18026717 | 000035180-01 | DELBERT | ROBINSON | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04032017 | 05032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526056 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 05302017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04192017 | 2017-04-19T19:24:21+00:00 | Q18217484 | 000072862-01 | Kenneth | Cavender | ALLIANCE PHYSICIANS INC | 947309 | HASEEB | JAFRI | 1801091541 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 05302017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 06162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526099 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05302017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 04262017 | 2017-04-26T14:52:55+00:00 | Q18284999 | 000013600-01 | CLYDE | YOUNG | MOUNT CARMEL HLTH PRVDRS | 942981 | ESSA M | ESSA | 1992966113 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04272017 | 06262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526125 | I420 | Dilated cardiomyopathy | ICD10 | 05302017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 05242017 | 2017-05-24T07:40:36+00:00 | Q18497181 | 000050488-01 | NANCY | HAWKINS | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05242017 | 07232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526183 | T82110A | Breakdown (mechanical) of cardiac electrode, init encntr | ICD10 | 05302017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T12:20:10+00:00 |  | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05302017 | Approved | MediGold Essential Care | Fax | Clinical Trial | Outpatient | 05302017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526229 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 05302017 | 84520, 81001, 83690, 82150, 84100, 83735, 82656, 82565, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T15:52:04+00:00 |  | 000100708-01 | Carolyn | Reynolds | CEI PHYSICIANS PSC INC | 920847 | DWIGHT R | KULWIN | 1982644738 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | THE CHRIST HOSPITAL | 05302017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526313 | H02403 | Unspecified ptosis of bilateral eyelids | ICD10 | 05302017 | 67904 | REP OF BLEPHAROPTOSIS EXT APPROACH | CPT | 2 | 2 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T07:39:13+00:00 | Q18518495 | 000004550-01 | DELPHINE | BROBST | CENTRAL OHIO SURG ASSOC | 923061 | DORENE L | JOHNSON | 1811245202 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05302017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530060 | I639 | Cerebral infarction, unspecified | ICD10 | 05302017 | 70470 | CAT SCAN HEAD WO/W IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T09:59:59+00:00 | Q18516991 | 000030293-01 | HELEN | ROWE | MOUNT CARMEL HLTH PRVDRS | 929338 | GENEVIEVE T | CO-FAUSTINO | 1689905150 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 06242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530067 | R109 | Unspecified abdominal pain | ICD10 | 05302017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05252017 | 2017-05-25T16:17:17+00:00 | Q18517420 | 000042595-01 | JAMES | LEPPS | COPC CENTRAL OHIO PRIMAR | 948770 | PALLAVI R | MANDIGA | 1366784191 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 06242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530069 | R109 | Unspecified abdominal pain | ICD10 | 05302017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T09:02:44+00:00 | Q18519496 | 000078880-01 | Lela | Warden | MOUNT CARMEL HLTH PRVDRS | 933615 | CHRISTOPHER P | BARAN | 1689082695 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 05302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05262017 | 06252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530078 | R51 | Headache | ICD10 | 05302017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05302017 | 2017-05-30T08:58:05+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 05302017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05302017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530093 | G250 | Essential tremor | ICD10 | 05302017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05302017 | 2017-05-30T11:11:10+00:00 |  | 000011802-01 | LLOYD | DEAN | SUMMITS TRACE HLTHCARE C | 946119 | MARK J | PIACENTINI | 1568478626 | CAVALIER MOBILE XRAY CO | 950659 | 1669424743 | CAVALIER MOBILE XRAY CO | 1669424743 | Out of Network Services | OONS | Pre-Service | PRE |  | CAVALIER MOBILE XRAY CO | 05302017 | Denied | MediGold Medical Only | Fax | Administrative Denial | Outpatient | 05302017 | 05312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170530098 | M7989 | Other specified soft tissue disorders | ICD10 | 05302017 | R0070, Q0092, 73523 | X-RAY EXAM HIPS BI 5/> VIEWS | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 |  |  |  |  |  | 0 |
