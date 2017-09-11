Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-07
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-09-07
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
| 08042017 | 2017-08-04T16:43:00+00:00 |  | 000071983-01 | Donita | Mcfarland | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08152017 | 10012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170901115 | C4921 | Malig neoplm of conn and soft tiss of r low limb, inc hip | ICD10 | 09072017 | 73723, 71260, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 48, 48, 48 | HCPCS | HC |  |  |  |  |  | 0 |
| 08282017 | 2017-08-28T08:51:26+00:00 |  | 000010851-01 | PAULINE | BALDWIN | ST JOSEPH MERCY HOSPITAL | 906547 |  | ST JOSEPH MERCY HOSPITAL | 1780658443 | ST JOSEPH MERCY HOSPITAL | 906547 | 1780658443 | ST JOSEPH MERCY HOSPITAL | 1780658443 | Out of Network Services | OONS | Pre-Service | PRE |  | ST JOSEPH MERCY HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08282017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170828089 | S81812A | Laceration without foreign body, left lower leg, init encntr | ICD10 | 09072017 | 11042 | DEBRIDEMENT SKIN & SUBCU TISSUE | CPT | 1 | 1 | Approved | 32 | CPT | C4 | Request clinical documentation for authorization processing. |  |  |  |  | 0 |
| 08312017 | 2017-08-31T12:02:35+00:00 |  | 000072818-01 | Harold | Cowans | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170831145 | J439 | Emphysema, unspecified | ICD10 | 09072017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 31, 31, 31, 31, 31, 31 | HCPCS | HC | Requested clinical documentation to be faxed to us |  |  |  |  | 0 |
| 09052017 | 2017-09-05T11:38:55+00:00 |  | 000045339-01 | Alice | Jansons | OSU GENERAL INTL MED LLC | 926994 |  | OSU GENERAL INTERNAL MEDICINE LLC | 1689919599 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09112017 | 12112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170905111 | C069, E039, J320, K5900, R609 | Edema, unspecified | ICD10 | 09072017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305, 88112, 84134, 85027, 82565, 82374, 82435, 84295, 84132, 82947, G0463, 84520 | UREA(BUN) | CPT | 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 08302017 | 2017-08-30T17:31:41+00:00 | Q19206546 | 000116120-01 | Beverly | Sealock | MARIETTA HLTH CARE PHYS | 912903 | UTPAL K | BHANJA | 1003801689 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 09072017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09042017 | 03032018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170901086 | C50412 | Malig neoplasm of upper-outer quadrant of left female breast | ICD10 | 09072017 | J0897 | Denosumab injection | HCPCS | 60 | 60 | Approved | 181 | HCPCS | HC | J0897: 60 INJECTION  DENOSUMAB  1 MG  Dispensed as: 60.00 mg  1 treatment(s) each cycle  1 cycle(s) |  |  |  |  | 0 |
| 08312017 | 2017-08-31T10:30:53+00:00 |  | 000064939-01 | Miriam | Hays | OSU OTOLARYNGOLOGISTS LL | 913908 | EUGENE | CHIO | 1790846012 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09072017 | Denied | Flexible Choice PPO | Fax | Not a Covered Benefit (PA) | Outpatient | 09072017 | 09082017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170831144 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 09072017 | 64568, 0466T, 95970 | ANALYZE NEUROSTIM, NO PROG | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08182017 | 2017-08-18T18:00:55+00:00 |  | 000101769-01 | Ronald | Cobb | MERCY HEALTH PHYSICIANS | 932656 | PRADEEP R | GUJJA | 1649465600 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 09072017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 09072017 | 09082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170820006 | R55 | Syncope and collapse | ICD10 | 09072017 | A6531 | GRADIENT COMPRESSION STOCKING, BELOW KNEE, 30-40 MMHG, EACH | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Spoke to Brie at the providers office to get clinical documentation for this request., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08312017 | 2017-08-31T08:51:27+00:00 | Q19216063 | 000089604-01 | Carol | Klink | COSHOCTON COUNTY MEM HSP | 919987 | JOHN D | CAFFARATTI | 1265418255 | SEASTERN OH RGNL MED CTR | 923983 | 1922138981 | SOUTHEASTERN OH RGNL MED CTR 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SOUTHEASTERN OH RGNL MED CTR 1500 | 09072017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09042017 | 10042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170901039 | R079 | Chest pain, unspecified | ICD10 | 09072017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08312017 | 2017-08-31T12:03:48+00:00 |  | 000043343-01 | JACK | DODRILL | OSU OTOLARYNGOLOGISTS LL | 932317 | STEPHEN Y | KANG | 1699903971 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 09072017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09082017 | 10082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170831146 | C44329 | Squamous cell carcinoma of skin of other parts of face | ICD10 | 09072017 | 15220, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 08252017 | 2017-08-25T14:24:31+00:00 |  | 000079571-01 | Paul | Mcdaniel | RETINA CONSULTANTS | 924209 | DAVID J | HUNT | 1740284579 | RETINA CONSULTANTS | 924208 | 1902800758 | RETINA CONSULTANTS | 1902800758 | Out of Network Services | OONS | Pre-Service | PRE |  | RETINA CONSULTANTS | 09072017 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 09072017 | 12072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170827038 | E113311 | TYPE 2 DIAB WITH MOD NONP RTNOP WITH MACULAR EDEMA, R EYE | ICD10 | 09072017 | 93014, 92134, J0178 | AFLIBERCEPT INJECTION | HCPCS | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 92, 92, 92 | HCPCS | HC | LVMM for Debbie at Retina Consultants  304-346-4401  requested call back for CPT clarification., PC back from Debbie  req'ing 3 of each in 3 months. |  |  |  |  | 0 |
| 09052017 | 2017-09-05T14:52:31+00:00 |  | 000027430-01 | SALLY | SALT | CLEVELAND CLINIC FNDN | 930630 | SIVA | RAJA | 1548317522 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 09072017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 09052017 | 12052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170905127 | K449 | Diaphragmatic hernia without obstruction or gangrene | ICD10 | 09072017 | 94729, 94010, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 09052017 | 2017-09-05T16:53:00+00:00 | Q19244314 | 000057721-01 | RONALD | BRUNGS | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | PICKAWAY HEALTH SERVICES | 938473 | 1568569903 | PICKAWAY HEALTH SERVICES | 1568569903 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | PICKAWAY HEALTH SERVICES | 09072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 09072017 | 03062018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170907024 | C155 | Malignant neoplasm of lower third of esophagus | ICD10 | 09072017 | J9308, J1100, J2405, J9267 | PACLITAXEL INJECTION | HCPCS | 1152, 480, 384, 2880 | 1152, 480, 384, 2880 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
