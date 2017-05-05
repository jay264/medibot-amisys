Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-03
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-05-03
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
| 03132017 | 2017-03-13T14:05:10+00:00 | Q17928660 | 000060552-01 | LEONARD | STEVENS | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03132017 | 04122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170315012 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 05032017 | 74176, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T15:05:17+00:00 |  | 000099600-01 | Michael | Rieser | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05032017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 04192017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417155 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 05032017 | G0463, 92507, 92610, 92612, 92526, 92597, 31575, 31579 | LARYNGOSCOPY, FLEX SCOPE W STROBOSCOPY | CPT | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04282017 | 2017-04-28T12:09:16+00:00 |  | 000037946-01 | PETER | PALM | OSU OTOLARYNGOLOGISTS LL | 940957 | STEPHANIE | WIGTON | 1477968089 | ATOS MEDICAL INC | 938182 | 1962452755 | ATOS MEDICAL INC | 1962452755 | DME | DME | Pre-Service | PRE |  | ATOS MEDICAL INC | 05032017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 05012017 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170428118 | R491 | Aphonia | ICD10 | 05032017 | A7507, A7520 | TRACHEOSTOMY/LARYNGECTOMY TUBE, NON-CUFFED, POLYVINYLCHLORIDE (PVC), SIL | HCPCS | 24, 12 | 24, 12 | Approved, Approved | 366, 366 | HCPCS | HC |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T14:32:03+00:00 |  | 000108286-01 | MILDRED | HAVEN | OSU INTERNAL MED LLC | 930396 | FARRUKH T | AWAN | 1942424528 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 05032017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 05022017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502004 | C8580 | Oth types of non-Hodgkin lymphoma, unspecified site | ICD10 | 05032017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85610, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 82565, 84520, 82374, 82435, 84295, 84132, 80053 | COMPREHEN METABOLIC PANEL | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T14:35:36+00:00 |  | 000105971-01 | Forrest | Arnold | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05032017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 04152017 | 07152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502005 | S72142A | Displaced intertrochanteric fracture of left femur, init | ICD10 | 05032017 | 99214, 73521 | X-RAY EXAM HIPS BI 2 VIEWS | CPT | 3, 3 | 3, 3 | Approved, Approved | 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04282017 | 2017-04-28T17:37:25+00:00 | Q18293682 | 000060552-01 | LEONARD | STEVENS | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05012017 | 07302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502021 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 05032017 | J9305, J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T09:23:40+00:00 | Q18316912 | 000033119-01 | DARLENE | QUEEN | MOUNT CARMEL WEST PHYS | 936783 | VINCENT L | GUINN | 1528009016 | EPI | 937837 | 1912006719 | EPI | 1912006719 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | EPI | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05112017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502057 | R072 | Precordial pain | ICD10 | 05032017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06242016 | 2016-06-24T10:30:48+00:00 | Q16057588 | 000055022-01 | RICHARD | DUNCAN | HAYDEN RUN INTERNAL MED | 901625 | SHAWN C | BAILEY | 1295788685 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06232017 | 07232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503002 | R1032 | Left lower quadrant pain | ICD10 | 05032017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T10:43:54+00:00 | Q18261760 | 000086440-01 | Carlie | Domansky | ALLIANCE PHYSICIANS INC | 917251 | MANISHA M | NANDA | 1164634937 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 05032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04232017 | 05232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503023 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 05032017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T06:55:07+00:00 | Q18272610 | 000050136-01 | BETTY | HOPKINS | PICKAWAY HEALTH SERVICES | 937270 | ARNOLD N | PALMER | 1740274539 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04252017 | 05252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503031 | Z8249 | Family hx of ischem heart dis and oth dis of the circ sys | ICD10 | 05032017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T07:14:25+00:00 | Q18279576 | 000110243-01 | Judith | Zimmerman | MARIETTA HLTH CARE PHYS | 923647 | MARCUS L | NICHOLS | 1750350559 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 05032017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 06032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503050 | R079 | Chest pain, unspecified | ICD10 | 05032017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T12:39:38+00:00 | Q18284281 | 000030964-01 | JANICE | PORTER | MOUNT CARMEL HLTH PRVDRS | 906494 | TIMOTHY P | NUSS | 1982649232 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05032017 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503067 | R0609 | Other forms of dyspnea | ICD10 | 05032017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T08:47:15+00:00 | Q18301500 | 000015724-01 | DELPHEAN | HIGGINS | EKG INC | 935423 | TODD N | CARDWELL | 1891794913 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503072 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05032017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05012017 | 2017-05-01T13:46:22+00:00 | Q18321678 | 000090273-01 | James | Caldwell | COPC CENTRAL OHIO PRIMAR | 934884 | ROBERT W | STEPHENSON | 1588664650 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05012017 | 05312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503083 | M5416 | Radiculopathy, lumbar region | ICD10 | 05032017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T05:38:01+00:00 | Q18321923 | 000116991-01 | Eric | Nine | MUSKINGUM VALLEY HLTH CT | 921923 | DAVID L | KLEIN | 1881765253 | COSHOCTON COUNTY MEM HSP | 949437 | 0 | COSHOCTON COUNTY MEMORIAL HOSPITAL A | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COSHOCTON COUNTY MEMORIAL HOSPITAL A | 05032017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05052017 | 06042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503087 | M25561 | Pain in right knee | ICD10 | 05032017 | 73721 | MRI JOINT LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T06:20:12+00:00 | Q18321941 | 000042589-01 | CHARLES | MYERS | COPC CENTRAL OHIO PRIMAR | 935868 | JACQUELINE M | AMICO | 1487640264 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 06012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503090 | N200 | Calculus of kidney | ICD10 | 05032017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T06:35:17+00:00 | Q18321967 | 000099250-01 | James | Bertram | MARIETTA HLTH CARE PHYS | 924318 | DONNA C | DAVIS | 1902812910 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 05032017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503092 | M545 | Low back pain | ICD10 | 05032017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T09:00:09+00:00 | Q18324342 | 000105278-01 | Danny | Roark | PULMONARY MED OF DAYTON | 907975 | MEDIAN | ALI | 1649253113 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 06012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503126 | Z720 | Tobacco use | ICD10 | 05032017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T09:13:44+00:00 | Q18324557 | 000067036-01 | PRUDENZA | PERSICHETTI | PHYSICAL MED ASSOCS INC | 906465 | VICTOR BRANDON | THOMPSON | 1154382943 | ORTHOPEDIC ONE INC | 900607 | 1548289697 | ORTHOPEDIC ONE INC | 1548289697 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ORTHOPEDIC ONE INC | 05032017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 05042017 | 06032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503130 | M50322 | OTHER CERVICAL DISC DEGENERATION AT C5-C6 LEVEL | ICD10 | 05032017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T09:28:45+00:00 | Q18325290 | 000085615-01 | Beverly | Fisher | SPRINGFIELD UROLOGY LLC | 935927 | VLADA W | MARDOVIN | 1437224508 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY MEMORIAL HOSPITAL - CAH | 05032017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05022017 | 06012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503136 | R319 | Hematuria, unspecified | ICD10 | 05032017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T09:56:10+00:00 | Q18325833 | 000085973-01 | Charles | Griffith | RANGANATHAN, VADAK H | 905298 | VADAK H | RANGANATHAN | 1992773212 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05302017 | 06292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503143 | M6281 | Muscle weakness (generalized) | ICD10 | 05032017 | 72131, 72129 | CAT SCAN THORACIC SPINE C CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T11:52:03+00:00 | Q18329077 | 000061763-01 | KATHRYN | CAMPBELL | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05032017 | 06022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503174 | M5431 | Sciatica, right side | ICD10 | 05032017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T11:54:25+00:00 | Q18329123 | 000009387-01 | MAXINE | STELZER | WHITEHALL MED CTR INC | 936278 | ELMER F | DILTZ JR | 1104877042 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 05032017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 05082017 | 06072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503176 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05032017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05022017 | 2017-05-02T13:19:37+00:00 | Q18331059 | 000114729-01 | Mark | Higgins Sr | OH ONCOLOGY & HEMATOLOGY | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 05032017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05092017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503194 | C8590 | Non-Hodgkin lymphoma, unspecified, unspecified site | ICD10 | 05032017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05032017 | 2017-05-03T11:25:22+00:00 |  | 000087707-01 | Joan | Carr | ORTHOPEDIC ONE INC | 919027 | VIVEK | SAHAI | 1609076934 | ORTHOPEDIC ONE INC | 919027 | 1548289697 | VIVEK SAHAI | 1609076934 | Out of Network Services | OONS | Pre-Service | PRE | VIVEK | SAHAI | 05032017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05042017 | 07042017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503285 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 05032017 | 99213, 73540 | PELVIS & HIPS, INFANT/CHILD,MIN 2 V | CPT | 2, 2 | 2, 2 | Approved, Approved | 62, 62 | CPT | C4 |  |  |  |  |  | 0 |
| 04242017 | 2017-04-24T15:05:06+00:00 |  | 000060278-01 | ELLA | HATFIELD | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | RIVERSIDE RAD ASSOC | 907461 | 1093718496 | ERIC DOLEN | 1497734628 | Out of Network Services | OONS | Pre-Service | PRE | ERIC | DOLEN | 05032017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 05032017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170425116 | T148 | Other injury of unspecified body region | ICD10 | 05032017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., T.O.- Dr. Robert Durbin. Service is available in network with in network physicians. Please deny. Appeal was denied on 5/3/2017@ 14:48:10 EST., Per Director of Appeals/Grievances. This case was withdrawn by the member and the appeal will stay withdrawn. |  |  |  |  | 0 |
| 04272017 | 2017-04-27T12:59:17+00:00 |  | 000055971-01 | ROGER | GEORGE | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | JOINT ACTIVE SYSTEMS INC | 920700 | 1639172331 | JOINT ACTIVE SYSTEMS INC | 1639172331 | DME | DME | Pre-Service | PRE |  | JOINT ACTIVE SYSTEMS INC | 05032017 | Denied | TRINITY HEALTH | Fax | Not Medically Necessary | Outpatient | 05032017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170428133 | M25561, M6281, R2689 | Other abnormalities of gait and mobility | ICD10 | 05032017 | E1811 | BI-DIRECTIONAL STATIC PROGRESSIVE STRETCH KNEE DEVICE WITH RANGE OF MOTI | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05022017 | 2017-05-02T07:42:00+00:00 |  | 000110200-01 | CECIL | JORDAN | FIRST SETTLEMENT ORTHOS | 924504 | GREGORY B | KRIVCHENIA II | 1467410258 | FIRST SETTLEMENT ORTHOS | 924504 | 1215992458 | GREGORY B KRIVCHENIA II | 1467410258 | DME | DME | Pre-Service | PRE | GREGORY B | KRIVCHENIA II | 05032017 | Denied | MediGold Southeast OH Essential Care | Fax | Administrative Denial | Outpatient | 05032017 | 05042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170502008 | S82241D | Displ spiral fx shaft of r tibia, 7thD | ICD10 | 05032017 | L4361 | PNEUMA/VAC WALK BOOT PRE OTS | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC |  |  |  |  |  | 0 |
