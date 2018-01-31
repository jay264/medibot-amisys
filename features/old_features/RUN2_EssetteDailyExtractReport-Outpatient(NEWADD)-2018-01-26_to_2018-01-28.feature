Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-26_to_2018-01-28
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-26_to_2018-01-28
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
| 01252018 | 2018-01-25T15:19:49+00:00 |  | 000005196-01 | MARJORIE | YOUNG | NEUROSCIENCE CENTER | 908648 | PUNIT | AGRAWAL | 1578787990 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Pre-Service | PRE |  | NEUROSCIENCE CENTER | 01262018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01252018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125142 | G20 | Parkinson's disease | ICD10 | 01262018 | 95978, 95979 | ANALYZ NEUROSTIM BRAIN ADDON | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T11:39:12+00:00 |  | 000057744-01 | HELENE | FELTY | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01262018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01312018 | 04302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125124 | C321, K130 | Diseases of lips | ICD10 | 01262018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T11:53:02+00:00 |  | 000097457-01 | Catherine | Conley | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01262018 | Approved | THE TIMKEN COMPANY | Fax | Services Not Available In-Network | Outpatient | 02052018 | 05052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125128 | C4402 | Squamous cell carcinoma of skin of lip | ICD10 | 01262018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T13:04:37+00:00 |  | 000022657-01 | CHARLOTTE | CONAWAY | OH GASTRO GRP INC | 947901 | BRETT W | SLEESMAN | 1295050136 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 01262018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02012018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125137 | Z86010 | Personal history of colonic polyps | ICD10 | 01262018 | 45378, 45380, 45384, 45385 | COLONOSCOPY PAST SP FLEX RMVL LES. | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T09:28:00+00:00 | Q20241223 | 000094391-01 | Ernest | Stromer Jr | CAPITAL UROLOGY INC | 918364 | FADEL S | ELKHAIRI | 1841456654 | CEN OH UROLOGY GRP INC | 937051 | 1396780466 | SCOTT D BARKIN | 1841282969 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | SCOTT D | BARKIN | 01262018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01242018 | 07232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126022 | C673 | Malignant neoplasm of anterior wall of bladder | ICD10 | 01262018 | J9031 | BCG (INTRAVESICAL) PER INSTALLATION | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9031: 6: (BCG) Bacillus Calmette-Guerin 81 mg  intravesically  day 1  every 7 days  6 cycles |  |  |  |  | 0 |
| 01242018 | 2018-01-24T14:09:19+00:00 | Q20245108 | 000054130-01 | GEORGE | NORTON | CANYON MEDICAL CENTER | 937298 | SHAILESH R | PATEL | 1346235215 | CANYON MEDICAL CENTER | 937298 | 1073558326 | SHAILESH R PATEL | 1346235215 | Radiology (HH) | OP RAD | Pre-Service | PRE | SHAILESH R | PATEL | 01262018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126032 | R0789 | Other chest pain | ICD10 | 01262018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T14:17:56+00:00 | Q20245270 | 000004343-01 | MARTHA | GOLDBACH | MOUNT CARMEL HLTH SYS | 948057 | PRACHI S | BIYANI | 1508185398 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01262018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01252018 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126034 | R1013 | Epigastric pain | ICD10 | 01262018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T14:27:59+00:00 | Q20245526 | 000092987-01 | Martha | Mowery | CANYON MEDICAL CENTER | 937298 | SHAILESH R | PATEL | 1346235215 | CANYON MEDICAL CENTER | 937298 | 1073558326 | SHAILESH R PATEL | 1346235215 | Radiology (HH) | OP RAD | Pre-Service | PRE | SHAILESH R | PATEL | 01262018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126038 | I209 | Angina pectoris, unspecified | ICD10 | 01262018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01242018 | 2018-01-24T14:59:03+00:00 | Q20246158 | 000120386-01 | Carol | Roberts | MOUNT CARMEL EAST PHYS | 934970 | LUIS | VACCARELLO | 1225034622 | OH ONCOLOGY & HEMATOLOGY | 951012 | 1467717553 | LAVERNE G MENSAH | 1891788709 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | LAVERNE G | MENSAH | 01262018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02082018 | 08072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126041 | C482 | Malignant neoplasm of peritoneum, unspecified | ICD10 | 01262018 | J9045, J2469, J9267 | PACLITAXEL INJECTION | HCPCS | 72, 60, 1734 | 72, 60, 1734 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC | J9045: 72: INJECTION  CARBOPLATIN  50 MG  Dispensed as: 569.10 mg  1 treatment(s) each cycle  6 cycle(s): J9267: 1734: INJECTION  PACLITAXEL  1 MG  Dispensed as: 289.00 mg  1 treatment(s) each cycle  6 cycle(s): J2469: 60: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 01262018 | 2018-01-26T06:36:15+00:00 |  | 000113921-01 | Bonnie | Pace | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01262018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02072018 | 08072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126056 | J439 | Emphysema, unspecified | ICD10 | 01262018 | 93307, 93306, 93320, 94010, 94060, 36600, 94620, 99245, 86832, 86833, 86828, 82040, 84075, 84460, 84450, 82248, 82247, 84155, G0480, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 86803, 87340, 86706, 86704, 86645, 86644, 94720 | CARBON MONOXIDE DIFFUSING CAPACITY | CPT | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T07:15:57+00:00 | Q20248412 | 000029258-01 | CAROLYN | CARPER | ADENA REGIONAL MED CTR | 934811 | YADWINDER | SINGH | 1083608830 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 01262018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02052018 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126059 | R0789 | Other chest pain | ICD10 | 01262018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T09:59:30+00:00 | NCT#02500121 | 000120605-01 | James | Lerch | OSU INTERNAL MED LLC | 907827 | SEYED-AMIR | MORTAZAVI | 1124036181 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Post-Service | POST |  | JAMES CANCER HOSPITAL | 01282018 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Outpatient | 01112018 | 07112018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X180118073 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 01282018 | 85025, 80053, 84703, 99211, 36415, 36592, 99213, 96413, 96415, A9579, Q9966 | LOCM 200-299mg/ml iodine,1ml | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 182 | HCPCS | HC | Post - Service request   mbr started Clinical Trial on 01/11/2018  Request approved for Routine Care (labs) while in a Clinical Trail ., RECEIVED PC FROM  DEBORAH WITH THE  PROVIDER REQUESTING TO EXTEND AUTH OUT TO 3 AND OR 6 MONTHS   SINCE THE MBR IS IN A CLINICAL STUDY HE WILL GET LABS MORE FREQUENTLY. INFORMED DEBORAH THAT I WOULD EXTEND THE AUIH OUT TO 6 MONTHS  DEBORAH VOICED UNDERSTANDING AND STATED THAT SHE WOULD SUBMIT ADDITIONAL  REQUEST IF IT NEEDS TO GO OUT FURTHER THAN THAT. |  |  |  |  | 0 |
| 01232018 | 2018-01-23T12:12:51+00:00 |  | 000042374-01 | Harold | Sanford | THE VINEYARDS AT CONCORD | 928631 |  | THE VINEYARDS AT CONCORD | 1104905173 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 01262018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 01262018 | 01272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180123115 | I6990, R279, R633 | Feeding difficulties | ICD10 | 01262018 | 97116, 97530, 97110, 97112, 97140, 97116, 97530, 97110, 97112, 97140 | MANUAL THERAPY | CPT | 8, 8, 8, 8, 8, 0, 0, 0, 0, 0 | 8, 8, 8, 8, 8, 8, 8, 8, 8, 8 | Approved, Approved, Approved, Approved, Approved, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 01242018 | 2018-01-24T17:03:29+00:00 |  | 000104605-01 | KATHERINE | TAWROSZA | OSU INTERNAL MED LLC | 916695 | ANTHONY J | MICHAELS | 1003998642 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01262018 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Outpatient | 01252018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125007 | K7290 | Hepatic failure, unspecified without coma | ICD10 | 01262018 | 76705 | ECHO. SCAN B-MDE LMTD EG.FOLLOW UP | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T10:54:14+00:00 | Q20252045 | 000059445-01 | RICHARD | ALLEN | CAPITAL UROLOGY INC | 918364 | FADEL S | ELKHAIRI | 1841456654 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 01262018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01262018 | 02252018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126101 | C220 | Liver cell carcinoma | ICD10 | 01262018 | 74181, 72195 | MRI PELVIS W/O DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T09:53:17+00:00 |  | 000119991-01 | DALE | BUTLER | OSU HLTH SYSTEM NEUROSUR | 907811 | EHUD | MENDEL | 1275561342 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01262018 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 02022018 | 05022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126122 | C7951 | Secondary malignant neoplasm of bone | ICD10 | 01262018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T06:21:19+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 935274 | AMY L | POPE-HARMON | 1386758142 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01262018 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 03072018 | 06072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126136 | J439 | Emphysema, unspecified | ICD10 | 01262018 | 93307, 93306, 93320, 94060, 94720, 36600, 94620, 99245, 86832, 86833, 86828, 82040, 84075, 84460, 84450, 82248, 82247, 84155, G0480, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 85025, 86803, 87340, 86706, 86704, 86645, 86644, 94010 | SPIROMETRY,COMPLETE | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T10:14:58+00:00 |  | 000027886-01 | JANICE | MOORE | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01262018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02012018 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180126150 | C069 | Malignant neoplasm of mouth, unspecified | ICD10 | 01262018 | 21076, 21077, 21079, 21080, 21081, 21082, 21083, 21084, 21086, 21087, 21089, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
