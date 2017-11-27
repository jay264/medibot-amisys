Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-24_thru_2017-11-26
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-11-24_thru_2017-11-26
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
| 11152017 | 2017-11-15T12:26:09+00:00 |  | 000044853-01 | RICHARD | BOWERS | IRHYTHM TECHNOLOGIES INC | 932882 |  | IRHYTHM TECHNOLOGIES INC | 1710130539 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | Out of Network Services | OONS | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 11242017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11092017 | 01092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116113 | I482 | Chronic atrial fibrillation | ICD10 | 11242017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 62 | CPT | C4 |  |  |  |  |  | 0 |
| 11222017 | 2017-11-22T12:27:34+00:00 |  | 000076039-01 | Kyle | Carroll Jr. | OSU EYE PHYS & SURGEONS | 911654 | MICHAEL B | WELLS | 1467665687 | OSU EYE PHYS & SURGEONS | 939010 | 1861437923 | OSU EYE PHYSICIANS & SURGEONS INC | 1861437923 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU EYE PHYSICIANS & SURGEONS INC | 11242017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 11302017 | 02282018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122149 | H3411, H40053, H348192 | CENTRAL RETINAL VEIN OCCLUSION, UNSPECIFIED EYE, STABLE | ICD10 | 11242017 | 99212, 99213, 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3 | 3, 3, 3, 3 | Approved, Approved, Approved, Approved | 91, 91, 91, 91 | HCPCS | HC | Per Voyager  ROI is Jackie Bayer-fiance  (614)-231-1935, Mbr number (740) 406-0839 |  |  |  |  | 0 |
| 11152017 | 2017-11-15T15:21:24+00:00 |  | 000112977-01 | Richard | Caner | OSU SURGERY LLC | 918628 | KYLE A | PERRY | 1821209925 | OSU SURGERY LLC | 938610 | 1538117551 | OSU SURGERY LLC | 1538117551 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU SURGERY LLC | 11242017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12152017 | 01152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116175 | R05, R1110, R634 | Abnormal weight loss | ICD10 | 11242017 | 99201, 99202, 99203, 99204, 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T13:54:46+00:00 |  | 000085641-01 | LINDA | GRIESHEIMER | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11242017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 11172017 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116133 | D1030 | Benign neoplasm of unspecified part of mouth | ICD10 | 11242017 | 92507, 92610, 92611, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | Pleomorphic adenoma is a common benign salivary gland neoplasm characterised by neoplastic proliferation of parenchymatous glandular cells along with myoepithelial components  having a malignant potentiality. It is the most common type of salivary gland tumor and the most common tumor of the parotid gland. |  |  |  |  | 0 |
| 11162017 | 2017-11-16T11:15:04+00:00 |  | 000025480-01 | BEN | GEARY | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11242017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11172017 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116184 | C07 | Malignant neoplasm of parotid gland | ICD10 | 11242017 | 92507, 92610, 92611, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T13:03:14+00:00 |  | 000116281-01 | Rena | Brown | OSU INTERNAL MED LLC | 930475 | ANNE M | NOONAN | 1477887479 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11212017 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116189 | C20 | Malignant neoplasm of rectum | ICD10 | 11262017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 100, 100, 100, 100, 100, 100 | HCPCS | HC |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T13:25:03+00:00 |  | 000063656-01 | MICHAEL | ALLEN | UNIVERSITY RADIATION ONC | 949435 | JESSICA L | WOBB | 1356653984 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11162017 | 02162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117107 | C01 | Malignant neoplasm of base of tongue | ICD10 | 11262017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T15:51:48+00:00 |  | 000080557-01 | Lori | Fisher | CARL M SHAPIRO DO INC | 921115 | CARL M | SHAPIRO | 1144296708 | CARL M SHAPIRO DO INC | 921115 | 1366418915 | CARL M SHAPIRO | 1144296708 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | CARL M | SHAPIRO | 11262017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 11172017 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120115 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 11262017 | 99213, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T13:52:50+00:00 |  | 000104547-01 | Linda | Clay | OSU PLASTIC SURGERY LLC | 947537 | ROMAN J | SKORACKI | 1477651966 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11202017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121080 | I890 | Lymphedema, not elsewhere classified | ICD10 | 11262017 | 97164, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 42, 42 | HCPCS | HC |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T09:46:06+00:00 |  | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 11212017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121148 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 11262017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 84155, 82945, 89051, 85610, 82565, 84520, 82374, 82345, 84295, 84132, 82947, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41, 41 | HCPCS | HC |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T11:54:23+00:00 |  | 000084039-01 | Harold | Elkins | NEUROSCIENCE CENTER | 915908 | YASUSHI | KISANUKI | 1518182419 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 12212017 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171121160 | M62838 | Other muscle spasm | ICD10 | 11262017 | 99211, 99212, 99213, 99214, 99215, 62368, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 101, 101, 101, 101, 101, 101, 101 | HCPCS | HC |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T16:25:45+00:00 |  | 000097457-01 | Catherine | Conley | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | THE TIMKEN COMPANY | Fax | Services Not Available In-Network | Outpatient | 11272017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122134 | C4402, C44311, C44622 | Squamous cell carcinoma skin/ right upper limb, inc shoulder | ICD10 | 11262017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 35, 35, 35, 35, 35, 35, 35 | HCPCS | HC |  |  |  |  |  | 0 |
| 11222017 | 2017-11-22T10:14:13+00:00 |  | 000082199-01 | Paul | Brill | ROBERT D RUPERT JR MD IN | 906637 |  | ROBERT D RUPERT JR MD INC | 1437395183 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 11222017 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122142 | C139, C7989 | Secondary malignant neoplasm of other specified sites | ICD10 | 11262017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 99, 99, 99, 99, 99, 99 | HCPCS | HC |  |  |  |  |  | 0 |
| 11222017 | 2017-11-22T07:27:18+00:00 |  | 000055345-01 | ERIC | CROKER | ROBERT D RUPERT JR MD IN | 906637 |  | ROBERT D RUPERT JR MD INC | 1437395183 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11222017 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122146 | C01, C7800 | Secondary malignant neoplasm of unspecified lung | ICD10 | 11262017 | 99211, 99212, 99213, 99214, 99215, 80053, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 99, 99, 99, 99, 99, 99, 99, 99 | HCPCS | HC |  |  |  |  |  | 0 |
| 11222017 | 2017-11-22T09:21:48+00:00 |  | 000082619-01 | Linda | Hutchison | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11282017 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122150 | C865 | Angioimmunoblastic T-cell lymphoma | ICD10 | 11262017 | 99211, 99212, 99213, 99214, 99215, 36415, 87799, 88184, 83615, 80053, 85025, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T08:46:19+00:00 |  | 000097271-01 | Paul | Brown | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 11262017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11212017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117121 | S52571A, S52572A | Oth intartic fracture of lower end of left radius, init | ICD10 | 11262017 | 99024, 73110, 73110 | WRIST, COMPLETE, MIN. 3 VIEWS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 41, 41, 41 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T12:07:19+00:00 |  | 000067100-01 | Patricia | Divelbliss | OHIOHEALTH PHYS GRP | 920553 | CHRIS S | KARAS | 1174781587 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Out of Network Services | OONS | Pre-Service | PRE |  | GRANT MEDICAL CENTER | 11262017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11172017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117126 | S12112A | Nondisplaced Type II dens fracture, init for clos fx | ICD10 | 11262017 | 72100 | X-RAY SPINE,LUMBO-SACRAL,A-P & LATR | CPT | 1 | 1 | Approved | 45 | CPT | C4 |  |  |  |  |  | 0 |
| 11222017 | 2017-11-22T09:22:45+00:00 |  | 000067100-01 | Patricia | Divelbliss | OHIOHEALTH PHYS GRP | 920553 | CHRIS S | KARAS | 1174781587 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Out of Network Services | OONS | Pre-Service | PRE |  | GRANT MEDICAL CENTER | 11262017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11222017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122151 | S12112B | Nondisplaced Type II dens fracture, init for opn fx | ICD10 | 11262017 | 72052 | SPINE, CERV. COMPLETE | CPT | 1 | 1 | Approved | 40 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T12:44:03+00:00 |  | 000001748-01 | MARJORIE | GILLESPIE | IRHYTHM TECHNOLOGIES INC | 932882 |  | IRHYTHM TECHNOLOGIES INC | 1710130539 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | Out of Network Services | OONS | Post-Service | POST |  | IRHYTHM TECHNOLOGIES INC | 11262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11202017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X171117130 | R001 | Bradycardia, unspecified | ICD10 | 11262017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 1 | 1 | Approved | 42 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T15:06:13+00:00 |  | 000090505-01 | Thomas | Collins II | MARIETTA MEM HSP | 933767 | JEREMY W | WATERS | 1043536261 | EXACT SCIENES LABORATORI | 939994 | 1629407069 | EXACT SCIENCES LABORATORIES LLC | 1629407069 | Out of Network Services | OONS | Pre-Service | PRE |  | EXACT SCIENCES LABORATORIES LLC | 11262017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 11172017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117143 | Z1211 | Encounter for screening for malignant neoplasm of colon | ICD10 | 11262017 | 81528 | ONCOLOGY COLORECTAL SCR | CPT | 1 | 1 | Approved | 45 | CPT | C4 | Genetic testing for stool DNA., Cologuard is proprietary to Exact Sciences Laboratories; covered once every three yrs., , NCD 210.3, Guidelines: All three must be meet., Age 50-84  symptomatic and at average risk of developing colorectal cancer. |  |  |  |  | 0 |
| 11212017 | 2017-11-21T15:31:57+00:00 |  | 000082942-01 | Maureen | Hanly | SEVEN HILLS OB-GYN ASSOC | 921654 | KAREN S | COLUMBUS | 1437223385 | GENOMIC HEALTH INC | 901527 | 1215003603 | GENOMIC HEALTH INC | 1215003603 | Genetic Testing | OP GEN | Pre-Service | PRE |  | GENOMIC HEALTH INC | 11262017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 11202017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122132 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 11262017 | 81519 | ONCOLOGY BREAST MRNA | CPT | 1 | 1 | Approved | 42 | CPT | C4 | Oncotype DX® Breast was developed for patients with the following findings:, estrogen-receptor positive  node-negative carcinoma of the breast, estrogen-receptor positive micrometastases of carcinoma of the breast  and, estrogen-receptor positive breast carcinoma with 1-3 positive nodes |  |  |  |  | 0 |
| 11152017 | 2017-11-15T16:19:40+00:00 |  | 000077281-01 | Harry | Clark Jr | TRISTATE CENTERS FOR SIG | 921617 | MARK A | CEPELA | 1730181009 | TRISTATE CENTERS FOR SIGHT SURG CTR | 926154 | 1871698894 | TRISTATE CENTERS FOR SIGHT SURG CTR | 1871698894 | Out of Network Services | OONS | Pre-Service | PRE |  | TRISTATE CENTERS FOR SIGHT SURG CTR | 11262017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 12112017 | 02112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116177 | H02423 | Myogenic ptosis of bilateral eyelids | ICD10 | 11262017 | 67904 | REP OF BLEPHAROPTOSIS EXT APPROACH | CPT | 1 | 1 | Approved | 63 | CPT | C4 |  |  |  |  |  | 0 |
| 11202017 | 2017-11-20T15:55:40+00:00 |  | 000103338-01 | FRANCES | GEORGE | SRINIVAS KOLLI MD INC | 937037 | SRINIVAS | KOLLI | 1619948585 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 11262017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 11272017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120135 | Z1211 | Encounter for screening for malignant neoplasm of colon | ICD10 | 11262017 | 45378 | COLONOSCOPY PAST SPL FLEX-DIAG. | CPT | 1 | 1 | Approved | 35 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T13:28:24+00:00 |  | 000025480-01 | BEN | GEARY | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11172017 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117108 | C07 | Malignant neoplasm of parotid gland | ICD10 | 11262017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11212017 | 2017-11-21T15:30:14+00:00 |  | 000073923-01 | Sharon | Cline | MOUNT CARMEL HLTH SYS | 931930 | SHAHID M | NIMJEE | 1912171620 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11262017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01052018 | 04052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171122131 | Q282 | Arteriovenous malformation of cerebral vessels | ICD10 | 11262017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T09:05:13+00:00 |  | 000092303-01 | Thomas | Springer II | ELECTROPHYSIOLOGY | 908604 | RALPH S | AUGOSTINI | 1104821552 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11292017 | 12292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116182 | R55 | Syncope and collapse | ICD10 | 11262017 | 93280, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T12:33:10+00:00 |  | 000091688-01 | Lora | Wilson | ALLIANCE PHYSICIANS INC | 902333 | ALEJANDRO R | CALVO | 1457341760 | MYRIAD GENETIC LABORATORIES | 903741 | 1669484473 | MYRIAD GENETIC LABORATORIES | 1669484473 | Genetic Testing | OP GEN | Post-Service | POST |  | MYRIAD GENETIC LABORATORIES | 11262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11102017 | 01102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X171116190 | Z803, Z85118, Z853 | Personal history of malignant neoplasm of breast | ICD10 | 11262017 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 11162017 | 2017-11-16T14:26:18+00:00 |  | 000095418-01 | Larry | Jones | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 11202017 | 03202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117109 | H9203, J0390, J392 | Other diseases of pharynx | ICD10 | 11262017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121 | HCPCS | HC | Auth X171109043 is authorized for Dr. Evan Tobin |  |  |  |  | 0 |
| 11162017 | 2017-11-16T17:53:54+00:00 |  | 000056854-01 | ERWIN | PEAKS | MOUNT CARMEL HLTH SYS | 944092 | BRITTON D | RINK | 1811034242 | AMBRY GENETICS CORPORATION | 929192 | 1861568784 | AMBRY GENETICS CORPORATION | 1861568784 | Genetic Testing | OP GEN | Post-Service | POST |  | AMBRY GENETICS CORPORATION | 11262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10312017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X171117113 | C50929 | Malignant neoplasm of unsp site of unspecified male breast | ICD10 | 11262017 | 81211, 81213 | BRCA1&2 UNCOM DUP/DEL VAR | CPT | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T14:13:40+00:00 |  | 000015420-01 | BARBARA | WRIGHT | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11272017 | 02272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117145 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 11262017 | 92507, 92610, 92612, 92526, 92597, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T14:32:12+00:00 |  | 000087540-01 | Lucille | Mitchell | ELECTROPHYSIOLOGY | 908604 | RALPH S | AUGOSTINI | 1104821552 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11262017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12172017 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120107 | I499, Z952 | Presence of prosthetic heart valve | ICD10 | 11262017 | 93293, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 2, 2 | 2, 2 | Approved, Approved | 63, 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 11152017 | 2017-11-15T12:08:54+00:00 |  | 000109272-01 | Rita | Timlin | OSU INTERNAL MED LLC | 937566 |  | OSU INTERNAL MEDICINE LLC | 1740231448 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12132017 | 01132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171116111 | H905, H908, R42 | Dizziness and giddiness | ICD10 | 11262017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T11:23:32+00:00 |  | 000089587-01 | Lois | Masters | OHIOHEALTH PHYS GRP | 918222 | BENJAMIN C | TAYLOR | 1659595866 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 11262017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 11292017 | 12292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171117134 | S5292XA, S8291XA | Unsp fracture of right lower leg, init for clos fx | ICD10 | 11262017 | 99214, 73610, 73090 | X-RAY FOREARM,A-P AND LATERAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 11172017 | 2017-11-17T15:04:28+00:00 |  | 000069585-01 | PAUL | VITTITOW | ELECTROPHYSIOLOGY | 908604 | RALPH S | AUGOSTINI | 1104821552 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 11262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 12172017 | 01172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171120124 | I480, R002, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 11262017 | 93293, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
