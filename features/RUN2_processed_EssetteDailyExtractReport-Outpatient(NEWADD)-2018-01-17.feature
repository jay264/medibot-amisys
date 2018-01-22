Feature: RUN 2 Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-17
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: RUN2_EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-17
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
| 01162018 | 2018-01-16T15:02:17+00:00 |  | 000031488-01 | LEONARD | PRESTON | OSU UROLOGY LLC | 939464 | KAMAL S | POHAR | 1952350985 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01232018 | 02232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180116112 | Z8551 | Personal history of malignant neoplasm of bladder | ICD10 | 01172018 | 93000, 71020, 94760, 99201, 99202, 99203, 99204, 99205, 85730, 85610, 83036, 85025, 36415 | ROUTINE VENIPUNCTURE FOR SPEC COL. | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| Approved | X180117018 | R296 | Repeated falls | ICD10 | 01172018 | 72148, 70450, 73718 | MRI LOWER EXTREMITY W/O DYE | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01162018 | 2018-01-16T10:51:50+00:00 | Q20180081 | 000108665-01 | Bonnie | Stanforth | BERGER HEALTH PARTNERS | 930680 | SHABANA J | DEWANI | 1306928817 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 01172018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01162018 | 07152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180117019 | C8339 | Diffuse large B-cell lymphoma, extrnod and solid organ sites | ICD10 | 01172018 | J9310, J2505, J1453, J9070, J9000, J9370, J9260 | METHOTREXATE SODIUM, 50 MG | HCPCS | 42, 8, 900, 84, 60, 12, 2 | 42, 8, 900, 84, 60, 12, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC | J9310: 42: INJECTION  RITUXIMAB  100 MG  Dispensed as: 700.00 mg  1 treatment(s) each cycle  6 cycle(s): J9070: 84: CYCLOPHOSPHAMIDE  100 MG  Dispensed as: 1360.00 mg  1 treatment(s) each cycle  6 cycle(s): J9000: 60: INJECTION  DOXORUBICIN HYDROCHLORIDE  10 MG  Dispensed as: 91.00 mg  1 treatment(s) each cycle  6 cycle(s): J9370: 12: VINCRISTINE SULFATE  1 MG  Dispensed as: 2.00 mg  1 treatment(s) each cycle  6 cycle(s): J9260: 2: METHOTREXATE SODIUM  50 MG  Dispensed as: 12.00 mg  1 treatment(s) each cycle  2 cycle(s): J2505: 8: PegFilgrastim (Neulasta) 6 mg  SQ  day 2  every 21 days  8 cycles: J1453: 900: Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 12052017 | 2017-12-05T08:58:55+00:00 |  | 000081761-01 | James | Powers | RETINA CONSULTANTS | 929923 | ABRAHAM S | MITIAS | 1750328241 | RETINAL CONSULTANTS INC | 938742 | 0 | RETINAL CONSULTANTS INC | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | RETINAL CONSULTANTS INC | 01172018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01102018 | 06102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205059 | H353211, H353221 | EXDTVE AGE-REL MCLR DEGN, LEFT EYE, WITH ACTV CHRDL NEOVAS | ICD10 | 01172018 | 92012, 92014, 67028, J0178, 92134, 92235, 42250 | REPAIR OROANTRAL OR ORONASAL FISTULA, UP TO 1 CM | CPT | 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 152, 152, 152, 152, 152, 152, 152 | CPT | C4 |  |  |  |  |  | 0 |
| 01162018 | 2018-01-16T07:12:57+00:00 | Q20176577 | 000050285-01 | GWENDOLYN | SALYERS | MOUNT CARMEL HLTH PRVDRS | 936045 | PARESH J | TIMBADIA | 1508849100 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02082018 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180117097 | R911 | Solitary pulmonary nodule | ICD10 | 01172018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01152018 | 2018-01-15T11:39:03+00:00 | Q20170507 | 000042039-01 | ERNEST | LOWERY | ADENA MEDICAL GROUP LLC | 931862 | WILLIAM A | WILSON | 1619101086 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 01172018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01242018 | 02232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180117106 | Z8589 | Personal history of malignant neoplasm of organs and systems | ICD10 | 01172018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01162018 | 2018-01-16T13:53:49+00:00 |  | 000072741-01 | Mabel | Carsey | MOUNT CARMEL HLTH SYS | 900677 | DAVID A | SABOL | 1902890569 | CENTRAL OH ENDOSCOPY CENTER | 916292 | 1467768549 | CENTRAL OH ENDOSCOPY CENTER | 1467768549 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OH ENDOSCOPY CENTER | 01172018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01232018 | 02232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180116101 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01172018 | 45378, 45380, 45384, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 32, 32, 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T15:15:43+00:00 |  | 000100237-01 | JOYCE | PARKER | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01172018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01172018 | 04172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180117129 | C029 | Malignant neoplasm of tongue, unspecified | ICD10 | 01172018 | 92507, 92610, 92612, 92526, 92597, 31575, 31579 | LARYNGOSCOPY, FLEX SCOPE W STROBOSCOPY | CPT | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
