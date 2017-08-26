Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-22
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-22
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
| 08212017 | 2017-08-21T08:56:24+00:00 | Q19106734 | 000045979-01 | LEWIS | FENTON | OH ONCOLOGY & HEMATOLOGY | 913846 | JEANNA L | KNOBLE | 1548242118 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822075 | C9310 | Chronic myelomonocytic leukemia not achieve remission | ICD10 | 08222017 | J0881 | INJECTION, DARBEPOETIN ALFA, 1 MICROGRAM (NON-ESRD USE) | HCPCS | 3600 | 3600 | Approved | 181 | HCPCS | HC | J0881: 3600 Darbepoetin Alfa (Aranesp) 200-300 mcg  SQ  day 1  every 14 days  12 cycles |  |  |  |  | 0 |
| 08072017 | 2017-08-07T16:37:49+00:00 |  | 000107548-01 | Larry | Green | OSU HLTH SYSTEM NEUROSUR | 942972 | VIBNOR | KRISHNA | 1114008364 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08072017 | 10072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170808110 | G250 | Essential tremor | ICD10 | 08222017 | 61885, 77002, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T16:35:30+00:00 | Q19125036 | 000070588-01 | Barbara | Nelson | ADENA MEDICAL GROUP LLC | 927004 | BRUCE J | CHEN | 1285835926 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08182017 | 10172017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170819001 | I208 | Other forms of angina pectoris | ICD10 | 08222017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08122017 | 2017-08-12T10:48:05+00:00 | Q19078458 | 000005570-01 | DELORES | SMITH | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815016 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 08222017 | J9264, J2469, J9045 | CARBOPLATIN, 50 MG | HCPCS | 3600, 60, 108 | 3600, 60, 108 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9264: 3600 Albumin-bound Paclitaxel 100 mg/m2  IV  days 1  8  15  every 21 days  6 cycles; J9045: 108 Carboplatin AUC 6 (max 900 mg)   IV  day 1  every 21 days  6 cycles; J2469: 60 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 08212017 | 2017-08-21T06:07:38+00:00 | Q19114149 | 000108591-01 | Betty | Hawkins | MARIETTA HLTH CARE PHYS | 949858 | ALISHA | MILLS | 1093267635 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 08222017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822061 | R42 | Dizziness and giddiness | ICD10 | 08222017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08102017 | 2017-08-10T14:21:21+00:00 |  | 000103685-01 | Eleanor | Burke | VERSA CARDIO LLC | 940354 |  | VERSA CARDIO LLC | 1366877508 | CHETNA MITAL MD LLC | 921414 | 1659409886 | CHETNA MITAL | 1285637694 | Outpatient Surgery/Procedure | OP SURG | Post-Service | POST | CHETNA | MITAL | 08222017 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 08082017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X170810131 | I459, R002 | Palpitations | ICD10 | 08222017 | 93229 | REMOTE 30 DAY ECG TECH SUPP | CPT | 1 | 1 | Approved | 32 | CPT | C4 | PC to Tracey at Dr. Mital office.  She explained that the device is supplied by the office and not billed. What they are asking to be covered is the 24hr/7 day a week remote monitoring by a tech., This member has already rec'd the device on 8/8/17 and wore for 7 days., They typically ask for 10 days just to be conservative in case its delayed or other issues arise., K. Kerrigan discussed this with Dr. Wise; we are seeing these more frequently and they are not available in network. |  |  |  |  | 0 |
| 07252017 | 2017-07-25T12:55:39+00:00 |  | 000034728-01 | JAMES | VITITOE | ADENA MEDICAL GROUP LLC | 902839 | CHRISTOPHER J | SKOCIK | 1104829126 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08222017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 08222017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170725160 | G44321, M542 | Cervicalgia | ICD10 | 08222017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 72050 | SPINE, CERVICAL MIN. OF 4 VIEWS | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03072017 | 2017-03-07T10:21:01+00:00 |  | 000063213-01 | DENNIS | WAUGH | KLISOVIC, REBECCA B | 908494 | REBECCA B | KLISOVIC | 1417962945 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03072017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170309034 | C9100, D89811, Z79810 | Lng trm (crnt) use of slctv estrog receptor modulators | ICD10 | 08222017 | 99211, 99212, 99213, 99214, 99215, 36522, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82947, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83907, 83900, 83901, 83909, 83912, 92565, 85652, 36415 | ROUTINE VENIPUNCTURE FOR SPEC COL. | CPT | 3, 3, 3, 3, 3, 26, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6 | 3, 3, 3, 3, 3, 26, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | P/c to Tammy C with Dr. Kilsovic 614-366-0750  let her know CPT code 72247 is not a valid code.  She said that it should read 82247.  I told her I would correct this on the request. |  |  |  |  | 0 |
| 08042017 | 2017-08-04T08:26:30+00:00 |  | 000102358-01 | LINDA | FISHER | MID OH ONCOLOGY HEMATOLO | 937410 | ROBERT | RUPERT | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09052017 | 12052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170804169 | C7989, K1230, Z923 | Personal history of irradiation | ICD10 | 08222017 | 99211, 99212, 99213, 99214, 99215, 84443, 84439, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08042017 | 2017-08-04T12:27:51+00:00 |  | 000099335-01 | John | Skripac | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 |  | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 08222017 | Denied | MediGold Essential Care | Member | Not a Covered Benefit (PA) | Outpatient | 08222017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170804178 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08222017 | E1392 | PORTABLE OXYGEN CONCENTRATOR, RENTAL | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Duplicate request reference X170804178, This is not a duplicate it was just uploaded twice, PC to member at 614-882-9099  verified DOB.  Asked if request could be extended so that info can be obtained from physicians. Member agrees. Member states that hose is a hazzard and afraid that he will trip on it. Adds that pulmonologist is Dr. Qadoom., PC to office of Qadoom  Mahmoud MD at 614-898-9340, Spoke to Kerry  requested clinical information support member request for 2nd Oxygen Concentrator for home. Provided fax number., LVMM for Dr. Segal office  614-383-6000  nurse Erica  requested clinical information to support member request for 2nd Oxygen Concentrator for home. Provided fax and phone number., VMM from Kelly at Dr. Segal office  614-383-6000  inquired what kind of clinical information is needed from them., LVMM for Dr. Segal office  614-383-6000  advised that any information either supporting or not supporting members need for a supplemental oxygen concentrator in the home., PC to Cornerstone rep Elena  614-866-5520  Ext 15200, Inquired about Medicare coverage for 2nd oxygen concentrator in the home.  My own research of Medicare covered Oxygen equipement did NOT show that it would be covered. She adds that it is not a covered benefit., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08212017 | 2017-08-21T09:08:22+00:00 | Q19133219 | 000022285-01 | CHRISTOPHER | DAVIS | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 08222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08212017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822092 | M25561 | Pain in right knee | ICD10 | 08222017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T15:16:02+00:00 | Q19114780 | 000069007-01 | RICHARD | HENRY | MOUNT CARMEL HLTH PRVDRS | 932442 | SIVARAMAN | SIVASWAMI | 1912992694 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08182017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822062 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 08222017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T15:37:58+00:00 | Q19102173 | 000081229-01 | JOHN | MILLER | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08212017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822074 | C494 | Malignant neoplasm of connective and soft tissue of abdomen | ICD10 | 08222017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08022017 | 2017-08-02T11:35:16+00:00 |  | 000090426-01 | Paul | Wohlheter | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 |  | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 933752 | 1215343058 | SIGNATURE HEALTHCARE OF COSHOCTON | 1215343058 | Out of Network Services | OONS | Pre-Service | PRE |  | SIGNATURE HEALTHCARE OF COSHOCTON | 08222017 | Denied | MediGold Southeast OH Essential Care | Fax | Not a Covered Benefit (PA) | Outpatient | 08222017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170802134 | G4700, I10, Z9181 | History of falling | ICD10 | 08222017 | 99307, 99308, 99309, 99310 | NURSING FAC CARE, SUBSEQ | CPT | 0, 0, 0, 0 | 1, 1, 1, 1 | , , ,  | 0, 0, 0, 0 | CPT | C4 | P/c to Nina S with signature healthercare left VM letting her know I need to know what she is requesting for the member.  If the member is in house do they need what service or with this be out patient service.  Left my contact number., Per Angela S. stated this was a Part B  clarification that the mbr is just LTC. Denial rec. based on hospice being in place. |  |  |  |  | 0 |
| 08152017 | 2017-08-15T11:11:46+00:00 | Q19087825 | 000104659-01 | Barbara | Adkins | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170816026 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 08222017 | J9271 | INJ PEMBROLIZUMAB | HCPCS | 1600 | 1600 | Approved | 181 | HCPCS | HC | J9271: 1600 Pembrolizumab 200 mg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 08212017 | 2017-08-21T13:43:00+00:00 | Q19138085 | 000053487-01 | PHYLLIS | COLEMAN | ORTHO & NEURO CONSULTS I | 935912 | LARRY T | TODD | 1649254087 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08212017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822045 | S32009A | Unsp fracture of unsp lumbar vertebra, init for clos fx | ICD10 | 08222017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08172017 | 2017-08-17T11:14:46+00:00 | Q19115283 | 000073049-01 | Connie | Carter | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170818019 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 08222017 | J9201, J8540, J1626 | INJECTION, GRANISETRON HYDROCHLORIDE, 100 MCG | HCPCS | 208, 2560, 320 | 208, 2560, 320 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9201: 208 Gemcitabine 1250 mg/m2  IV  days 1  8  every 21 days  8 cycles; J8540: 2560 Dexamethasone up to 20 mg  PO  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  8 cycle(s); J1626: 320 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  8 cycle(s) |  |  |  |  | 0 |
| 08182017 | 2017-08-18T13:21:42+00:00 | Q19128123 | 000076464-01 | William | Colwell | SPRINGFIELD CTR FOR FAM | 913741 | PETER | MUIR | 1750384632 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08182017 | 09172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170821108 | L0291 | Cutaneous abscess, unspecified | ICD10 | 08222017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T13:48:14+00:00 | Q19095094 | 000061482-01 | JUDY | HAYWOOD | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09052017 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170818006 | C50211 | Malig neoplm of upper-inner quadrant of right female breast | ICD10 | 08222017 | J9171, J2505, J2469, J9045, J9355 | TRASTUZUMAB, 10 MG | HCPCS | 900, 8, 60, 108, 329 | 900, 8, 60, 108, 329 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9171: 900 (TCH) Docetaxel 75 mg/m2  IV  day 1  every 21 days  6 cycles; J9045: 108 Carboplatin AUC 6 (max 900 mg)  IV  day 1  every 21 days  6 cycles; J9355: 329 Trastuzumab 6 mg/kg  IV  day 1  every 21 days  6 cycles; Trastuzumab 8 mg/kg  IV  day 1  every 21 days  1 cycle (cycle 1); J2505: 8 PegFilgrastim (Neulasta) 6 mg  SQ  once  every 21 days  8 cycles; J2469: 60 Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 08112017 | 2017-08-11T09:12:26+00:00 | Q19062642 | 000103547-01 | James | Tabler | LICKING MEM HLTH PROF | 906427 | WILLIAM A | STALLWORTH | 1457312597 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09072017 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170815032 | C61 | Malignant neoplasm of prostate | ICD10 | 08222017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6 Leuprolide 45 mg  IM  day 1  every 168 days  1 cycle |  |  |  |  | 0 |
| 08212017 | 2017-08-21T12:37:24+00:00 | Q19137118 | 000024035-01 | SHIRLEY | MCLURG | MADISON FAMILY HEALTH | 942170 | DOUGLAS R | CLOSSER | 1982839312 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08222017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170822036 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 08222017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T12:41:12+00:00 |  | 000076221-01 | Gary | Hillyard | MARILYN KOSIER MD INC | 915966 |  | MARILYN KOSIER MD INC | 1730168402 | MARILYN KOSIER MD INC | 915966 | 1730168402 | MARILYN KOSIER MD INC | 1730168402 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MARILYN KOSIER MD INC | 08222017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 08222017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170809114 | H04129 | Dry eye syndrome of unspecified lacrimal gland | ICD10 | 08222017 | 0330T | TEAR FILM IMG UNI/BI W/I&R | CPT | 0 | 1 | Denied | 0 | CPT | C4 | PC to Dr. Kosier's office  spoke to Amber.  Explained that member requested a Lipiflow treatment for dry eye.  She advises that it is not a billable service to insurance/medicare.  Member has already signed an ABN for this treatment., MEMBER REQUESTED only, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
