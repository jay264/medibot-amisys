Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-24
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-24
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
| 03132017 | 2017-03-13T14:44:26+00:00 |  | 000101868-01 | Alyssa | Bohlander | CONCORD COUNSELING | 913377 | SARA L | BONACCI | 1225272628 | CONCORD COUNSELING | 913377 | 1043258767 | SARA L BONACCI | 1225272628 | OP Behavioral Health | OP BH | Pre-Service | PRE | SARA L | BONACCI | 04242017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03092017 | 06092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170314120 | F4312, P914 | Neonatal cerebral depression | ICD10 | 04242017 | 90791, 90834, 90835, 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03132017 | 2017-03-13T14:44:26+00:00 |  | 000115477-01 | Penny | Starr | CONCORD COUNSELING | 913377 | SARA L | BONACCI | 1225272628 | CONCORD COUNSELING | 913377 | 1043258767 | SARA L BONACCI | 1225272628 | OP Behavioral Health | OP BH | Pre-Service | PRE | SARA L | BONACCI | 04242017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03172017 | 06172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170314122 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 04242017 | 90791, 90834, 90835, 90836, 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03132017 | 2017-03-13T15:11:40+00:00 |  | 000073550-01 | Leota | Shook | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 04242017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03132017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170314124 | E119, M150 | Primary generalized (osteo)arthritis | ICD10 | 04242017 | K0821, E2365, E2365 | POWER WHEELCHAIR ACCESSORY, U-1 SEALED LEAD ACID BATTERY, EACH (E.G. GEL | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC | Spoke with Nicole At Dr Mehra's office MBR is 235.8lb and 5'5 Spoke with Seth @ Rehab Medical Phone # 855-386-3124  stated sje can use K0821 and E2365 batteries |  |  |  |  | 0 |
| 03242017 | 2017-03-24T14:11:03+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03282017 | 04282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324102 | D492 | Neoplasm of unsp behavior of bone, soft tissue, and skin | ICD10 | 04242017 | 20225, 77012, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T14:28:43+00:00 |  | 000099600-01 | Michael | Rieser | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04242017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 03292017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170324106 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 04242017 | G0463, 93000, 71020, 94760, 85730, 85610, 83036, 36415, 85025, 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T09:43:59+00:00 |  | 000110543-01 | Alter | Freeman | MERCY HEALTH PHYSICIANS | 921155 | DENVER | STANFIELD | 1477551406 | PROSCAN IMAGING CT AT MIDTOWN | 928566 | 1508856667 | PROSCAN IMAGING CT AT MIDTOWN | 1508856667 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING CT AT MIDTOWN | 04242017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170327101 | M25561 | Pain in right knee | ICD10 | 04242017 | 73702 | CAT SCAN LOWER EXTRMTY W/WO CNTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T12:39:02+00:00 | Q16818001 | 000102847-01 | Warren | Tomlin Jr | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Initial Review | INIT |  | FAIRFIELD MEDICAL CENTER | 04242017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 03282017 | 06262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170328126 | C187 | Malignant neoplasm of sigmoid colon | ICD10 | 04242017 | J9206, J9055, J9190, J0640 | INJECTION, LEUCOVORIN CALCIUM, PER 50 MG | HCPCS | 1, 2, 1, 1 | 1, 2, 1, 1 | Approved, Approved, Approved, Approved | 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03292017 | 2017-03-29T08:56:59+00:00 |  | 000081512-01 | Robert | Strutton | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 04022017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170329107 | J439 | Emphysema, unspecified | ICD10 | 04242017 | 91034, 91010, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 04192017 | 2017-04-19T12:36:08+00:00 |  | 000109615-01 | Karyn | Davis | MOUNT CARMEL HLTH PRVDRS | 943459 | TROY | JOHNSON | 1679523567 | PICKERINGTON AREA COUNSE | 933775 | 1093883183 | NEW HORIZONS YOUTH & FAMILY CENTER | 1255453460 | Out of Network Services | OONS | Pre-Service | PRE |  | NEW HORIZONS YOUTH & FAMILY CENTER | 04242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04202017 | 08202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170420063 | F418 | Other specified anxiety disorders | ICD10 | 04242017 | 90791, 90834 | PSYTX PTAND/FAMILY 45 MINUTES | CPT | 1, 7 | 1, 7 | Approved, Approved | 123, 123 | CPT | C4 | Requested clinical documentation for request from Shanna on 042017 at 083000., CLINICAL DOCUMENTATION REC'D 4/20/17 |  |  |  |  | 0 |
| 04242017 | 2017-04-24T08:47:22+00:00 |  | 000063656-01 | MICHAEL | ALLEN | MEM HSP OF UNION COUNTY | 935273 | ANTERPREET S | NEKI | 1407893555 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04242017 | 05242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424001 | C01 | Malignant neoplasm of base of tongue | ICD10 | 04242017 | J9267, J9045 | CARBOPLATIN, 50 MG | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T08:03:19+00:00 |  | 000103733-01 | Kimberly | Brown | NEUROSCIENCE CENTER | 914754 | JOHN G | OAS | 1336146638 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424004 | R42 | Dizziness and giddiness | ICD10 | 04242017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04212017 | 2017-04-21T09:44:28+00:00 |  | 000104661-01 | Deloris | Girard | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05012017 | 08012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424006 | L03221 | Cellulitis of neck | ICD10 | 04242017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 1 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T09:38:19+00:00 |  | 000113921-01 | Bonnie | Pace | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424008 | J439 | Emphysema, unspecified | ICD10 | 04242017 | G0463, 71020, 78582, 93307, 93306, 93320, 93000, 94010, 94060, 94720, 36600, 94620, 99245, 97802, 77080, 78264, 91034, 91010, 93880, 45378, 83890, 83894, 83912, 83898, 86695, 86696, 85705, 86832, 86833, 86828, 85303, 85306, 86765, 86777, 86787, 87389, 86803, 87340, 86706, 86704, 86708, 83890, 84311, 83892, 86665, 86645, 86644, 84156, 84540, 82570, 86900, 86901, 86850, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 80061, 83735, 84100, 84134, 85730, 85610, 84439, 80307, 84443, 82306, 83540, 84466, 83036, 82977, 82728, 83887, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86780, 86480, 86147 | CARDIOLIPIN (PHOSPHOLIPID) ANTIBODY | CPT | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T10:11:41+00:00 |  | 000065725-01 | SUZETTE | MUSCH | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05162017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424010 | D480, D489, M8560 | Other cyst of bone, unspecified site | ICD10 | 04242017 | 99211, 99212, 99213, 99214, 99215, G0463, 71020, 73110, 73110, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 3, 3, 3, 3, 3, 3, 0, 0, 0, 0 | 3, 3, 3, 3, 3, 3, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, , , ,  | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | RECEIVED 2ND FAX W/PROCEDURES FOR APPOINTMENT THAT WEREN'T INCLUDED.  ADDED TO THIS AUTH. |  |  |  |  | 0 |
| 04242017 | 2017-04-24T11:52:47+00:00 |  | 000092603-01 | DONALD | BOWERS JR | UNIVERSITY RADIATION ONC | 919516 | VIRGINIA M | DIAVOLITSIS | 1275799181 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05012017 | 08012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424018 | R220 | Localized swelling, mass and lump, head | ICD10 | 04242017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T13:38:16+00:00 |  | 000097196-01 | Richard | Kulp | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05042017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424025 | J387 | Other diseases of larynx | ICD10 | 04242017 | 31535, 31622, 43200, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 62, 62, 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 04212017 | 2017-04-21T09:46:43+00:00 |  | 000034190-01 | EMOGENE | MOBLEY | OHIO ENT & ALLERGY PHYSI | 911982 | ALFRED J | FLEMING JR | 1396852422 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Out of Network Services | OONS | Pre-Service | PRE |  | RIVERSIDE METHODIST HOSPITAL | 04242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05012017 | 08012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424026 | H903 | Sensorineural hearing loss, bilateral | ICD10 | 04242017 | 69930, L8614, 92603, 92604 | REPROGRAM COCHLEAR IMPLT 7 > | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 03202017 | 2017-03-20T13:47:51+00:00 |  | 000063379-01 | ROBERT | FUHRMAN | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 04242017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 04242017 | 04252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170321101 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 04242017 | E0486 | ORAL DEVICE/APPLIANCE USED TO REDUCE UPPER AIRWAY COLLAPSIBI | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03222017 | 2017-03-22T12:57:03+00:00 |  | 000098859-01 | Loretta | Hermanson | OH MEDICAL TRANSPORT LLC | 922193 |  | OH MEDICAL TRANSPORT LLC | 1316267297 | OH MEDICAL TRANSPORT LLC | 922193 | 1316267297 | OH MEDICAL TRANSPORT LLC | 1316267297 | Out of Network Services | OONS | Pre-Service | PRE |  | OH MEDICAL TRANSPORT LLC | 04242017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 04242017 | 04252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170323132 | A4902 | Methicillin resis staph infection, unsp site | ICD10 | 04242017 | A0428, A0425 | GROUND MILEAGE, PER STATUTE MILE | HCPCS | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03272017 | 2017-03-27T10:50:25+00:00 |  | 000080761-01 | Miles | Peyton | SPRINGFIELD UROLOGY LLC | 903102 | ANANTH | ANNAMRAJU | 1003981168 | CRYSTAL CLEAR IMAGING | 937806 | 1346220662 | CRYSTAL CLEAR IMAGING | 1346220662 | Radiology (HH) | OP RAD | Initial Review | INIT |  | CRYSTAL CLEAR IMAGING | 04242017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 04242017 | 04252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170327010 | C61 | Malignant neoplasm of prostate | ICD10 | 04242017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03282017 | 2017-03-28T15:18:19+00:00 |  | 000095682-01 | Raymond | Rieckhoff | GERIATRIC PROVIDERS AND | 945455 | ORLANDO | HERNANDEZ | 1962405308 | BIOTECH X-RAY | 946708 | 1770949737 | BIOTECH X-RAY | 1770949737 | Out of Network Services | OONS | Pre-Service | PRE |  | BIOTECH X-RAY | 04242017 | Denied | MediGold Southwest OH Essential Care | Fax | Administrative Denial | Outpatient | 04242017 | 04252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170328124 | J00, J069 | Acute upper respiratory infection, unspecified | ICD10 | 04242017 | 71010, R0070, Q0092 | SET-UP PORTABLE X-RAY EQUIPMENT | HCPCS | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | HCPCS | HC | P/c to Susan Haffner 513-771-1779 left a VM that the CPT code she provided 20092 is not an active code.  I need the correct code so I can submit the request to the nurses.  Left call back information., R/C from Susan H she said the correct CPT code is Q0092.  Thanked her for calling back. |  |  |  |  | 0 |
| 03232017 | 2017-03-23T12:54:58+00:00 |  | 000068801-01 | DONNA | SMITH | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 04242017 | Partial Approval | MediGold Classic Preferred | Fax | Portion of Request Not Covered By Medicare | Outpatient | 03242017 | 03312017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Partial Approval | X170323117 | C569, R531 | Weakness | ICD10 | 04242017 | E0143, E0260, K0001 | STANDARD WHEELCHAIR | HCPCS | 0, 1, 1 | 1, 1, 1 | Denied, Approved, Approved | 8, 8, 8 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
