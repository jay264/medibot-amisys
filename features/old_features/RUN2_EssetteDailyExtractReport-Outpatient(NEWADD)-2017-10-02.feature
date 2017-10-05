Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-02
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-02
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
| 09272017 | 2017-09-27T10:38:00+00:00 | Q19407844 | 000053127-01 | CHARLES | GRUMMAN | MOUNT CARMEL HLTH PRVDRS | 933528 | JOSEPH | JOZIC | 1700863149 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10012017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 09042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170928129 | I208 | Other forms of angina pectoris | ICD10 | 10012017 | 93459 | L HRT ART/GRFT ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T10:42:00+00:00 | Q19375649 | 000103357-01 | Bertha | Hays | KNOX COMMUNITY HSP PHYS | 905528 | HUSAIN A | RASHEED | 1437144029 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 10022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09282017 | 03272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170926054 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 10022017 | J9310 | RITUXIMAB, 100 MG | HCPCS | 72 | 72 | Approved | 181 | HCPCS | HC | J9310: 72: INJECTION  RITUXIMAB  100 MG  Dispensed as: 550.00 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 09212017 | 2017-09-21T09:36:02+00:00 | 19363686 | 000080700-01 | Clarence | McKenney | ONCOLOGY HEMATOLOGY CARE | 920870 | KURT P | LEUENBERGER | 1194765800 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 10022017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09222017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002009 | Z85118 | Personal history of malignant neoplasm of bronchus and lung | ICD10 | 10022017 | 74176, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T16:03:54+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | OSU OTOLARYNGOLOGISTS LL | 933405 | OLIVER F | ADUNKA | 1316975444 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10032017 | 01032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925151 | C44229 | Squamous cell carcinoma skin/ left ear and extrn auric canal | ICD10 | 10022017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T08:29:29+00:00 |  | 000046362-01 | NORMAN | COLLIER | OSU INTERNAL MED LLC | 914553 | SINDHU B | MUKKU | 1073799045 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09222017 | 01222018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927076 | J449, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 10022017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 123, 123, 123, 123, 123, 123 | HCPCS | HC | PC to Kelly at provider office  member appointment was at noon  he did show and decided to keep appointment even though auth had not been obtained. Kelly relays that she has been out of the office and things weren't handled correctly in her absence., I asked if she had a different number for member  she had 614-824-8209  but the voice mail is not set up  she had tried to call member and found this as well and told him when he was in the office today., EM TO D. ADKINS  R/T EXPEDITED LETTER |  |  |  |  | 0 |
| 03312017 | 2017-03-31T09:03:48+00:00 |  | 000067831-01 | THOMAS | SCHWARTZ | OSU UROLOGY LLC | 943281 | FARA M | BELLOWS | 1083935118 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03282017 | 10312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170403093 | G8250 | Quadriplegia, unspecified | ICD10 | 10022017 | 97530, 97110, 97112, 97113, 97116, 97140, 97542, 97750, 97760, 97535, 97110, 97530, 97112 | PT NEUROMUSCULAR REEDUCATION, | CPT | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | 59, 59, 59, 59, 59, 59, 59, 59, 59, 29, 29, 29, 29 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 218, 218, 218, 218, 218, 218, 218, 218, 218, 218, 218, 218, 218 | CPT | C4 | RECEIVED PHONE CALL 7/11/17 @ 09:44:23 FROM KIM PREECE RN W/OSU REHAB   REQUESTING DATE EXTENSION OF AUTH  MEMBER HAS USED 29/59 PT VISITS  AND 18/29 OT VISITS.  THERE IS NO OTHER CHANGE REQUESTED  JUST EXTENSION FOR MEMBER TO RECEIVE ALREADY AUTHORIZED VISITS.  AUTH EXTENDED TO 9/28/17., Provider requested an extended date of 1031207 by Kimberly Preece this was done for the therapy., Received call from Kim stating the auth was extended to 10/31 but they did not send a new fax showing updated dates.  Fax her a new approval. |  |  |  |  | 0 |
| 09202017 | 2017-09-20T14:57:18+00:00 |  | 000072413-01 | George | Kelly | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10022017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09202017 | 10202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921275 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 10022017 | 92507, 92610, 92612, 92526, 92526, 92597, 31579, 31575, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31, 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 09252017 | 2017-09-25T17:33:00+00:00 | Q19392615 | 000089826-01 | Steven | Peitsmeyer | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | SCIOTO VALLEY UROLOGY IN | 938633 | 1346254976 | SCIOTO VALLEY UROLOGY INC | 1346254976 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SCIOTO VALLEY UROLOGY INC | 10022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09252017 | 03242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927107 | C61 | Malignant neoplasm of prostate | ICD10 | 10022017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 09292017 | 2017-09-29T11:08:49+00:00 | Q19430416 | 000003558-01 | JOAN | SHORT | COPC CENTRAL OHIO PRIMAR | 937417 | JOHN T | RYAN | 1720037880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09292017 | 10292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002043 | R911 | Solitary pulmonary nodule | ICD10 | 10022017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T09:55:43+00:00 |  | 000043343-01 | JACK | DODRILL | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10052017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170929111 | D0439 | Carcinoma in situ of skin of other parts of face | ICD10 | 10022017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 09282017 | 2017-09-28T11:22:49+00:00 | Q19419757 | 000082943-01 | Jeffrey | Ledsome | SELBY GENERAL HOSPITAL | 921896 | KELLI A | CAWLEY | 1023113727 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 10022017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10122017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002049 | D3A090 | Benign carcinoid tumor of the bronchus and lung | ICD10 | 10022017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09272017 | 2017-09-27T13:40:33+00:00 | Q19411396 | 000065114-01 | ROBERT | GRAY JR | ALLIANCE PHYSICIANS INC | 906600 | MALEK M | SAFA | 1427016914 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 10022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10052017 | 04032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002018 | C3492 | Malignant neoplasm of unsp part of left bronchus or lung | ICD10 | 10022017 | J9267, J2469, J9045 | CARBOPLATIN, 50 MG | HCPCS | 1600, 40, 72 | 1600, 40, 72 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9267: 1600: Paclitaxel 200 mg/m2  IV  day 1  every 21 days  4 cycles: J9045: 72: Carboplatin AUC 6 (max 900 mg)  IV  day 1  every 21 days  4 cycles: J2469: 40: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  4 cycle(s) |  |  |  |  | 0 |
| 09272017 | 2017-09-27T09:00:12+00:00 | Q19405686 | 000073617-01 | James | Jacobs | MOUNT CARMEL HLTH PRVDRS | 934782 | DAVID G | BICHSEL | 1669474839 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 10022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10092017 | 12082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002098 | I200 | Unstable angina | ICD10 | 10022017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T12:06:00+00:00 | Q19312697 | 000111193-01 | Jeffrey | Debord | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10022017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 09142017 | 10142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922017 | M25551 | Pain in right hip | ICD10 | 10022017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T06:43:28+00:00 | Q19426250 | 000104637-01 | John | Willis | COPC CENTRAL OHIO PRIMAR | 932891 | CHRISTINA M | JEPSON | 1740574128 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 10022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10022017 | 11012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002092 | R634 | Abnormal weight loss | ICD10 | 10022017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09252017 | 2017-09-25T14:30:00+00:00 | Q19390147 | 000084864-01 | Douglas | Glasmeier | KNOX COMMUNITY HSP PHYS | 912126 | BARRY S | GEORGE | 1386605319 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09292017 | 11282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927091 | Z01818 | Encounter for other preprocedural examination | ICD10 | 10022017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T19:14:00+00:00 | Q19338963 | 000115262-01 | Robert | Morgan | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 10012017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921044 | T82111A | Breakdown of cardiac pulse generator (battery), init | ICD10 | 10012017 | 33229, 33225, C1900, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 09292017 | 2017-09-29T09:43:32+00:00 | Q19428459 | 000084389-01 | Joan | Kurr | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 10022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09292017 | 10292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002019 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 10022017 | 72141, 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09222017 | 2017-09-22T13:53:27+00:00 |  | 000073580-01 | Ruth | Clager | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10022017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09262017 | 10262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170925135 | C4922 | Malig neoplm of conn and soft tiss of left low limb, inc hip | ICD10 | 10022017 | 71020, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 09182017 | 2017-09-18T11:49:00+00:00 | Q19332989 | 000064188-01 | FRANCIS | BENSON | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09182017 | 10182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170927120 | M4806 | Spinal stenosis, lumbar region | ICD10 | 10022017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09252017 | 2017-09-25T16:16:35+00:00 |  | 000022526-01 | Betty | Kessler | CEN OHIO NEURO OPHTHALMO | 936377 | AVROM D | EPSTEIN | 1831118363 | CEN OHIO NEURO OPHTHALMO | 917628 | 1396822334 | CENTRAL OHIO NEURO OPHTHALMOLOGY | 1396822334 | Out of Network Services | OONS | Pre-Service | PRE |  | CENTRAL OHIO NEURO OPHTHALMOLOGY | 10022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10242017 | 11242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170926128 | H402232, H5310, H353231 | EXUDATIVE AGE-REL MCLR DEGN, BI, WITH ACTV CHRDL NEOVAS | ICD10 | 10022017 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T15:48:18+00:00 |  | 000032984-01 | LAWRENCE | FATHBRUCKNER | OSU OTOLARYNGOLOGISTS LL | 950987 | LESLIE R | KIM | 1669775631 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09262017 | 12262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170921047 | C44229 | Squamous cell carcinoma skin/ left ear and extrn auric canal | ICD10 | 10022017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08232017 | 2017-08-23T13:21:27+00:00 |  | 000107652-01 | JUDITH | ROSE | OSU INTERNAL MED LLC | 948351 | CHRISTIAN T | EARL | 1316204753 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10022017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03312017 | 11302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824142 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 10022017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 245, 245, 245, 245, 245, 245, 245, 245, 245, 245, 245 | HCPCS | HC |  |  |  |  |  | 0 |
| 09212017 | 2017-09-21T14:27:41+00:00 |  | 000065626-01 | FRANK | HOLTER | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10032017 |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170922133 | C01, C109, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 10022017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | HCPCS | HC |  |  |  |  |  | 0 |
| 09202017 | 2017-09-20T08:00:00+00:00 |  | 000071036-01 | Dwight | Johnson | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10022017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09272017 | 11272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170920011 | Z952 | Presence of prosthetic heart valve | ICD10 | 10022017 | 93306, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 09282017 | 2017-09-28T16:22:33+00:00 |  | 000095868-01 | Thomas | Branson | CEI PHYSICIANS PSC INC | 920975 | JEFFREY A | NERAD | 1023019262 | CINCINNATI EYE INSTITUTE | 905184 | 1790772804 | CINCINNATI EYE INSTITUTE | 1790772804 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CINCINNATI EYE INSTITUTE | 10022017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10202017 | 11202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170929050 | H02403 | Unspecified ptosis of bilateral eyelids | ICD10 | 10022017 | 67904, 67904 | REP OF BLEPHAROPTOSIS EXT APPROACH | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 08182017 | 2017-08-18T18:14:49+00:00 |  | 000101769-01 | Ronald | Cobb | MERCY HEALTH PHYSICIANS | 932656 | PRADEEP R | GUJJA | 1649465600 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 10022017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 10022017 | 10032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170820005 | R55 | Syncope and collapse | ICD10 | 10022017 | A4465 | NON-ELASTIC BINDER FOR EXTREMITY | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Contacted Brie at providers office to get clinical documentation for this request., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08232017 | 2017-08-23T08:21:59+00:00 |  | 000051159-01 | JOE | MOORE | OSU HLTH SYSTEM NEUROSUR | 908648 | PUNIT | AGRAWAL | 1578787990 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 10022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 11142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170823136 | G20 | Parkinson's disease | ICD10 | 10022017 | 95978, 95979, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 10022017 | 2017-10-02T13:52:23+00:00 | Q19438853 | 000044466-01 | BETTY | MOORE | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 10022017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10032017 | 04012018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171002137 | C801 | Malignant (primary) neoplasm, unspecified | ICD10 | 10022017 | J9045, J9201, J2505, J2405, J2469, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 3, 6, 8, 12, 3, 54 | 3, 6, 8, 12, 3, 54 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
