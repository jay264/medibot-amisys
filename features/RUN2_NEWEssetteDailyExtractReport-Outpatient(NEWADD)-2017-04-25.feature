Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-25
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-25
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
| 03282017 | 2017-03-28T09:05:19+00:00 |  | 000082199-01 | Paul | Brill | OSU SURGERY LLC | 909559 | VIMAL K | NARULA | 1912952490 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04252017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03302017 | 05302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328069 | C760 | Malignant neoplasm of head, face and neck | ICD10 | 04252017 | 43246, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T07:44:27+00:00 |  | 000071645-01 | Edna | Eshenfelder | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN NEW ALBANY LLC | 944058 | 1407262165 | OTTERBEIN NEW ALBANY LLC | 1407262165 | Part B Therapy | OP THER | Pre-Service | PRE |  | OTTERBEIN NEW ALBANY LLC | 04252017 | Approved | MediGold Classic Preferred | Fax | SNF | Outpatient | 03222017 | 04062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330017 | F0280, S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 04252017 |  |  |  | 0 | 0 |  | 0 |  |  | Review for extension in days for a OON Part B ST services.  Prior auth for 7 days X170330017 |  |  |  |  | 0 |
| 03302017 | 2017-03-30T11:09:52+00:00 |  | 000066657-01 | MARLANE | KARR | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04032017 | 07032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330018 | D490, K0511 | Chronic gingivitis, non-plaque induced | ICD10 | 04252017 | 92507, 92610, 92612, 92526, 31575, 31579, 92599, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 03302017 | 2017-03-30T13:33:43+00:00 |  | 000063656-01 | MICHAEL | ALLEN | OSU SURGERY LLC | 946941 | DESMOND M | DSOUZA | 1841472842 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170330142 | R911 | Solitary pulmonary nodule | ICD10 | 04252017 | 71020, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T11:26:04+00:00 | Q18107346 | 000029394-01 | JUDY | MCCLELLAND | OH ONCOLOGY & HEMATOLOGY | 949099 | JORGE A | RIOS-PEREZ | 1710143847 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 04252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04032017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170403099 | C180 | Malignant neoplasm of cecum | ICD10 | 04252017 | J9263 | INJECTION, OXALIPLATIN, 0.5 MG | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 04032017 | 2017-04-03T15:34:25+00:00 |  | 000046933-01 | ANNA | MOORE | OSU INTERNAL MED LLC | 918882 | ERIN M | BERTINO | 1043355688 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 05072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170403102 | 2006.0, C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 04252017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04042017 | 2017-04-04T08:08:09+00:00 |  | 000094865-01 | Barbara | Millington | PICKAWAY HEALTH SERVICES | 902481 | DAVID E | MILLER | 1801895594 | PICKAWAY HEALTH SERVICES | 902481 | 1568569903 | DAVID E MILLER | 1801895594 | OP Behavioral Health | OP BH | Pre-Service | PRE | DAVID E | MILLER | 04252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04082017 | 08082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170404092 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04252017 | 90834, 90847 | PSYCHOTHERAPY-TWO FAMILY MEMBERS | CPT | 6, 6 | 6, 6 | Approved, Approved | 123, 123 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T17:32:25+00:00 | Q18208895 | 000072630-01 | Janet | Phillips | MOUNT CARMEL HLTH PRVDRS | 933593 | BRIDGET A | OBRIEN | 1841478674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | VALUE CHOICE PPO | Fax | Medical Criteria Met | Outpatient | 09032016 | 10302016 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418071 | R928 | Oth abn and inconclusive findings on dx imaging of breast | ICD10 | 04252017 | C8905 | MAGNETIC RESONANCE IMAGING WITHOUT CONTRAST FOLLOWED BY WITH CONTRAST, B | HCPCS | 1 | 1 | Approved | 58 | HCPCS | HC |  |  |  |  |  | 0 |
| 04212017 | 2017-04-21T15:25:55+00:00 |  | 000016593-01 | MARTHA | SEVERINO | MALLIK, GUNWANT S | 900239 | GUNWANT S | MALLIK | 1376527663 | NERVES LLC | 904923 | 1649486879 | NERVES LLC | 1649486879 | Radiology (HH) | OP RAD | Initial Review | INIT |  | NERVES LLC | 04252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04212017 | 05212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170421269 | M4806 | Spinal stenosis, lumbar region | ICD10 | 04252017 | 72158 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST & MORE SEQUENCES;LUMBAR | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T15:31:05+00:00 |  | 000058376-01 | JO | RIDDLE | OSU INTERNAL MED LLC | 927893 | ASHLEY E | ROSKO | 1235339805 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424034 | D472 | Monoclonal gammopathy | ICD10 | 04252017 | G0463, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80048, 85652, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82232, 83615, 84550, 88184, 82784, 87497, 82565, 84520, 82374, 82435, 84295, 84132, 82785 | GAMMAGLOBULIN, E, RIA | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T07:43:08+00:00 | Q18262119 | 000021935-01 | Frances | Clark | MOUNT CARMEL HLTH PRVDRS | 908292 | TARIQ M | GILL | 1104001189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04252017 | 05252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425026 | Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 04252017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T09:23:18+00:00 |  | 000099350-01 | Paulletta | Whitehead | CLEVELAND CLINIC FNDN | 927889 | IAN C | LAVERY | 1518901073 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 04252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04272017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425050 | K632 | Fistula of intestine | ICD10 | 04252017 | 20501, 46080, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 1, 1, 1 | HCPCS | HC |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T10:59:44+00:00 | Q18265548 | 000090397-01 | Ida | Miller | MOUNT CARMEL HLTH PRVDRS | 929338 | GENEVIEVE T | CO-FAUSTINO | 1689905150 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04242017 | 05242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425060 | R1032 | Left lower quadrant pain | ICD10 | 04252017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T12:21:45+00:00 | Q18267051 | 000070762-01 | Thurl | Bradburn | PREMIER HEALTH SPEC INC | 948408 | THOMAS | LO | 1629285309 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04242017 | 05242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425069 | Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 04252017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T12:32:14+00:00 | Q18267246 | 000094348-01 | Tracy | Pseekos | ARBOR VIEW FAM MED INC | 926744 | JESSICA | CONN | 1659691806 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04252017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04242017 | 05242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425073 | M21372 | Foot drop, left foot | ICD10 | 04252017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T12:43:34+00:00 | Q18267464 | 000062694-01 | SUSAN | REED | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 07012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425075 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 04252017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T12:58:42+00:00 | Q18267784 | 000071095-01 | Carol | Hilyard | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04242017 | 05242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425078 | R05 | Cough | ICD10 | 04252017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T13:07:20+00:00 | Q18243512 | 000035219-01 | DONALD | ANGUS | ADENA MEDICAL GROUP LLC | 902416 | JENNIFER L | KELLER | 1073576294 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 04252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04252017 | 06242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425085 | R0609 | Other forms of dyspnea | ICD10 | 04252017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 04212017 | 2017-04-21T09:53:21+00:00 |  | 000091722-01 | BARBARA | TIMMS | OSU HLTH SYSTEM NEUROSUR | 911676 | ALI R | REZAI | 1124082441 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04252017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06142017 | 07142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425115 | G250 | Essential tremor | ICD10 | 04252017 | 77002 | FLUOROSCOPIC GUIDANCE FOR NEEDLE PLACEMENT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04212017 | 2017-04-21T09:57:33+00:00 |  | 000032352-01 | CECIL | ASHCRAFT | MOUNT CARMEL HLTH SYS | 937383 | PHILIP D | BERGER | 1851339725 | KATZ, STEVEN E | 936995 | 1518906866 | STEVEN E KATZ | 1518906866 | Out of Network Services | OONS | Pre-Service | PRE | STEVEN E | KATZ | 04252017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04212017 | 05212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425117 | H5000 | Unspecified esotropia | ICD10 | 04252017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T12:09:51+00:00 |  | 000091080-01 | Robert | Hedrick | FLEAGLE, KURT A | 902391 | KURT A | FLEAGLE | 1750382602 | CLINIC MED SRVS CO LL | 938892 | 1528013984 | CLEVELAND CLINIC STAR IMAGING | 1528013984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CLEVELAND CLINIC STAR IMAGING | 04252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04252017 | 05252017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425121 | M545 | Low back pain | ICD10 | 04252017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T12:51:46+00:00 |  | 000031682-01 | WILLIAM | BOWLING | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04252017 | 05252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425126 | D499 | Neoplasm of unspecified behavior of unspecified site | ICD10 | 04252017 | G0463, 72190, 73552 | X-RAY EXAM OF FEMUR 2/> | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T13:39:21+00:00 |  | 000104661-01 | Deloris | Girard | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05022017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425127 | L03221 | Cellulitis of neck | ICD10 | 04252017 | 92507, 92610, 92526, 92612, 31595, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T14:01:14+00:00 |  | 000044350-01 | TERRY | NOGGLE | OSU INTERNAL MED LLC | 923784 | KIMBERLY A | FRIER | 1568427110 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05092017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425133 | G629, G893 | Neoplasm related pain (acute) (chronic) | ICD10 | 04252017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 04252017 | 2017-04-25T14:57:46+00:00 |  | 000030364-01 | CHARLES | BARNHARD | LIPPERT, JOHN | 930037 | JOHN | LIPPERT | 1336128404 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Out of Network Services | OONS | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04262017 | 05262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170425136 | I714, T82898A | Oth complication of vascular prosth dev/grft, init | ICD10 | 04252017 | 37242, 99152, 36160, 36245 | SELECT.CATH.PLACEMENT,ARTERIAL,EACH 1ST ORDER ABDOMINAL,PELVIC, OR LE | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 31, 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T16:03:19+00:00 |  | 000031767-01 | MARJORIE | THORNTON | MOUNT CARMEL HLTH PRVDRS | 929338 | GENEVIEVE T | CO-FAUSTINO | 1689905150 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 04252017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 04252017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170328097 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04252017 | E0570 | NEBULIZER, WITH COMPRESSOR | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03292017 | 2017-03-29T14:36:35+00:00 |  | 000082943-01 | Jeffrey | Ledsome | MARIETTA HLTH CARE PHYS | 922070 | DORAI T | RAJAN | 1831297654 | MICHAEL SHRAMOWIAT LLC | 923894 | 1003820374 | MICHAEL SHRAMOWIAT | 1568485233 | Out of Network Services | OONS | Pre-Service | PRE | MICHAEL | SHRAMOWIAT | 04252017 | Denied | MediGold Southeast OH Essential Care | Fax | Administrative Denial | Outpatient | 04252017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170329112 | C649 | Malignant neoplasm of unsp kidney, except renal pelvis | ICD10 | 04252017 | 99213, 80307 | DRUG TEST PRSMV CHEM ANLYZR | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Message left for Chasity at provider's office.  Request is a retro request with date of service of 3/22/17 and request date 3/29/17.  Clinical information also still needed to process request., Expedited portion removed from request as per phone call with Chasity.  Date of service is 3/22. |  |  |  |  | 0 |
