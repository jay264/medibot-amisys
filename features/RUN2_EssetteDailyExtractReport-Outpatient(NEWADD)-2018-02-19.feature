Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-19
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-19
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
| 02152018 | 2018-02-15T09:53:56+00:00 | Q20412604 | 000062452-01 | ANN | FORAKER | CEN OH RADIATION ONCOLOG | 936034 | CHUCK C | CHO | 1528069945 | LANCASTER RADIATION ONCO | 945022 | 1205837663 | HUALEI LI | 1730492539 | Cardiology (HH) | OP CARD | Pre-Service | PRE | HUALEI | LI | 02192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02152018 | 05162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219024 | C50811 | Malignant neoplasm of ovrlp sites of right female breast | ICD10 | 02192018 | G6013 | RADIATION TREATMENT DELIVERY | HCPCS | 25 | 25 | Approved | 91 | HCPCS | HC | G6013: 25: G6013 25 |  |  |  |  | 0 |
| 02152018 | 2018-02-15T15:10:35+00:00 | Q20419014 | 000102333-01 | JOAN | RICHARDS | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02152018 | 03172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219037 | N200 | Calculus of kidney | ICD10 | 02192018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02152018 | 2018-02-15T17:26:52+00:00 | Q20420677 | 000110770-01 | MARK | WEBER | UNKNOWN PROVIDER | 555555 |  | UNKNOWN PROVIDER | 0 | RADIOLOGY INC | 939988 | 1609865708 | DANIEL C SUBISAK | 1083883847 | Radiology (HH) | OP RAD | Pre-Service | PRE | DANIEL C | SUBISAK | 02192018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03082018 | 04072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219046 | H4911 | Fourth [trochlear] nerve palsy, right eye | ICD10 | 02192018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10242017 | 2017-10-24T12:57:15+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02012018 | 04022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171025152 | C9000, D720, Z9481 | Bone marrow transplant status | ICD10 | 02192018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 86334, 82310, 82247, 82565, 84520, 82435, 82040, 84075, 84155, 84295, 84450, 84132, 82374, 84460, 82310, 83615, 83883, 82784, 84165, 84155, 88262, G0364, 88305, 38221, 88313, 88237, 88262, 88271, 88275 | CYTOGENETICS, 100-300 | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61 | CPT | C4 | Authorization changed to expedited in error in January 2018.  Updated authorization to read as standard  as we only needed to change the date of service. Auth Priority Change Assessment added in error. |  |  |  |  | 0 |
| 01192018 | 2018-01-19T09:23:37+00:00 |  | 000105867-01 | SUSAN | KRAMP | COLUMBUS VASCULAR VEIN & | 910550 | DAVID A | THOMPSON | 1760407514 | COLUMBUS VASCULAR VEIN & | 910550 | 1275930927 | DAVID A THOMPSON | 1760407514 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | DAVID A | THOMPSON | 02192018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02262018 | 03282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119109 | I871, I87332 | Chronic venous htn w ulcer and inflammation of l low extrem | ICD10 | 02192018 | 36478 | ENDOVENOUS LASER, 1ST VEIN | CPT | 1 | 1 | Approved | 31 | CPT | C4 | Call to providers office for additional clinical documentation. S/w Kyerra  614-917-0696.  Duplex scan was performed this morning and she will fax those results to us as soon as it become available., Spoke to Kyerra Johnson she is going to fax over the notes she was waiting for the scan .  I told her to go ahead and fax the notes so we could get the process started and when she received the scan she could fax it later today or tomorrow., CORRECTED CPT CODE PROVIDED, Received voice notification from Kyerra requesting we extend auth.  Changing dates on auth to be 2/26 - 3/28. |  |  |  |  | 0 |
| 02142018 | 2018-02-14T13:11:00+00:00 | Q20406073 | 000103457-01 | Gerald | McCain | ADENA MEDICAL GROUP LLC | 917273 | SHANE M | MATHENY | 1831301548 | ZOLL LIFECOR CORPORATION | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 02192018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02262018 | 04272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219020 | I420 | Dilated cardiomyopathy | ICD10 | 02192018 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 02162018 | 2018-02-16T10:41:02+00:00 | Q20424503 | 000077419-01 | Cheryl | Stickdorn | CARDIOVASC ASSESSMENT AN | 935902 | SHANTANU | SINHA | 1124029426 | CARDIOVASCULAR SPEC LLC | 952218 | 1871728303 | SHAUNA J GLENN | 1700276144 | Radiology (HH) | OP RAD | Pre-Service | PRE | SHAUNA J | GLENN | 02192018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02192018 | 03212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219080 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02192018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02162018 | 2018-02-16T11:33:46+00:00 | Q20425421 | 000088051-01 | William | Hickman | MERCY HEALTH PHYSICIANS | 922226 | MUHAMMAD T | GILL | 1033323381 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 02192018 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02202018 | 04212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180219088 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02192018 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
