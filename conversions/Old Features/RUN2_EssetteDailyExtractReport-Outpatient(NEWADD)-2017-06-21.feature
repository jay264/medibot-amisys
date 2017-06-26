Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-21
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-21
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
| 03172017 | 2017-03-17T15:28:14+00:00 |  | 000028125-01 | HAROLD | NEELY | OSU INTERNAL MED LLC | 907311 | DON M | BENSON | 1003862236 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 04042017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317136 | D472 | Monoclonal gammopathy | ICD10 | 06212017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82232, 86140, 80048, 82947, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83550, 83615, 86334, 82784, 84165, 85610, 83883, 84439, 84443, 84550, 82607, 82306, 85652, 77075, 71020, G0364, 38221, 88313, 88237, 88262, 88305, 88184, 88342, 88307, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T09:38:19+00:00 |  | 000113921-01 | Bonnie | Pace | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424008 | J439 | Emphysema, unspecified | ICD10 | 06212017 | G0463, 71020, 78582, 93307, 93306, 93320, 93000, 94010, 94060, 94720, 36600, 94620, 99245, 97802, 77080, 78264, 91034, 91010, 93880, 45378, 83894, 83912, 83898, 86695, 86696, 85705, 86832, 86833, 86828, 85303, 85306, 86765, 86777, 86787, 87389, 86803, 87340, 86706, 86704, 86708, 83890, 84311, 83892, 86665, 86645, 86644, 84156, 84540, 82570, 86900, 86901, 86850, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 80061, 83735, 84100, 84134, 85730, 85610, 84439, 80307, 84443, 82306, 83540, 84466, 83036, 82977, 82728, 83887, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86780, 86480, 86147 | CARDIOLIPIN (PHOSPHOLIPID) ANTIBODY | CPT | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 05122017 | 2017-05-12T13:51:01+00:00 |  | 000027910-01 | BONNIESUE | SMITH | ENT & SINUS INSTITUTE OF | 939545 | BORIS I | KARANFILOV | 1740244482 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Out of Network Services | OONS | Pre-Service | PRE |  | DUBLIN METHODIST HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06102017 | 08112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170512139 | D3162, H0520, J320, J321, J322 | Chronic ethmoidal sinusitis | ICD10 | 06212017 | 31276, 31255, 31256, 31292, 61782 | SCAN PROC CRANIAL EXTRA | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 63, 63, 63, 63, 63 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T10:09:53+00:00 |  | 000083167-01 | Patricia | Preston | UNIVERSITY OF CINCINNATI | 924152 | MILTON T | SMITH | 1790726446 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 06062017 | 09062017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605005 | I8501, R7989, Z944 | Liver transplant status | ICD10 | 06212017 | 43260, 43262, 43264, 43274, 43275, 43276, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T15:38:59+00:00 |  | 000029380-01 | WILLIAM | THOMPSON | ORTHOPEDIC ONE INC | 907892 | NATALIE R | WYSS | 1497844856 | BIOVENTUS LLC | 948489 | 1861761785 | BIOVENTUS LLC | 1861761785 | DME | DME | Pre-Service | PRE |  | BIOVENTUS LLC | 06212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06192017 | 09192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170619156 | M960 | Pseudarthrosis after fusion or arthrodesis | ICD10 | 06212017 | E0760 | OSTEOGENESIS STIMULATOR, LO INTENSITY U/S | HCPCS | 1 | 1 | Approved | 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T08:06:07+00:00 |  | 000076011-01 | Willadeen | Kulick | DERALD MADSON MD INC | 905645 | DERALD L | MADSON JR | 1598769077 | DERALD MADSON MD INC | 905645 | 1134229305 | DERALD L MADSON JR | 1598769077 | Predetermination Request | PR | Pre-Service | PRE | DERALD L | MADSON JR | 06212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07012017 | 08012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170620113 | I8311, I8312 | Varicose veins of left lower extremity with inflammation | ICD10 | 06212017 | 36471 | INJ. SCLEROSING SOL.,MULT VNS, 1 LG | CPT | 1 | 1 | Approved | 32 | CPT | C4 | PHONE CALL PLACED TO DR MADSEN'S OFFICE AND SPOKE W/TAMMY  SHE CONFIRMED VESSEL SIZE FOR SCLEROTHERAPY WAS 3MM. |  |  |  |  | 0 |
| 06202017 | 2017-06-20T14:11:52+00:00 |  | 000109137-01 | Salina | Jewell | LOWER LIGHTS CHRISTIAN H | 924708 | JENNIFER J | HARTMAN | 1811008840 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 06212017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06202017 | 07202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170620183 | C669 | Malignant neoplasm of unspecified ureter | ICD10 | 06212017 | E2365, K0823 | PWC gp 2 std cap chair | HCPCS | 2, 1 | 2, 1 | Approved, Approved | 396, 396 | HCPCS | HC |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T15:43:12+00:00 |  | 000031171-01 | JANET | PFEIFER | MIDWEST RETINA INC | 904034 | DINO D | KLISOVIC | 1477644573 | CEN OHIO NEURO OPHTHALMO | 936377 | 1396822334 | AVROM D EPSTEIN | 1831118363 | Out of Network Services | OONS | Pre-Service | PRE | AVROM D | EPSTEIN | 06212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06162017 | 08162017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170620185 | H0520 | Unspecified exophthalmos | ICD10 | 06212017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 62, 62, 62, 62, 62, 62, 62, 62, 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T13:44:12+00:00 | Q18692691 | 000062997-01 | DIANNE | GERAMITA | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621008 | C187 | Malignant neoplasm of sigmoid colon | ICD10 | 06212017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T14:29:59+00:00 | Q18639793 | 000073049-01 | Connie | Carter | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06132017 | 07132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621012 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 06212017 | 71260, 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T16:38:17+00:00 |  | 000082112-01 | Arlene | Keegan | OHIO PLASTIC SURGERY SPE | 917979 | CHRISTOPHER | ZOCHOWSKI | 1487868014 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Outpatient | 06282017 | 07282017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621018 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 06212017 | 19357, 15777, 15860 | IV INJ AGNT TO TEST BLD FLW IN FLAP | CPT | 0, 0, 0 | 1, 1, 1 | Auth Not Required, Auth Not Required, Auth Not Required | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T07:43:00+00:00 | Q18686559 | 000034297-01 | PHYLLIS | PENROD | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | BRUCE L AUERBACH MD LLC | 902501 | 1770787723 | BRUCE L AUERBACH MD LLC | 1770787723 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BRUCE L AUERBACH MD LLC | 06212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621029 | R0602 | Shortness of breath | ICD10 | 06212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T08:28:15+00:00 | Q18687108 | 000106689-01 | James | Mcafee | CARDIOVASCULAR SPEC LLC | 925351 | MOBUSHER | MAHMUD | 1558466227 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 06212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06212017 | 07212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621038 | I208 | Other forms of angina pectoris | ICD10 | 06212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T18:02:43+00:00 | Q18639595 | 000080599-01 | Emagene | Fouty | OSU INTERNAL MED LLC | 909694 | THOMAS E | OLENCKI | 1710994280 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06212017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06192017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621063 | C6931 | Malignant neoplasm of right choroid | ICD10 | 06212017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06162017 | 2017-06-16T14:03:03+00:00 | Q18639680 | 000080599-01 | Emagene | Fouty | OSU INTERNAL MED LLC | 909694 | THOMAS E | OLENCKI | 1710994280 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06212017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06192017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621064 | C6931 | Malignant neoplasm of right choroid | ICD10 | 06212017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T08:11:38+00:00 |  | 000065626-01 | FRANK | HOLTER | OSU SURGERY LLC | 930180 | MICHAEL P | MEARA | 1194929844 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06232017 | 07232017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621071 | C109, C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 06212017 | 43246, 45378 | COLONOSCOPY PAST SPL FLEX-DIAG. | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T13:13:20+00:00 | Q18667852 | 000092009-01 | DARLENE | AGLER | MADISON FAMILY HEALTH | 937353 | DAVID R | RALSTON | 1164408472 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07032017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621074 | J8410 | Pulmonary fibrosis, unspecified | ICD10 | 06212017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T13:21:11+00:00 | Q18671312 | 000071905-01 | James | Hance | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621079 | G250 | Essential tremor | ICD10 | 06212017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T11:27:35+00:00 | Q18690474 | 000069150-01 | BARBARA | SHORTS | MOUNT CARMEL HLTH PRVDRS | 936382 | ANGELA A | EUBANKS | 1386681104 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621082 | R42 | Dizziness and giddiness | ICD10 | 06212017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T15:20:11+00:00 | Q18682953 | 000107244-01 | Opal | Doyle | MERCY HEALTH PHYSICIANS | 921770 | RICHARD B | FRIES | 1033321567 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 06212017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621112 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06212017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T13:22:41+00:00 | Q18683754 | 000105535-01 | Vickie | McDonald | ADENA MEDICAL GROUP LLC | 906248 | AARON M | ROBERTS | 1114105715 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06192017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621115 | M545 | Low back pain | ICD10 | 06212017 | 72131 | CAT SCAN LUMBAR SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T10:19:51+00:00 | Q18689187 | 000068098-01 | MARY | WOODGEARD | FAIRFIELD HLTHCARE PROFS | 910849 | JEREMY W | BUCKLEY | 1720106248 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 07202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621125 | R079 | Chest pain, unspecified | ICD10 | 06212017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T09:20:48+00:00 |  | 000042352-01 | STELLA | HERNANDEZ | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06212017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 06282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621139 | C07 | Malignant neoplasm of parotid gland | ICD10 | 06212017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1 | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T11:06:35+00:00 |  | 000069460-01 | VIRGINIA | HUGHES | INTEGRITY WOUND CARE LLC | 935921 | MICHAEL D | GOODYEAR | 1962499822 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Hyperbaric Oxygen | HO | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | THE TIMKEN COMPANY | Fax | Medical Criteria Met | Outpatient | 07032017 | 10032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621145 | L598 | Oth disrd of the skin, subcu related to radiation | ICD10 | 06212017 | G0277, 99183 | PHYSICIAN ATTENDANCE AND SUPERVISION OF HYPERBARIC OXYGEN THERAPY, PER | CPT | 10, 10 | 10, 10 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T15:23:32+00:00 |  | 000048023-01 | KAREN | WOODS | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Post-Service | POST |  | UNKNOWN PROVIDER | 06212017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 06212017 | 06222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170620180 | R002 | Palpitations | ICD10 | 06212017 | 93306, 99224 | SUBSEQUENT OBSERVATION CARE | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Retroactive requests for authorization cannot be processed  as services have already been rendered. |  |  |  |  | 0 |
