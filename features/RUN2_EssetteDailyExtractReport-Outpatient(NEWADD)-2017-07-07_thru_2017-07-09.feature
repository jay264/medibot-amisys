Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-07_thru_2017-07-09
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-07_thru_2017-07-09
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
| 03172017 | 2017-03-17T15:28:14+00:00 |  | 000028125-01 | HAROLD | NEELY | OSU INTERNAL MED LLC | 907311 | DON M | BENSON | 1003862236 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04042017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317136 | D472 | Monoclonal gammopathy | ICD10 | 07072017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82232, 86140, 80048, 82947, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83550, 83615, 86334, 82784, 84165, 85610, 83883, 84439, 84443, 84550, 82607, 82306, 85652, 77075, 71020, G0364, 38221, 88313, 88237, 88262, 88305, 88184, 88342, 88307, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T09:38:19+00:00 |  | 000113921-01 | Bonnie | Pace | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 04242017 | 07242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170424008 | J439 | Emphysema, unspecified | ICD10 | 07072017 | G0463, 71020, 78582, 93307, 93306, 93320, 93000, 94010, 94060, 94720, 36600, 94620, 99245, 97802, 77080, 78264, 91034, 91010, 93880, 45378, 83894, 83912, 83898, 86695, 86696, 85705, 86832, 86833, 86828, 85303, 85306, 86765, 86777, 86787, 87389, 86803, 87340, 86706, 86704, 86708, 83890, 84311, 83892, 86665, 86645, 86644, 84156, 84540, 82570, 86900, 86901, 86850, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 80061, 83735, 84100, 84134, 85730, 85610, 84439, 80307, 84443, 82306, 83540, 84466, 83036, 82977, 82728, 83887, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 82310, 86780, 86480, 86147 | CARDIOLIPIN (PHOSPHOLIPID) ANTIBODY | CPT | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1, 1, 1, 2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T10:09:53+00:00 |  | 000083167-01 | Patricia | Preston | UNIVERSITY OF CINCINNATI | 924152 | MILTON T | SMITH | 1790726446 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06062017 | 09062017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605005 | I8501, R7989, Z944 | Liver transplant status | ICD10 | 07072017 | 43260, 43262, 43264, 43274, 43275, 43276, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T09:22:35+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 911166 | MAHMOUD | HOUMSSE | 1780630129 | OSU INTERNAL MED LLC | 937566 | 1740231448 | OSU INTERNAL MEDICINE LLC | 1740231448 | Transplant Eval | TRANS | Pre-Service | PRE |  | OSU INTERNAL MEDICINE LLC | 07072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606014 | B9781, I480, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07072017 | 99214, 93000, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T17:50:24+00:00 |  | 000093789-01 | Leila | Hollett | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607007 | K7460, K7581 | Nonalcoholic steatohepatitis (NASH) | ICD10 | 07072017 | 49083, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T10:58:02+00:00 |  | 000104972-01 | Delores | Ellison | OSU SURGERY LLC | 908443 | AMER | RAJAB | 1700831864 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07072017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06152017 | 08152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608084 | Z01818, Z5181 | Encounter for therapeutic drug level monitoring | ICD10 | 07072017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 06132017 | 2017-06-13T17:14:57+00:00 |  | 000108586-01 | John | Bradford | CLEVELAND CLINIC FNDN | 927352 | RICHARD A | FATICA | 1447366174 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Transplant Eval | TRANS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 07072017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170614102 | E119, I10 | Essential (primary) hypertension | ICD10 | 07072017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3 | 3, 3 | Approved, Approved | 184, 184 | HCPCS | HC |  |  |  |  |  | 0 |
| 06142017 | 2017-06-14T12:07:31+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06212017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170614148 | J439 | Emphysema, unspecified | ICD10 | 07072017 | 71020, 93307, 93306, 93320, 94010, 94060, 94720, 36600, 94620, 86832, 86833, 86828, 82040, 84075, 84460, 84450, 82248, 82247, 84155, G0103, G0480, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 82947, G0463, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06152017 | 2017-06-15T12:08:47+00:00 |  | 000026950-01 | JODI | HOOVER | CLEVELAND CLINIC FNDN | 910143 | EDWARD G | SOLTESZ | 1629015730 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 07072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06152017 | 09152017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170615115 | I719 | Aortic aneurysm of unspecified site, without rupture | ICD10 | 07072017 | G0463, 99203, 99204, 99205, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 1, 1, 1, 2, 2, 2 | 3, 1, 1, 1, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T16:17:21+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 948088 | JOHN | CURFMAN | 1780039412 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07072017 | Approved | MediGold Medical Only | Fax | Medical Criteria Met | Outpatient | 06212017 | 09212017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170620030 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 07072017 | 99211, 99212, 99213, 99214, 99215, G0463, 85025, 80053, 36415, 36592, 82947, 84100, 83615, 84550, 85730, 85610 | PROTHROMBIN TIME | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06192017 | 2017-06-19T10:46:06+00:00 | Q18679179 | 000040992-01 | PATRICIA | HOLZER | OHIOHEALTH PHYS GRP | 914865 | MONICA R | RIFFLE | 1568770808 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06212017 | 07212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170620112 | R079 | Chest pain, unspecified | ICD10 | 07072017 | 78452, 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T09:20:48+00:00 |  | 000042352-01 | STELLA | HERNANDEZ | UNIVERSITY RADIATION ONC | 928137 | AASHISH | BHATT | 1790953297 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07072017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621139 | C07 | Malignant neoplasm of parotid gland | ICD10 | 07072017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1 | 1, 1, 1, 1, 1, 3, 3, 3, 3, 3, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 07032017 | 2017-07-03T11:42:00+00:00 |  | 000032985-01 | LLOYD | GINGERICH | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 07072017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08012017 | 09012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703130 | G250 | Essential tremor | ICD10 | 07072017 | 95978, 95979, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 07032017 | 2017-07-03T14:43:41+00:00 |  | 000091722-01 | BARBARA | TIMMS | OSU HLTH SYSTEM NEUROSUR | 911676 | ALI R | REZAI | 1124082441 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07122017 | 09122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170703143 | G250 | Essential tremor | ICD10 | 07072017 | 61885, 77002, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 63, 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 07052017 | 2017-07-05T10:40:22+00:00 |  | 000064002-01 | LESLIE | WILLIAMSON | MADISON FAMILY HEALTH | 942170 | DOUGLAS R | CLOSSER | 1982839312 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 07072017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07072017 | 08072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170705087 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07072017 | E0466 | HOME VENT NON-INVASIVE INTER | HCPCS | 1 | 1 | Approved | 397 | HCPCS | HC | Spoke with Angela Saffell RN; Supervisor Medical Management at MediGold; then left 2 messages for Melissa Poindexter at Cornerstone Medical Services (0900 & 945) regarding Non-Invasive Trilogy (Phone 614-866-5520 ext 15220), Spoke with Laura Leitnick RN; MediGold  UR nurse covering MCSA;  Stated MBR was discharged 7/6/17 late on 6L O2 and notes stating d/c MBR 'can't afford Non-Invasive Trilogy', Called left request for call at general phone number  again on Melissa Poindexter and Jeff Donahue's VMM requesting call back ASAP, Left another message regarding requesting call back on main phone line & also for Melissa Poindexter Ext 15220, Melissa Poindecter called back this is a 13 month rent to own equipment  Aware MBR refused HHC, MBR is followed by Dr Closser for previous 2 admissions this year Dx Acute Respiratory Failure requiring intubation  COPD & Chronic Respiratory Failure on 3-4 L/mm Home O2  Chronic issues with Hypoxia  Acute hypoxia & Hypercapnea with AMS  Asthma, Called Dr Closser's office and spoke to Heidi  Fax is 614-464-0295, Called Dr Closser's office and spoke to Heidi  Fax is 614-464-0295 |  |  |  |  | 0 |
| 07062017 | 2017-07-06T11:41:42+00:00 | Q18793695 | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07072017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 01012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707001 | C8338 | Diffuse large B-cell lymphoma, lymph nodes of multiple sites | ICD10 | 07072017 | J9310, J2505, J1626, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 44, 8, 160, 320 | 44, 8, 160, 320 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC | J9310: 44 INJECTION  RITUXIMAB  100 MG  Dispensed as: 1050.00 mg  1 treatment(s) each cycle  4 cycle(s); J2505: 8 PegFilgrastim (Neulasta) 6 mg  SQ  once  every 21 days  8 cycles; J1626: 160 Granisetron up to 1 mg  IV  up to 4 days  Dispensed as: 1.00 mg  4 treatment(s) each cycle  4 cycle(s); J1100: 320 Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 07052017 | 2017-07-05T14:44:22+00:00 | Q18794875 | 000100149-01 | Linda | Gallenstein | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07142017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707002 | C8218 | Follicular lymphoma grade II, lymph nodes of multiple sites | ICD10 | 07072017 | 71260, 74177, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T11:59:02+00:00 | Q18802264 | 000061601-01 | WALLACE | WRIGHT JR | OH ONCOLOGY & HEMATOLOGY | 939552 | JERRY W | MITCHELL | 1750339651 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707003 | C499 | Malignant neoplasm of connective and soft tissue, unsp | ICD10 | 07072017 | 78472, 71260, 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T13:25:14+00:00 | Q18804081 | 000054983-01 | GEORGE | ESTES | OH ONCOLOGY & HEMATOLOGY | 928374 | SAMEH | MIKHAIL | 1447455720 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07182017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707005 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 07072017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T07:53:48+00:00 | Q18797671 | 000044568-01 | SANDRA | BENJAMIN | COLONNADE MED GRP INC | 916472 | SARA E | SARGENT | 1083803779 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 08052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707008 | M545 | Low back pain | ICD10 | 07072017 | 72148, 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07052017 | 2017-07-05T14:52:27+00:00 | Q18769354 | 000069562-01 | SANDRA | SLONAKER | MIDWEST SPINE & PAIN CNS | 945890 | FELICIA | CIAMACCO | 1922484294 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 07292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707023 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 07072017 | 72156 | MRI-SPINAL CANAL/CONTENTS,FOLLOWED BY CONTRAST MORE SEQUENCES;CERVICAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07052017 | 2017-07-05T15:33:01+00:00 | Q18793348 | 000054297-01 | DONNA | HARLOW | WRIGHT STATE PHYSICIANS | 902529 | MAMLE | ANIM | 1790741536 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | INJU & RAJ SOIN MEDICAL CENTER | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07102017 | 08092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707029 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 07072017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07052017 | 2017-07-05T14:39:47+00:00 | Q18794851 | 000054941-01 | JUDITH | DILDINE | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07052017 | 08042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707039 | M4856XA | Collapsed vertebra, NEC, lumbar region, init | ICD10 | 07072017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07062017 | 2017-07-06T08:48:20+00:00 | Q18798295 | 000032468-01 | DONNA | CONWAY | RCHP WILMINGTON LLC | 947943 | ADEWALE A | FAWOLE | 1073742359 | MADISON COUNTY COMMU ER | 938360 | 0 | MADISON COUNTY COMMU ER PHY | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MADISON COUNTY COMMU ER PHY | 07072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 01072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170707045 | C50812 | Malignant neoplasm of ovrlp sites of left female breast | ICD10 | 07072017 | J9355 | TRASTUZUMAB, 10 MG | HCPCS | 312 | 312 | Approved | 181 | HCPCS | HC | J9355: 312 Trastuzumab 6 mg/kg  IV  day 1  every 21 days  8 cycles |  |  |  |  | 0 |
| 06202017 | 2017-06-20T15:23:32+00:00 |  | 000048023-01 | KAREN | WOODS | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Post-Service | POST |  | UNKNOWN PROVIDER | 07072017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 07072017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170620180 | R002 | Palpitations | ICD10 | 07072017 | 93306, 99224 | SUBSEQUENT OBSERVATION CARE | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Retroactive requests for authorization cannot be processed  as services have already been rendered. |  |  |  |  | 0 |
| 07052017 | 2017-07-05T12:50:28+00:00 |  | 000026979-01 | SANFORD | VAUGHN | MOUNT CARMEL WEST PHYS | 936517 | JONATHAN B | FEIBEL | 1578556817 | MOUNT CARMEL WEST PHYS | 936517 | 1932120268 | JONATHAN B FEIBEL | 1578556817 | DME | DME | Pre-Service | PRE | JONATHAN B | FEIBEL | 07072017 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 07072017 | 07082017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170705099 | M2012, M2022 | Hallux rigidus, left foot | ICD10 | 07072017 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Called and left message for Wanda Engle (614-545-7910)  in Dr Feibel's office to clarify a couple things on Request as no company is listed Await CB, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
