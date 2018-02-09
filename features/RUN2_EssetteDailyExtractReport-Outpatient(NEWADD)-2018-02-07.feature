Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-07
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-07
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
| 02022018 | 2018-02-02T13:06:23+00:00 | Q20319510 | 000121674-01 | David | Mcallister | ALLIANCE PHYSICIANS INC | 901968 | MARK S | COLLINS | 1962451021 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CLINTON MEMORIAL HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02122018 | 08112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207012 | C250 | Malignant neoplasm of head of pancreas | ICD10 | 02072018 | J9263, J2505, J1453, J9206, J9190 | FLUOROURACIL, 500 MG | HCPCS | 3720, 8, 1800, 180, 1 | 3720, 8, 1800, 180, 1 | Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181 | HCPCS | HC | J9263: 3720: INJECTION  OXALIPLATIN  0.5 MG  Dispensed as: 155.00 mg  2 treatment(s) each cycle  6 cycle(s): J9206: 180: INJECTION  IRINOTECAN  20 MG  Dispensed as: 300.00 mg  2 treatment(s) each cycle  6 cycle(s): J9190: 1: INJECTION  FLUOROURACIL  500 MG  Dispensed as: 100.00 mg  1 treatment(s) each cycle  1 cycle(s): J2505: 8: PegFilgrastim (Neulasta) 6 mg  SQ  once  every 14 days  8 cycles: J1453: 1800: Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  12 cycle(s) |  |  |  |  | 0 |
| 02062018 | 2018-02-06T07:20:22+00:00 | Q20334393 | 000094683-01 | James | Brandt | MOUNT CARMEL HLTH PRVDRS | 935073 | FRED W | WORLEY | 1003814633 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 02072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02062018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207047 | R202 | Paresthesia of skin | ICD10 | 02072018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T07:59:07+00:00 | Q20334743 | 000106882-01 | Kenneth | Metz | WESTERN MEDICINE LLC | 901464 | JACOB T | DEAN | 1932172467 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 02072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02072018 | 03092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207053 | R222 | Localized swelling, mass and lump, trunk | ICD10 | 02072018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T08:10:32+00:00 | Q20334886 | 000048499-01 | SARA | MCCONNELL | ADENA REGIONAL MED CTR | 934811 | YADWINDER | SINGH | 1083608830 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02062018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207057 | R51 | Headache | ICD10 | 02072018 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10232017 | 2017-10-23T11:51:08+00:00 |  | 000096301-01 | Dennis | Fyffe | CLEVELAND CLINIC FNDN | 940150 | RONALD C | STARLING | 1669572962 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 02072018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02062018 | 04302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171023113 | M810, Z941 | Heart transplant status | ICD10 | 02072018 | 99214, 93306, 77080, 71020, 93010, 80053, 83735, 80197, 85025, 81003, 86849, 36415, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84, 84 | HCPCS | HC | Fax from CCF asking to extend auth to 04/30/2018  mbr has appt. on 04/25/18. |  |  |  |  | 0 |
| 02052018 | 2018-02-05T12:08:20+00:00 |  | 000094631-01 | Benjamin | Wile Sr | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | AMERIWOUND LLC | 932739 | 1740535988 | AMERIWOUND LLC | 1740535988 | Out of Network Services | OONS | Post-Service | POST |  | AMERIWOUND LLC | 02072018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 02072018 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X180205129 | L2089 | Other atopic dermatitis | ICD10 | 02072018 | 99304, 99305, 99306, 99307, 99308, 99309, 11042, 11043 | DEBRIDE SKIN & SUBCU TISSUE & MSCL | CPT | 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02052018 | 2018-02-05T13:11:15+00:00 |  | 000082226-01 | Neil | Fultz | JAMES CANCER HOSPITAL | 936501 |  | JAMES CANCER HOSPITAL | 1124127683 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02052018 | 03052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205131 | C44329 | Squamous cell carcinoma of skin of other parts of face | ICD10 | 02072018 | 85025, 80053, 84443, 84439, 83615 | LACTIC DEHYDROGENASE(LDH), U-V | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:08:04+00:00 |  | 000111937-01 | Susan | Rudder | COPC CENTRAL OHIO PRIMAR | 902744 | PATRICIA G | TOOHEY | 1598712911 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | DME | DME | Pre-Service | PRE |  | UNKNOWN PROVIDER | 02072018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02062018 | 05062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206122 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 02072018 | E0486 | ORAL DEVICE/APPLIANCE USED TO REDUCE UPPER AIRWAY COLLAPSIBI | HCPCS | 1 | 1 | Approved | 90 | HCPCS | HC | Non Par form sent to Monique/Credentialing for Provider ID |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:34:20+00:00 |  | 000090982-01 | James | Miteff | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02062018 | 05062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206127 | C320 | Malignant neoplasm of glottis | ICD10 | 02072018 | 92507, 92610, 92612, 92526, 92597, 31579, 31575 | LARYNGOSCOPY FLEX SCOPE DX | CPT | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T15:55:53+00:00 |  | 000039505-01 | RALPH | ATWOOD | NEUROSCIENCE CENTER | 929919 | BARBARA K | CHANGIZI | 1609075175 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02062018 | 05052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206147 | G20 | Parkinson's disease | ICD10 | 02072018 | 95978, 95979 | ANALYZ NEUROSTIM BRAIN ADDON | CPT | 1, 1 | 1, 1 | Approved, Approved | 89, 89 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:39:12+00:00 | NCT#02764593 | 000096380-01 | Lucien | Mouawad | OSU INTERNAL MED LLC | 952079 | MARCELO R | BONOMI | 1043446230 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Clinical Trial | TRIAL | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02072018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02012018 | 05012018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180206149 | C01 | Malignant neoplasm of base of tongue | ICD10 | 02072018 | 85025, 80053, 84703, 99211, 36415, 36592, 99213, 82247, 84460, 84450, 84075, 82150, 83690, 84443, 82565, 84156, 82570, 81050, 84295, 84132, 82435, 82947, 82310, 83735, 82040, 87340, 86706, 86704, 86705, 86803, 99214, 77290, 77014, 77334, 77301, 77300, 77336, 77418, 77417, 96413, 96415, 96417, 92551, 92610, 92611, 92612, 31575, Q9966, A9552, 36415, 99149, 99145, 85610, 85730, 85049, 88309, 88342, 88360, 21550, 10022, 76942, 76536 | ECHO SOFT TIS HEAD/NECK-B-SCN/RL TM | CPT | 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 | 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 | This was sent to Health Help for processing of their codes. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T09:45:05+00:00 | Q20336774 | 000098267-01 | Paul | Filson | DIGESTIVE SPEC INC | 932974 | ROSANNE M | DANIELSON | 1710950811 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 02072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02062018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207078 | R634 | Abnormal weight loss | ICD10 | 02072018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T09:28:50+00:00 | Q20336983 | 000101719-01 | Diane | Bennett | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | COLUMBUS NEUROPSYCHOLOGI | 909304 | 1508143017 | JENNIFER J WHATLEY | 1902056575 | Radiology (HH) | OP RAD | Pre-Service | PRE | JENNIFER J | WHATLEY | 02072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03012018 | 03312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207080 | I270 | Primary pulmonary hypertension | ICD10 | 02072018 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T09:56:47+00:00 | Q20337074 | 000086738-01 | Ruth | Duncan | ADENA HEALTH SYSTEMS | 935974 | TAREK A | CHIDIAC | 1922066778 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Radiology (HH) | OP RAD | Pre-Service | PRE | LAVERNE G | MENSAH | 02072018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02272018 | 03292018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207082 | C549 | Malignant neoplasm of corpus uteri, unspecified | ICD10 | 02072018 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T10:11:02+00:00 | Q20337546 | 000038862-01 | MILDRED | WOODEN | CEN OH PRIMARY CARE SPEC | 934864 | CHARMAINE M | BLAIR | 1740264647 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 02072018 | Approved | TRINITY HEALTH | HealthHelp | Medical Criteria Met | Outpatient | 02062018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207088 | R1084 | Generalized abdominal pain | ICD10 | 02072018 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T11:02:22+00:00 | Q20338635 | 000011630-01 | ROSE | SWAGLER | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL HLTH SYS | 947612 | 1457617235 | THERESA H LEITE | 1679558183 | Radiology (HH) | OP RAD | Pre-Service | PRE | THERESA H | LEITE | 02072018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02062018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207101 | C19 | Malignant neoplasm of rectosigmoid junction | ICD10 | 02072018 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 02062018 | 2018-02-06T14:43:11+00:00 |  | 000046713-01 | JACK | MILLER | SUNBURY CHIROPRACTIC CTR | 910242 | GABRIEL M | MENDENHALL | 1518151299 | SUNBURY CHIROPRACTIC CTR | 937722 | 1285791731 | SUNBURY CHIROPRACTIC CENTER | 1285791731 | Predetermination Request | PR | Pre-Service | PRE |  | SUNBURY CHIROPRACTIC CENTER | 02072018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 02072018 | 02082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180207112 | M461, M5136, M546, M9902, M9903, M9905 | Segmental and somatic dysfunction of pelvic region | ICD10 | 02072018 | 98941 | CHIRO MANIPULATIVE TREATMENT; SPINAL 3 TO 4 REGIONS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T16:12:14+00:00 |  | 000041201-01 | ROGER | SMITH | OSU HLTH SYSTEM NEUROSUR | 908648 | PUNIT | AGRAWAL | 1578787990 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 02072018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02062018 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207123 | G20 | Parkinson's disease | ICD10 | 02072018 | 95978, 95979 | ANALYZ NEUROSTIM BRAIN ADDON | CPT | 1, 1 | 1, 1 | Approved, Approved | 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 02072018 | 2018-02-07T09:53:53+00:00 |  | 000095418-01 | Larry | Jones | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02072018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02082018 | 05082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207128 | C01, Z5111 | Encounter for antineoplastic chemotherapy | ICD10 | 02072018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02072018 | 2018-02-07T11:36:26+00:00 | NCT02016781 | 000081722-01 | Lee | Rathbun | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02072018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02142018 | 05142018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207143 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 02072018 | 85025, 80053, 88313, 99211, 36415, 36592, 99213, 80076, 88237, 88262, 82728, 83540, 84466, 86644, 86645, 81378, 38204, 80051, 86850, 86900, 86901, 36600, 86821, 82803, 81267, 86665, 86696, 86703, 87340, 86706, 86704, 86705, 86803, 86592, 86687, 86695, 87801, 88271, 88184, 88185, 88275, 71020, 94010, 94726, 94729, 93005, 80197, 80202, 96413, 96365, 96366, 96367, 96374, 96375, 38205, J7507, 77014, 77014, 77280, 77300, 77301, 77334, 77418 | RADIATION TX DELIVERY, IMRT | CPT | 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 | 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 | This was faxed to Health Help for processing of the codes for them. |  |  |  |  | 0 |
