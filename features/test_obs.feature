Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-28
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-28
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
#| 02022017 | 2017-02-02T14:50:00+00:00 |  | 000057267-01 | PAULINE | RESCH | CANYON MEDICAL CENTER | 904476 | BEATA K | STERKOWICZ | 1477659993 | CEN OH NUTRITION CTR INC | 938164 | 1225197262 | CENTRAL OH NUTRUTION CTR INC | 1225197262 | Out of Network Services | OONS | Pre-Service | PRE |  | CENTRAL OH NUTRUTION CTR INC | 04292017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03142017 | 06142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170206008 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 04292017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 3 | 3 | Approved | 93 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Corrected note from David Atkins on 2/6/17:, No CPT codes supplied.  Called and left message for provider.  Description is Continuation of weight loss therapy, Notified of appeal. Case reviewed with Dr. Robert Durbin  associate medical director. Request was approved. Appeals department notified. Physician review referral uploaded into Essette., Auth update as requested by the appeals department for dates of service of 3/14/17 to 6/14/17 |  |  |  |  | 0 |
#| 02152017 | 2017-02-15T13:53:26+00:00 | Q17767100 | 000017745-01 | WILLIAM | HOBENSACK | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 04292017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03132017 | 04122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170216094 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 04292017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03122017 | 2017-03-12T12:25:30+00:00 |  | 000022595-01 | FREDA | GORNALL | MEDICAL & SURG ASSOC INC | 900921 | JEREMY R | CAMPBELL | 1477533826 | TUSCANY GARDENS | 905810 | 1073634788 | TUSCANY GARDENS | 1073634788 | Part B Therapy | OP THER | Pre-Service | PRE |  | TUSCANY GARDENS | 04292017 | Approved | MediGold Classic Preferred | Fax | SNF | Outpatient | 03102017 | 04082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170313028 | M159 | Polyosteoarthritis, unspecified | ICD10 | 04292017 |  |  |  | 0 | 0 |  | 0 |  |  | NOMNC received |  |  |  |  | 0 |
#| 03132017 | 2017-03-13T15:11:40+00:00 |  | 000073550-01 | Leota | Shook | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 04292017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03132017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170314124 | E119, M150 | Primary generalized (osteo)arthritis | ICD10 | 04292017 | K0821, E2365 | POWER WHEELCHAIR ACCESSORY, U-1 SEALED LEAD ACID BATTERY, EACH (E.G. GEL | HCPCS | 1, 2 | 1, 2 | Approved, Approved | 32, 32 | HCPCS | HC | Spoke with Nicole At Dr Mehra's office MBR is 235.8lb and 5'5 Spoke with Seth @ Rehab Medical Phone # 855-386-3124  stated sje can use K0821 and E2365 batteries |  |  |  |  | 0 |
#| 03152017 | 2017-03-15T08:36:27+00:00 |  | 000093291-01 | Lois | Chism | MARIETTA HLTH CARE PHYS | 914362 | CURTIS L | DEHMLOW | 1558366922 | HARMAR PLACE REHABILITATION AND EXTE | 930027 | 1144202417 | HARMAR PLACE REHABILITATION AND EXTE | 1144202417 | Part B Therapy | OP THER | Pre-Service | PRE |  | HARMAR PLACE REHABILITATION AND EXTE | 04282017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03142017 | 03142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170315130 | F0150, R1312 | Dysphagia, oropharyngeal phase | ICD10 | 04282017 | 92526 | TREATMENT OF SWALLOWING DYSFUNCTION AND/OR ORAL FUNCTION FOR | CPT | 1 | 1 | Approved | 1 | CPT | C4 | No NOMNC  this auth is for just a ST Eval on 3/14/17 |  |  |  |  | 0 |
#| 03162017 | 2017-03-16T14:25:59+00:00 |  | 000067215-01 | MILENA | JONAS | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04282017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03162017 | 04162017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316120 | H353134 | NEXDTVE AGE-REL MCLR DEGN, BI, ADV ATRPC WITH SBFVL INVOLV | ICD10 | 04282017 | 99203 | OFFICE CALL - NEW PATIENT | CPT | 1 | 1 | Approved | 32 | CPT | C4 | Spoke with Julie at the office of Dr. Harawa  OD and the expedited request has been withdrawn. |  |  |  |  | 0 |
#| 03162017 | 2017-03-16T11:04:58+00:00 |  | 000102273-01 | ANNA | EVANS | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04292017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03142017 | 04132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317069 | S066X0A | Traum subrac hem w/o loss of consciousness, init | ICD10 | 04292017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
#| 03172017 | 2017-03-17T15:28:14+00:00 |  | 000028125-01 | HAROLD | NEELY | OSU INTERNAL MED LLC | 907311 | DON M | BENSON | 1003862236 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04292017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 04042017 | 07042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317136 | D472 | Monoclonal gammopathy | ICD10 | 04292017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82232, 86140, 80048, 82947, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83550, 83615, 86334, 82784, 84165, 85610, 83883, 84439, 84443, 84550, 82607, 82306, 85652, 77075, 71020, G0364, 38221, 88313, 88237, 88262, 88305, 88184, 88342, 88307, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 03202017 | 2017-03-20T14:29:29+00:00 |  | 000082199-01 | Paul | Brill | OSU OTOLARYNGOLOGISTS LL | 902915 |  | OSU OTOLARYNGOLOGISTS LLC | 1861449407 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04292017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 04052017 | 07052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170320118 | C139 | Malignant neoplasm of hypopharynx, unspecified | ICD10 | 04292017 | 92557, 92552, 92553, 92588, 92567, 92550, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
