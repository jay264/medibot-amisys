Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-22
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-22
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
| 01192018 | 2018-01-19T08:51:18+00:00 |  | 000080384-01 | Norma | Ingles | OSU INTERNAL MED LLC | 935268 | ROBERT D | RUPERT JR | 1831305325 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01312018 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119094 | C768, D4989 | Neoplasm of unspecified behavior of other specified sites | ICD10 | 01222018 | 99211, 99212, 99213, 99214, 99215, 84443, 84439, 82728, 80053, 85025 | HMOGRM/PLTLT CT,AUTO/AUTO CMP DIFFT | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T14:04:04+00:00 |  | 000120154-01 | CAROL | BRYANT | COPC CENTRAL OHIO PRIMAR | 936032 | LARA | BLUMBERG | 1174532477 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | UNKNOWN PROVIDER | 01222018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01182018 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180118131 | F319 | Bipolar disorder, unspecified | ICD10 | 01222018 | 90844 | INDIVIDUAL PSYCHOTHERAPY 45-50 MIN. | CPT | 4 | 4 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T15:04:33+00:00 |  | 000103505-01 | ANDREW | HOLUPKA | PSYCHOLOGICAL TRANSITION | 952855 | KAREN L | DAPPER | 1720449481 | PSYCHOLOGICAL TRANSITION | 952855 | 1902914278 | KAREN L DAPPER | 1720449481 | OP Behavioral Health | OP BH | Post-Service | POST | KAREN L | DAPPER | 01222018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01162018 | 02282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X180118132 | F331, F411 | Generalized anxiety disorder | ICD10 | 01222018 | 90832, 90834, 90837 | PSYTX PTAND/FAMILY 60 MINUTES | CPT | 6, 6, 6 | 6, 6, 6 | Approved, Approved, Approved | 44, 44, 44 | CPT | C4 |  |  |  |  |  | 0 |
| 01182018 | 2018-01-18T16:27:00+00:00 |  | 000065780-01 | JUDITH | COOK | OSU HLTH SYSTEM NEUROSUR | 929919 | BARBARA K | CHANGIZI | 1609075175 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02012018 | 05012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119059 | G20 | Parkinson's disease | ICD10 | 01222018 | 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3 | 3 | Approved | 90 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T08:57:00+00:00 |  | 000043343-01 | JACK | DODRILL | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01232018 | 04232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119104 | C44329, K1230 | Oral mucositis (ulcerative), unspecified | ICD10 | 01222018 | 99211, 99212, 99213, 99214, 99215, 97597, 97026 | PT INFRARED, | CPT | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T12:29:03+00:00 |  | 000107158-01 | Tracy | Daniels | OHIO PLASTIC SURGERY SPE | 935510 | WALTER L | BERNACKI | 1871664714 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01222018 | Approved | Flexible Choice PPO | Fax | Medical Criteria Met | Outpatient | 01222018 | 03222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119105 | M791 | Myalgia | ICD10 | 01222018 | 11005, 10140 | INCISION & DRAINAGE HEMATOMA,SEROMA OR FLUID COLLECTION | CPT | 1, 1 | 1, 1 | Approved, Approved | 60, 60 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T10:43:12+00:00 |  | 000118238-01 | Dale | Johnson | UNIVERSITY OF CINCINNATI | 940869 | SHIMUL A | SHAH | 1811962327 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Transplant Eval | TRANS | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01222018 | 02222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180117080 | K7030 | Alcoholic cirrhosis of liver without ascites | ICD10 | 01222018 | 99354 | PROLONGED PHYSICIAN SERVICE IN THE OFFICE OR OTHER OUTPATIENT SETTING | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T13:37:36+00:00 |  | 000079897-01 | Clarence | Stamper | LUNZ, STEVEN R | 921394 | STEVEN R | LUNZ | 1710981089 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 01222018 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 01222018 | 02222019 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180117116 | Z89611 | Acquired absence of right leg above knee | ICD10 | 01232018 | K0801 | POV group 1 hd 301-450 lbs | HCPCS | 1 | 1 | Approved | 397 | HCPCS | HC | Sent fax Physician order to Seth at Rehab Medical to get the clinical documentation from the providers office to complete this request. |  |  |  |  | 0 |
| 01192018 | 2018-01-19T11:11:30+00:00 |  | 000044289-01 | EVELYN | DOLAN | KATZ, STEVEN E | 936995 | STEVEN E | KATZ | 1518906866 | KATZ, STEVEN E | 936995 | 1518906866 | STEVEN E KATZ | 1518906866 | Out of Network Services | OONS | Pre-Service | PRE | STEVEN E | KATZ | 01222018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01222018 | 04222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119111 | I639 | Cerebral infarction, unspecified | ICD10 | 01222018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T11:45:50+00:00 |  | 000016636-01 | BENNIE | GOLDEN | MOUNT CARMEL HLTH PRVDRS | 905310 | JASON L | BARFIELD | 1033314026 | MOUNT CARMEL HLTH PRVDRS | 905310 | 1134154750 | JASON L BARFIELD | 1033314026 | Out of Network Services | OONS | Pre-Service | PRE | JASON L | BARFIELD | 01222018 | Approved | MediGold Classic Preferred | Member | Medical Criteria Met | Outpatient | 01222018 | 03222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119113 | G500 | Trigeminal neuralgia | ICD10 | 01222018 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 1 | 1 | Approved | 60 | CPT | C4 | Spoke to Gail at Dr. Barfield's current office with Ohio Health (614-533-5500)  and they have no records on file for member.  He hasn't been seen with OH afiliation.  Called Dr. Barfield MCSA Neuro office (614-882-2581)  and spoke to operator.  They cannot supply medical records without release by the member as they are no longer being seen there.  Working with CM to get this information in line  as this was a CM auth request.  We do have evidence of previous history with Dr. Barfield at MCSA with phone calls.  Will send to auth team for review of one transitional visit., PC to Debra in Dr. Barfields office  614-882-2581  inquiring about fax number  she provided 614-533-0215. |  |  |  |  | 0 |
| 01192018 | 2018-01-19T14:29:23+00:00 |  | 000102814-01 | Sandra | Cohn | OSU OTOLARYNGOLOGISTS LL | 902915 |  | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | OSU OTOLARYNGOLOGISTS LL | 902915 | 1861449407 | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU OTOLARYNGOLOGISTS LLC | 01222018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02012018 | 04012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119115 | H903 | Sensorineural hearing loss, bilateral | ICD10 | 01222018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 60, 60, 60, 60, 60 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T13:33:50+00:00 |  | 000001385-01 | MARILYN | WILLIAMS | FEET FIRST PODIATRY | 935101 | EUGENE D | ZOOG | 1124021217 | EBI LLC | 939203 | 1366423220 | EBI LLC | 1366423220 | DME | DME | Pre-Service | PRE |  | EBI LLC | 01222018 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 01222018 | 01232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180119116 | S92352K | Disp fx of 5th metatarsal bone, l ft, subs for fx w nonunion | ICD10 | 01222018 | E0747 | OSTEOGENESIS STIMULATOR,ELECTRICAL,NON-INVASIVE,OTHER THAN SPINAL APP | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 01192018 | 2018-01-19T14:10:30+00:00 |  | 000114030-01 | Robert | Mccoy | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 941530 |  | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 1043397292 | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 941530 | 1043397292 | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 1043397292 | Out of Network Services | OONS | Pre-Service | PRE |  | UNIVERSITY HOSPITALS CLEVELAND MEDIC | 01222018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01312018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119122 | D141 | Benign neoplasm of larynx | ICD10 | 01222018 | 31541, 31571 | LARYNGO, INJ VCL CD,THERA,C OP MIC. | CPT | 1, 1 | 1, 1 | Approved, Approved | 30, 30 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T15:11:00+00:00 |  | 000062734-01 | JON | NOE | COLS NEPHROLOGY INC | 934987 | RAJAGOPALAN | VENKATARAMAN | 1922016179 | COLS AREA RENAL ALLIANCE | 905162 | 1386759140 | COLUMBUS AREA RENAL ALLIANCE EAST | 1194830950 | Predetermination Request | PR | Pre-Service | PRE |  | COLUMBUS AREA RENAL ALLIANCE EAST | 01222018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01222018 | 03232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180119126 | N179, N186 | End stage renal disease | ICD10 | 01222018 | 90999, 90935 | HEMODIALYSIS PROCED W/SINGL EVAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | CPT | C4 |  |  |  |  |  | 0 |
| 01222018 | 2018-01-22T09:09:28+00:00 | Q20210026 | 000082199-01 | Paul | Brill | OSU INTERNAL MED LLC | 935268 | ROBERT D | RUPERT JR | 1831305325 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01222018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01202018 | 07192018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122010 | C139 | Malignant neoplasm of hypopharynx, unspecified | ICD10 | 01222018 | J2469, J9045, J9267 | PACLITAXEL INJECTION | HCPCS | 7, 7, 7 | 7, 7, 7 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T16:55:52+00:00 |  | 000027780-01 | PHILLIP | ALSPACH | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01242018 | 04242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122013 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 01222018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T16:58:51+00:00 |  | 000113549-01 | Ronald | Bering | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01222018 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 01242018 | 04242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122016 | C022 | Malignant neoplasm of ventral surface of tongue | ICD10 | 01222018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 01222018 | 2018-01-22T11:07:31+00:00 | Q20210584 | 000062452-01 | ANN | FORAKER | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01262018 | 02252018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122082 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 01232018 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01172018 | 2018-01-17T14:11:03+00:00 |  | 000112920-01 | JAMES | KETCHESON | NEW CARLISLE FAM PRCT LL | 911235 | ASHOK P | DEVATHA | 1497740328 | NEW CARLISLE FAM PRCT LL | 911235 | 1699891085 | ASHOK P DEVATHA | 1497740328 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE | ASHOK P | DEVATHA | 01222018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 01172018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180117118 | R55 | Syncope and collapse | ICD10 | 01222018 | 93306, 93880 | DUPLEX SCAN EXTRACRANIAL ARTERIES; COMPLETE BILATERAL STUDY | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 | Jennifer called requesting status.  Told her auth was IN PROCESS. |  |  |  |  | 0 |
| 01172018 | 2018-01-17T14:14:12+00:00 |  | 000081103-01 | Mark | Longstreth | REGENTS OF THE U OF M | 939406 |  | REGENTS OF THE U OF M | 1003878539 | REGENTS OF THE U OF M | 939406 | 1003878539 | REGENTS OF THE U OF M | 1003878539 | Out of Network Services | OONS | Post-Service | POST |  | REGENTS OF THE U OF M | 01222018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10052017 | 02182018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X180117124 | C9210 | Chronic myeloid leuk, BCR/ABL-positive, not achieve remis | ICD10 | 01222018 | 81206, 81207 | BCR/ABL1 GENE MINOR BP | CPT | 1, 1 | 1, 1 | Approved, Approved | 137, 137 | CPT | C4 |  |  |  |  |  | 0 |
| 01222018 | 2018-01-22T14:08:44+00:00 |  | 000063687-01 | JAMES | HANDLEY | OSU INTERNAL MED LLC | 912077 | UDAY S | NORI | 1013923234 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 01252018 | 02252018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122121 | Z79899, Z940 | Kidney transplant status | ICD10 | 01222018 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T15:25:54+00:00 | Q20213700 | 000107568-01 | JAMES | BOLAND | UNIVERSITY OF CINCINNATI | 944018 | ANUMEHA | GPUTA | 1306095898 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNIVERSITY HOSPITAL | 01222018 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01242018 | 02242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122122 | C220 | Liver cell carcinoma | ICD10 | 01232018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 01192018 | 2018-01-19T11:40:00+00:00 | Q20212873 | 000119991-01 | DALE | BUTLER | OSU INTERNAL MED LLC | 911666 | STEVEN K | CLINTON | 1790792968 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01222018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01192018 | 07182018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180122126 | C61 | Malignant neoplasm of prostate | ICD10 | 01222018 | J9155, J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1, 2 | 1, 2 | Approved, Approved | 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
