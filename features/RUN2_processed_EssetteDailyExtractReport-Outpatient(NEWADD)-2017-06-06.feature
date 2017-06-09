Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-06
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-06
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
| 03022017 | 2017-03-02T09:29:22+00:00 | Q17876339 | 000062030-01 | KENNETH | SWINT | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 03022017 | 04012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170302136 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06062017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T17:43:55+00:00 |  | 000049849-01 | JUDITH | TIMSON | CLEVELAND CLINIC FNDN | 911668 | MARAN | THAMILARASAN | 1851492755 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 06062017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06092017 | 09092017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170329087 | I10 | Essential (primary) hypertension | ICD10 | 06062017 | 99214, 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved., Auth updated to dates of 6/9/17 to 9/9/17.  Member has appointment scheduled on 8/4/17., Member notified of extended to 9/9/17 and notified of additional letter being received in the mail. |  |  |  |  | 0 |
| 04182017 | 2017-04-18T15:19:51+00:00 |  | 000093581-01 | Frances | Southers | ADVANCED CARE SOLUTIONS INC | 927080 |  | ADVANCED CARE SOLUTIONS INC | 1164410635 | ADVANCED CARE SOLUTIONS INC | 927080 | 1164410635 | ADVANCED CARE SOLUTIONS INC | 1164410635 | DME | DME | Pre-Service | PRE |  | ADVANCED CARE SOLUTIONS INC | 06062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04192017 | 07192017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170418128 | C7802, J910 | Malignant pleural effusion | ICD10 | 06062017 | A7048 | VACUUM DRAIN BOTTLE/TUBE KIT | HCPCS | 90 | 90 | Approved | 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 05182017 | 2017-05-18T09:03:49+00:00 |  | 000040088-01 | MARGARET | VANHORN | OSU INTERNAL MED LLC | 908858 | ALISON R | WALKER | 1043224819 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05252017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170518164 | D649, D6949 | Other primary thrombocytopenia | ICD10 | 06062017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85730, 85610, 84443, 85652, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 83735, 82310, 84100, 85049, G0364, 38221, 88184, 88262, 88305, 88342, 88307, 88313, 88237, 84165, 85045, 82668, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC | RECEIVED PHONE CALL FROM TAMMY C AT OSU  REQUESTED BM BX BE ADDED TO REQUEST  CPT CODES GIVEN BY TAMMY  READ BACK FOR CONFIRMATION |  |  |  |  | 0 |
| 05262017 | 2017-05-26T12:20:10+00:00 |  | 000114300-01 | Sharen | Kensler | OSU INTERNAL MED LLC | 928059 | DAVID A | LIEBNER | 1174753537 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06062017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05302017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526229 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 06062017 | 84520, 81001, 83690, 82150, 84100, 83735, 82656, 82565, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 05302017 | 2017-05-30T08:58:05+00:00 |  | 000053825-01 | JAMES | JUNE | NEUROSCIENCE CENTER | 911553 | ARIANE | PARK | 1093977431 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 06062017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05302017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170530093 | G250 | Essential tremor | ICD10 | 06062017 | 99205, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T14:50:49+00:00 |  | 000087758-01 | Karen | Draggoo-Smith | SEVEN HILLS OB-GYN ASSOC | 921068 | DIANNE | RUNK | 1861566713 | GENOMIC HEALTH INC | 901527 | 1215003603 | GENOMIC HEALTH INC | 1215003603 | Genetic Testing | OP GEN | Pre-Service | PRE |  | GENOMIC HEALTH INC | 06062017 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06052017 | 09052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170605100 | C50411 | Malig neoplm of upper-outer quadrant of right female breast | ICD10 | 06062017 | 81519 | ONCOLOGY BREAST MRNA | CPT | 1 | 1 | Approved | 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T06:58:16+00:00 |  | 000083518-01 | Rose | Dorsey | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06062017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 06212017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606002 | C7A8, C7B8, R530 | Neoplastic (malignant) related fatigue | ICD10 | 06062017 | 82565, 84520, 82374, 82435, 84295, 84132, 85025, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82310, 82947, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T12:01:51+00:00 |  | 000117706-01 | David | Jackson | GRAYSON, DEBRA A | 936769 | DEBRA A | GRAYSON | 1356333785 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06062017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 06202017 | 12312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606023 | I6789, I69820, I69822, I69891 | Dysphagia following other cerebrovascular disease | ICD10 | 06062017 | 92523, 92607, 92608, 92609, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 11, 11, 11, 11, 11 | 11, 11, 11, 11, 11 | Approved, Approved, Approved, Approved, Approved | 195, 195, 195, 195, 195 | HCPCS | HC |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T17:22:39+00:00 | Q18560918 | 000076924-01 | Ronald | Resch | SOUTH DAYTON UROLOGY | 903443 | SAFWAT K | ZAKI | 1891876470 | ALLIANCE PHYSICIANS INC | 902713 | 1437125572 | ALLIANCE PHYSICIANS INC | 1437125572 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ALLIANCE PHYSICIANS INC | 06062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06292017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606065 | C61 | Malignant neoplasm of prostate | ICD10 | 06062017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 91 | HCPCS | HC | J9217: 6 Leuprolide Acetate 45 mgs injection q 6 months x 1 cycle (1 treatment). Total billing units = 6 |  |  |  |  | 0 |
| 06022017 | 2017-06-02T12:04:12+00:00 | Q18564839 | 000042352-01 | STELLA | HERNANDEZ | OSU OTOLARYNGOLOGISTS LL | 912050 | MATTHEW | OLD | 1699891242 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606070 | C07 | Malignant neoplasm of parotid gland | ICD10 | 06062017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T13:27:57+00:00 | Q18565402 | 000032643-01 | RONALD | HOFFER | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 07022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606072 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 06062017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T22:22:51+00:00 | Q18566224 | 000078247-01 | Judy | Cox | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 06062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05252017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606073 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 06062017 | J9045, J9267 | PACLITAXEL INJECTION | HCPCS | 1, 2340 | 1, 2340 | Approved, Approved | 91, 91 | HCPCS | HC | J9045: 72 Carboplatin AUC 2 180 mg IV Days 1  8  15 every 28 days x 6 cycles ( 18 treatments ). Total billing units = 72; J9267: 2340 Paclitaxel 130 mg IV Days 1  8  15 every 28 days x 6 cycles ( 18 treatments ). Total billing units = 2340 |  |  |  |  | 0 |
| 06022017 | 2017-06-02T15:16:18+00:00 | Q18568246 | 000090754-01 | Tan | Pham | ALLIANCE PHYSICIANS INC | 902323 | IRSHAD | HUSSAIN | 1073582201 | DAYTON CARDIOLOGY & VASC | 902532 | 1386775245 | DAYTON CARDIOLOGY & VASC CNSLT INC | 1386775245 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON CARDIOLOGY & VASC CNSLT INC | 06062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 07072017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606087 | R079 | Chest pain, unspecified | ICD10 | 06062017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T09:18:16+00:00 | Q18571449 | 000110989-01 | John | Doneff | THORNVILLE FAM MED CTR | 922011 | LARRY I | COWAN | 1023002011 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606102 | M4800 | Spinal stenosis, site unspecified | ICD10 | 06062017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T09:58:07+00:00 | Q18572599 | 000077152-01 | Mildred | Massie | ALLIANCE PHYSICIANS INC | 911165 | DANIEL J | DUNAWAY | 1669483152 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 06062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606117 | M25561 | Pain in right knee | ICD10 | 06062017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T10:28:08+00:00 | Q18573264 | 000069995-01 | Chlotene | Tubbs | ORTHO & NEURO CONSULTS I | 900853 | FRANCIS J | O DONNELL III | 1932183076 | PROSCAN IMAGING GAHANNA LLC | 903877 | 1912997032 | PROSCAN IMAGING GAHANNA LLC | 1912997032 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING GAHANNA LLC | 06062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606122 | R51 | Headache | ICD10 | 06062017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T10:31:33+00:00 | Q18573321 | 000070899-01 | William | Mccullough | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606123 | S93421A | Sprain of deltoid ligament of right ankle, initial encounter | ICD10 | 06062017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T10:32:03+00:00 | Q18573348 | 000113595-01 | WAYNE | HINERMAN | DOUGLAS R SCHUMACHER MD | 934760 | DOUGLAS R | SCHUMACHER | 1528044849 | PROSCAN IMAGING GAHANNA LLC | 903877 | 1912997032 | PROSCAN IMAGING GAHANNA LLC | 1912997032 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING GAHANNA LLC | 06062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606124 | M75101 | Unsp rotatr-cuff tear/ruptr of right shoulder, not trauma | ICD10 | 06062017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T10:35:58+00:00 | Q18573445 | 000116272-01 | Lowell | Tipton | CARDIOVASCULAR SPEC LLC | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 910293 | 1336375757 | CARDIOVASCULAR SPECIALISTS LLC | 1871728303 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CARDIOVASCULAR SPECIALISTS LLC | 06062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606126 | I25810 | Atherosclerosis of CABG w/o angina pectoris | ICD10 | 06062017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T11:57:45+00:00 | Q18575089 | 000073841-01 | William | Lewis | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06062017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06162017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606132 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06062017 | 75574, 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T12:47:39+00:00 | Q18575992 | 000103276-01 | Jane | Adams | EKG INC | 935142 | JOHN J | COSTA | 1043219041 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 06062017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606142 | R0602 | Shortness of breath | ICD10 | 06062017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T13:12:19+00:00 | Q18576382 | 000080085-01 | Joyce | North | MERCY HEALTH PHYSICIANS | 928406 | JASON J | PAQUIN | 1467653584 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 06062017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606144 | I729 | Aneurysm of unspecified site | ICD10 | 06062017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T11:36:58+00:00 | 18552238 | 000088856-01 | Sandra | Williams | GENESIS MEDICAL GRP LLC | 922146 | SHYAMAL | BASTOLA | 1306003033 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06062017 | Denied | MediGold Southeast OH Essential Care | Fax | Not Medically Necessary | Outpatient | 06062017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170602135 | C561 | Malignant neoplasm of right ovary | ICD10 | 06062017 | J9299 | INJECTION, NIVOLUMAB | HCPCS | 0 | 13 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06062017 | 2017-06-06T08:36:00+00:00 |  | 000096629-01 | Howard | Becker | COOPER, RUTH A | 921659 | RUTH A | COOPER | 1386640860 | NOVACARE | 938038 | 0 | NOVACARE | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | NOVACARE | 06062017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Services Available In-Network | Outpatient | 06062017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170606005 | M7661, M7671, S93491D | Sprain of other ligament of right ankle, subs encntr | ICD10 | 06062017 | 97161, 97164, 97016, 97110, 97112, 97530, 97140 | MANUAL THERAPY | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06052017 | 2017-06-05T16:55:42+00:00 |  | 000000501-01 | JOSEPH | RUGGLES | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Part B Therapy | OP THER | Pre-Service | PRE |  | SPRINGFIELD MASONIC COMMUNITY | 06062017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 06062017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170606013 | M6281 | Muscle weakness (generalized) | ICD10 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06022017 | 2017-06-02T17:04:35+00:00 |  | 000100568-01 | Ruby | Belcher | PICKAWAY HEALTH SERVICES | 932751 | ANUPREET | KAUR | 1417244393 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 06062017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 06062017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170606021 | M79606 | Pain in leg, unspecified | ICD10 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
