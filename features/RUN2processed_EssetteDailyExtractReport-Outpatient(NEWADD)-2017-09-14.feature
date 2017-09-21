Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-14
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-14
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
| 08282017 | 2017-08-28T08:51:26+00:00 |  | 000010851-01 | PAULINE | BALDWIN | ST JOSEPH MERCY HOSPITAL | 906547 |  | ST JOSEPH MERCY HOSPITAL | 1780658443 | ST JOSEPH MERCY HOSPITAL | 906547 | 1780658443 | ST JOSEPH MERCY HOSPITAL | 1780658443 | Out of Network Services | OONS | Pre-Service | PRE |  | ST JOSEPH MERCY HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170828089 | S81812A | Laceration without foreign body, left lower leg, init encntr | ICD10 | 09132017 | 11042 | DEBRIDEMENT SKIN & SUBCU TISSUE | CPT | 1 | 1 | Approved | 32 | CPT | C4 | Request clinical documentation for authorization processing. |  |  |  |  | 0 |
| 09062017 | 2017-09-06T14:14:44+00:00 |  | 000062837-01 | MICHAEL | CASTO | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09192017 | 12192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907138 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 09142017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09062017 | 2017-09-06T15:27:54+00:00 | NCT02143414 . | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 09182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907122 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 09142017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 80053, 84155, 82945, 89051, 85610, 82565, 84520, 82374, 82435, 84295, 84132, 82947, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08312017 | 2017-08-31T10:30:53+00:00 |  | 000064939-01 | Miriam | Hays | OSU OTOLARYNGOLOGISTS LL | 913908 | EUGENE | CHIO | 1790846012 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09132017 | Denied | Flexible Choice PPO | Fax | Services Available In-Network | Outpatient | 09132017 | 09142017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170831144 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 09132017 | 64568, 0466T, 95970 | ANALYZE NEUROSTIM, NO PROG | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08182017 | 2017-08-18T18:00:55+00:00 |  | 000101769-01 | Ronald | Cobb | MERCY HEALTH PHYSICIANS | 932656 | PRADEEP R | GUJJA | 1649465600 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 09132017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 09132017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170820006 | R55 | Syncope and collapse | ICD10 | 09132017 | A6531 | GRADIENT COMPRESSION STOCKING, BELOW KNEE, 30-40 MMHG, EACH | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Spoke to Brie at the providers office to get clinical documentation for this request., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 09082017 | 2017-09-08T09:39:31+00:00 |  | 000021535-01 | SARAH | FIELDS | OSU HLTH SYSTEM NEUROSUR | 940986 | TIFFANY L | KESSLING | 1386801231 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09142017 | 12142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908112 | C01 | Malignant neoplasm of base of tongue | ICD10 | 09142017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T16:48:13+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 912724 | YVONNE A | EFEBERA | 1285612986 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170913160 | D7581 | Myelofibrosis | ICD10 | 09142017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83735, 82565, 84520, 82374, 82435, 82495, 84132, 82947, 80299, 87497, 85730, 85610, 82040, 84075, 84460, 84450, 82248, 84155, 84100, 82310, 83735, G0463, 82247 | BILIRUBIN, TOTAL | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T13:48:20+00:00 |  | 000083173-01 | Michele | Smith | SARIBALAS, MICHAEL G | 904798 | MICHAEL G | SARIBALAS | 1164454211 | SARIBALAS, MICHAEL G | 904798 | 1164454211 | MICHAEL G SARIBALAS | 1164454211 | DME | DME | Pre-Service | PRE | MICHAEL G | SARIBALAS | 09142017 | Denied | Flexible Choice PPO | Fax | Non-Covered Services (SNF, Rehabs) | Outpatient | 09142017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170816129 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 09142017 | E0485 | ORAL DEVICE/APPLIANCE USED TO REDUCE UPPER AIRWAY COLLAPSIBI | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved., Faxed denial letter via Rightfax. |  |  |  |  | 0 |
| 09062017 | 2017-09-06T15:23:51+00:00 | NCT02143414. | 000050876-01 | DONALD | COCHRAN | OSU INTERNAL MED LLC | 946116 | JACQUELA | ROBINSON-DJAKU | 1124401567 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Clinical Trial | TRIAL | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 09122017 | 12122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907125 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 09142017 | 99211, 99212, 99213, 99214, 99215, 85025, 80053, 84155, 82945, 89051, 85610, 82565, 84520, 82374, 82435, 84295, 84132, 82947, G0463, 36415 | ROUTINE VENIPUNCTURE FOR SPEC COL. | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 08302017 | 2017-08-30T16:38:12+00:00 |  | 000076284-01 | Fred | Polk | OSU SURGERY LLC | 918628 | KYLE A | PERRY | 1821209925 | OSU SURGERY LLC | 918628 | 1538117551 | KYLE A PERRY | 1821209925 | Out of Network Services | OONS | Pre-Service | PRE | KYLE A | PERRY | 09142017 | Approved | MediGold Southeast OH Classic Preferred | Member | Secondary Only | Outpatient | 09072017 | 12072017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170831068 | K228 | Other specified diseases of esophagus | ICD10 | 09142017 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92 | CPT | C4 | Called Dr Perry's office (614-293-3230) and spoke with Sheila (Scheduler)  to request clinical she then transferred me to Elana (614-366-9273 fax 614-366-7279) Explained without clinical documentation will not be able to authorize anything  She stated appointment is 09/11/2017 She will fax clinical documentation, Received the Clinical Documentation from The OSU General & Gastrointestinal Surgery Clinic 09/07/2017 @ 16: 02:03, Alaina at OSU General & Gastrointestinal Clinic stated VA is primary |  |  |  |  | 0 |
| 09072017 | 2017-09-07T10:34:44+00:00 |  | 000114558-01 | ROBERT | MOSEL | UNIVERSITY RADIATION ONC | 949435 | JESSICA L | WOBB | 1356653984 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 09192017 | 12192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907136 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 09142017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 08092017 | 2017-08-09T13:24:46+00:00 | Q19028370 | 000089918-01 | Houston | Rogers | MIDWEST HYPERBARIC PHYS | 904412 | LOUIS E | PILATI | 1205886439 | GRANDVIEW MEDICAL CENTER | 919131 | 1437176054 | GRANDVIEW MEDICAL CENTER | 1437176054 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 09142017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08072017 | 09062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170810066 | L97524 | Non-prs chronic ulcer oth prt left foot w necrosis of bone | ICD10 | 09142017 | 73720 | MRI LOWER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09062017 | 2017-09-06T14:03:42+00:00 |  | 000037946-01 | PETER | PALM | OSU OTOLARYNGOLOGISTS LL | 907810 | ENVER | OZER | 1689626285 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09072017 | 12072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908093 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 09142017 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 92597, 31579, 31575, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T16:44:02+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 943038 | ALICE S | MIMS | 1699962084 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170913140 | D7581 | Myelofibrosis | ICD10 | 09142017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83735, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 80299, 87497, 85730, 85610, 82040, 84075, 84460, 84450, 82248, 84155, 84100, 82310, 83735, G0463, 82247 | BILIRUBIN, TOTAL | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 08312017 | 2017-08-31T08:49:49+00:00 | Q19215797 | 000050788-01 | PATSY | ROWE | OH ONCOLOGY & HEMATOLOGY | 934906 | P KOTHAI | SUNDARAM | 1538127238 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 09132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09052017 | 10052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170901009 | C787 | Secondary malig neoplasm of liver and intrahepatic bile duct | ICD10 | 09132017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 09122017 | 2017-09-12T16:40:09+00:00 |  | 000099055-01 | Brent | Lisk | OSU INTERNAL MED LLC | 943770 | MEGHAN | KROMER | 1477931533 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09152017 | 12152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170913127 | D7581 | Myelofibrosis | ICD10 | 09142017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 83735, 82565, 84520, 82374, 82435, 84295, 84132, 82947, 80299, 87497, 85730, 85610, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 84100, 82310, 83735, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09072017 | 2017-09-07T15:08:43+00:00 |  | 000021535-01 | SARAH | FIELDS | UNIVERSITY RADIATION ONC | 948092 | DARRION L | MITCHELL | 1801185020 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09182017 | 12182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907143 | C01, R220 | Localized swelling, mass and lump, head | ICD10 | 09142017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09142017 | 2017-09-14T08:41:21+00:00 |  | 000072645-01 | Cedora | Merrick | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 09142017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 08282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170901097 | I4891 | Unspecified atrial fibrillation | ICD10 | 09142017 | 0295T | EXT ECG COMPLETE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
