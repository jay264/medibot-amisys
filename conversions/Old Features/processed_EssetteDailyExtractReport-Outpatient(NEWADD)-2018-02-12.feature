Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-12
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-02-12
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
| 02092018 | 2018-02-09T17:12:47+00:00 |  | 000104424-01 | James | Miller | CEN OHIO NEURO OPHTHALMO | 936377 | AVROM D | EPSTEIN | 1831118363 | CEN OHIO NEURO OPHTHALMO | 917628 | 1396822334 | CENTRAL OHIO NEURO OPHTHALMOLOGY | 1396822334 | Out of Network Services | OONS | Pre-Service | PRE |  | CENTRAL OHIO NEURO OPHTHALMOLOGY | 02122018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03222018 | 06222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212075 | G932, H4711 | Papilledema associated with increased intracranial pressure | ICD10 | 02122018 | 99214, 92083 | VISUAL FLD STATIC & KINETIC PRMTRY | CPT | 3, 3 | 3, 3 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 07112017 | 2017-07-11T14:31:13+00:00 |  | 000064469-01 | ARMITA | RICHARDSON | OSU OTOLARYNGOLOGISTS LL | 933405 | OLIVER F | ADUNKA | 1316975444 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Post-Service | POST |  | THE OH STATE UNIVERSITY HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07182017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X180209100 | H7292 | Unspecified perforation of tympanic membrane, left ear | ICD10 | 02122018 | 69631, 69310 | REC EXT AUDITORY CANAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 | This authorization is reference to A170711066, This authorization replaces the authorization A170711066 that was built in error as inpatient and should have been outpatient. |  |  |  |  | 0 |
| 02062018 | 2018-02-06T12:07:26+00:00 |  | 000029591-01 | RICHARD | SHUPE | OH STATE PAIN MGMT CTR I | 907497 | SACHIDA | MANOCHA | 1821036435 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Predetermination Request | PR | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02122018 | Denied | MediGold Classic Preferred | Fax | Not a Covered Benefit (PA) | Outpatient | 02122018 | 02132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X180206117 | G588, R102 | Pelvic and perineal pain | ICD10 | 02122018 | 63650, 95972, 63685, L8687 | IMPLANTABLE NEUROSTIMULATOR PULSE GENERATOR, DUAL ARRAY, REC | HCPCS | 0, 0, 0, 0 | 2, 1, 1, 1 | Denied, Denied, Denied, Denied | 0, 0, 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 02092018 | 2018-02-09T16:05:38+00:00 |  | 000072115-01 | Donna | Robare | ORTHOPEDIC ONE INC | 933437 | LACIE D | BAKER | 1194126797 | ORTHOPEDIC ONE INC | 933437 | 1548289697 | LACIE D BAKER | 1194126797 | DME | DME | Pre-Service | PRE | LACIE D | BAKER | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02232018 | 03232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209111 | M2170, M7741 | Metatarsalgia, right foot | ICD10 | 02122018 | L3020 | FOOT, INSERT, REMOVABLE, MOLDED TO PATIENT MODEL, LONGITUDINAL/ | HCPCS | 1 | 1 | Approved | 29 | HCPCS | HC |  |  |  |  |  | 0 |
| 02052018 | 2018-02-05T15:12:51+00:00 |  | 000106801-01 | Richard | Birt | TRISTATE DIAGNOSTIC SERV | 921134 | RAJINDER P | SINGH | 1184758799 | AMBULATORY NEUROLOGICAL | 952893 | 1700159480 | AMBULATORY NEUROLOGICAL SERVICES LLC | 1700159480 | Out of Network Services | OONS | Pre-Service | PRE |  | AMBULATORY NEUROLOGICAL SERVICES LLC | 02122018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02122018 | 04122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180205144 | R569 | Unspecified convulsions | ICD10 | 02122018 | 95816, 95951, 95953 | MONITORING FOR LOCALIZATION OF CEREBRAL SEIZURE FOCUS BY COMPUTERIZED | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 60, 60, 60 | CPT | C4 |  |  |  |  |  | 0 |
| 02072018 | 2018-02-07T09:16:01+00:00 |  | 000113107-01 | Paul | Hagerman | ALLIANCE PHYSICIANS INC | 940326 | MELISSA E | HANNA | 1821022286 | DEVORE ENT | 904089 | 1740381342 | GORDON J KATZ | 1215038823 | Out of Network Services | OONS | Pre-Service | PRE | GORDON J | KATZ | 02122018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 02122018 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180207124 | H7292 | Unspecified perforation of tympanic membrane, left ear | ICD10 | 02122018 | 99202, 99203, 99204, 99205, 99201 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29 | CPT | C4 | Received request for referral to Gr. Gordon Katz  note listed on request stating that Dr. Katz is not in -network  per MediGold Provider site Dr. Katz is in-network.  Pc to provider spoke with A. McDufford  informed her that Dr. Katz is in-network   she thanked me for calling. |  |  |  |  | 0 |
| 02022017 | 2017-02-02T07:50:00+00:00 | Q17665005 | 000038779-01 | MARY | SCHORR | OSU HLTH SYSTEM NEUROSUR | 939773 | PIERRE | GIGLIO | 1962450221 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02062018 | 03082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170207133 | C719 | Malignant neoplasm of brain, unspecified | ICD10 | 02122018 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01252018 | 2018-01-25T11:22:04+00:00 |  | 000040515-01 | ERNEST | YOUNG | 41 GULF COAST KIDNEY ASS | 939792 | JANIS S | LAWRENCE-JACKS | 1063640126 | FRESENIUS SARASOTA | 941742 | 1578963211 | FRESENIUS MEDICAL CARE SARASOTA | 1578963211 | Out of Network Services | OONS | Pre-Service | PRE |  | FRESENIUS MEDICAL CARE SARASOTA | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01252018 | 04252018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180125127 | N186 | End stage renal disease | ICD10 | 02122018 | 90937, 90999, 90960, 90961, 90962, 90970 | ESRD HOME PT SERV P DAY, 20+ | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T08:09:30+00:00 |  | 000077270-01 | Robert | Hudson | OSU INTERNAL MED LLC | 949696 | NIKKI J | GUINTHER | 1073764080 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02082018 | 05082018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180208079 | I96, M869 | Osteomyelitis, unspecified | ICD10 | 02122018 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3 | 3 | Approved | 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T11:01:16+00:00 |  | 000088023-01 | Hugh | Armstrong | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 02122018 | Approved | MediGold Essential Care | Member | Medical Criteria Met | Outpatient | 02122018 | 03122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180208096 | M19079 | Primary osteoarthritis, unspecified ankle and foot | ICD10 | 02122018 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29 | CPT | C4 | PC to member  614-471-9748  spoke to member who gave permission to speak to his wife  Carly.  , Member is in Naples  Florida.  He went to North Collier Hospital d/t severe neck pain and couldn't lift his head of right arm.  ER provided pain meds to cover 10 days  Oxycontin  which is too strong.  He was referred to Dr. Patrick Joyner for follow up and additional pain meds., He and his wife are driving home sometime in the next 10-14 days  they feel he will need something for pain to endure the long car ride., They only anticipate needing one appointment with Dr. Joyner and hope that he can get a steroid injection instead of pain pills., PC to Dr. Patrick Joyner's office  239-594-8002  spoke with Megan., She relays fax number is 239-594-3447  she will be able to schedule patient once faxed approval has been rec'd., Submitted electronic ROI form: The form has been created., Confirmation ID: Enrollment\ROI-000088023-HUGH ARMSTRONG-2018021203190132.pdf, Per Daniel Hayes in member services dept  mbr is schedules to see Dr. Chirag Patel.  , Will change approval letter and refax. |  |  |  |  | 0 |
| 02082018 | 2018-02-08T12:39:15+00:00 |  | 000006245-01 | HELEN | HANEY | OSU INTERNAL MED LLC | 942163 | LLANA | POOTRAKUL | 1326332792 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02132018 | 05132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180208104 | C44729 | Squamous cell carcinoma skin/ left lower limb, including hip | ICD10 | 02122018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02082018 | 2018-02-08T16:46:49+00:00 |  | 000070376-01 | Thomas | Joyce | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02222018 | 05222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209082 | C099, C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 02122018 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92611, 92612, 92526, 31575, 31579 | LARYNGOSCOPY, FLEX SCOPE W STROBOSCOPY | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T10:35:30+00:00 |  | 000098292-01 | Phyllis | Todd | MELVIN S GALE & ASSOC | 913084 | MELVIN S | GALE | 1740343342 | MELVIN S GALE & ASSOC | 913084 | 1518914530 | MELVIN S GALE | 1740343342 | OP Behavioral Health | OP BH | Pre-Service | PRE | MELVIN S | GALE | 02122018 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 02122018 | 05122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209094 | F319 | Bipolar disorder, unspecified | ICD10 | 02122018 | 90833, 99213, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T08:47:08+00:00 |  | 000022058-01 | JOHN | PHILLIPS | OSU INTERNAL MED LLC | 911666 | STEVEN K | CLINTON | 1790792968 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02162018 | 05162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212084 | C61 | Malignant neoplasm of prostate | ICD10 | 02122018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T10:16:05+00:00 |  | 000019068-01 | JOHN | MCCOMAS | CAVALIER MOBILE XRAY CO | 950659 |  | CAVALIER MOBILE XRAY CO | 1669424743 | CAVALIER MOBILE XRAY CO | 950659 | 1669424743 | CAVALIER MOBILE XRAY CO | 1669424743 | Out of Network Services | OONS | Pre-Service | PRE |  | CAVALIER MOBILE XRAY CO | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02112018 | 02172018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212088 | R0902, R0989 | Oth symptoms and signs involving the circ and resp systems | ICD10 | 02122018 | R0070, Q0092, 71045 | X-RAY EXAM CHEST 1 VIEW | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 7, 7, 7 | CPT | C4 | Fax failed x 2 in Essette at 330-729-4930.  Call to Julie at 330-729-4902. She provided alternate fax number 330-726-0270. |  |  |  |  | 0 |
| 02092018 | 2018-02-09T16:45:29+00:00 | Q20377215 | 000051759-01 | JERRY | HALL | ADENA MEDICAL GROUP LLC | 925366 | JEYANTHI | RAMANARAYANAN | 1538269394 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02102018 | 08112018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212089 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 02122018 | J9280 | MITOMYCIN, 5 MG | HCPCS | 1 | 1 | Approved | 183 | HCPCS | HC | This is being done at the Adena Cancer center. |  |  |  |  | 0 |
| 02122018 | 2018-02-12T11:01:24+00:00 | Q20377479 | 000109551-01 | BRUCE | CLIMER | MARIETTA MEM HSP | 947328 | SHINOJ | PATTALI JAYAVA | 1275849788 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 02122018 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02122018 | 08112018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212092 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 02122018 | J9035, J9305, J9045, J1453, J1100, J2405 | INJECTION, ONDANSETRON HYDROCHLORIDE, PER 1 MG | HCPCS | 6, 6, 6, 6, 24, 24 | 6, 6, 6, 6, 24, 24 | Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T11:22:17+00:00 |  | 000036885-01 | RICHARD | WARDELL | CLEVELAND CLINIC FNDN | 936488 |  | CLEVELAND CLINIC FNDN | 1679525919 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02122018 | 04132018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212094 | Z96651 | Presence of right artificial knee joint | ICD10 | 02122018 | 20611 | DRAIN/INJ JOINT/BURSA W/US | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:04:50+00:00 |  | 000044574-01 | NORMA | MCCLOUD | DR BRADLEY C WILSON INC | 908580 | BRADLEY C | WILSON | 1225020878 | GULF COAST MEDICAL CTR | 908387 | 1982658407 | GULF COAST MEDICAL CENTER | 1982658407 | Out of Network Services | OONS | Pre-Service | PRE |  | GULF COAST MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02122018 | 02192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209099 | S8992XA | Unspecified injury of left lower leg, initial encounter | ICD10 | 02122018 | 97163, 97110, 97140 | MANUAL THERAPY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 8, 8, 8 | CPT | C4 | Call placed to Gary  physical therapy at Gulf Coast Medical. 239-343-1645. He does not have any clinical information  only an order from her provider for PT twice per week.  Agreed to downgrade authorization from Expedited to Standard., Call to provider who ordered PT  Dr. Bradly Wilson who is the mbr's local PCP at  (740) 342-3540. The office closed at noon today., Attempted to contact the mbr at listed phone number of (614) 830-0723.  This number is no longer in service. No alternative number listed., Mbr request for PT received. Mbr phone number on request is 614-420-1206.  Call to this number and s/w mbr.  Mbr states that she was shopping a Macy's when the Escalator malfunctioned causing her to fall. Squad brought her to Lee Health ED in which the ED MD wrote a PT order for her knee. However  Mbr request and facility request are two different PT locations.  She said her daughter would be the best person to talk to about the location for the PT.  Her daughter is Kathy Becker  and she gave permission to s/w her  but she can not find her number at the moment.  She is on the way to a meeting and requested I call back after 11:30 and she will give me her daughters number then., Injury date was 1/29/18, Call to mbr. She gave me her daughter  Kathy Becker  number to call  614-578-8341.  But she is in a meeting until early this afternoon., Call to daughter  Kathy Becker per mbrs request.  LVM requesting call back., Call from Kathy Becker  daughter. Will approve initial PT evaluation., Call to Gary at Gulf Coast Medical.  Informed that the initial evaluation will be approved and to please submit a PA for any additional therapy. |  |  |  |  | 0 |
| 02092018 | 2018-02-09T12:49:03+00:00 |  | 000094210-01 | Linda | Alred | STEINER, ROB S | 935320 | ROB S | STEINER | 1629199526 | DENTAL FACULTY PRACTICE | 938575 | 1164537684 | DENTAL FACULTY PRACTICE | 1164537684 | Out of Network Services | OONS | Pre-Service | PRE |  | DENTAL FACULTY PRACTICE | 02122018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02202018 | 03202018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180209104 | D1039 | Benign neoplasm of other parts of mouth | ICD10 | 02122018 | 88312, 88305, 88346, 88342 | IMUNOCYTOCHEMISTRY EA ANTIBODY | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T09:37:24+00:00 |  | 000060176-01 | ARTHUR | SHORT | AT YOUR DOOR VISITING HE | 935738 | STEPHEN M | CANOWITZ | 1174573224 | CAVALIER MOBILE XRAY CO | 950659 | 1669424743 | CAVALIER MOBILE XRAY CO | 1669424743 | Out of Network Services | OONS | Pre-Service | PRE |  | CAVALIER MOBILE XRAY CO | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02102018 | 03102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212085 | R0902, R0989 | Oth symptoms and signs involving the circ and resp systems | ICD10 | 02122018 | R0070, Q0092, 71046 | X-RAY EXAM CHEST 2 VIEWS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T09:44:17+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 908604 | RALPH S | AUGOSTINI | 1104821552 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03042018 | 04042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212086 | I480, Z98890, Z8679 | Personal history of other diseases of the circulatory system | ICD10 | 02122018 | 93293 | PM PHONE R-STRIP DEVICE EVAL | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T11:34:34+00:00 |  | 000082199-01 | Paul | Brill | DENTAL FACULTY PRACTICE | 909908 | MEADE C | VANPUTTEN | 1407906712 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02222018 | 05222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212095 | C139 | Malignant neoplasm of hypopharynx, unspecified | ICD10 | 02122018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 97026, 97597 | ACTIVE WOUND CARE/20 CM OR < | CPT | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T11:45:10+00:00 |  | 000003574-01 | BARBARA | JOHNSTONE | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02222018 | 05222018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212096 | K1321, K149 | Disease of tongue, unspecified | ICD10 | 02122018 | 99211, 99212, 99213, 99214, 99215, 92507, 92610, 92612, 92526, 31575, 31579 | LARYNGOSCOPY, FLEX SCOPE W STROBOSCOPY | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T12:37:31+00:00 |  | 000080231-01 | Barbara | Fulton | SEYOUM DAFFO BAGE MD | 928461 |  | SEYOUM DAFFO BAGE MD | 1609842640 | SEYOUM DAFFO BAGE MD | 928461 | 1609842640 | SEYOUM DAFFO BAGE MD | 1609842640 | Out of Network Services | OONS | Pre-Service | PRE |  | SEYOUM DAFFO BAGE MD | 02122018 | Approved | MediGold Southeast OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 02152018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212098 | L03115, L03116 | Cellulitis of left lower limb | ICD10 | 02122018 | 99214, 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1 | 1, 1 | Approved, Approved | 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 02122018 | 2018-02-12T12:52:07+00:00 |  | 000060530-01 | RONALD | NOLL | OSU PHYSICAL MED LLC | 900271 |  | OSU PHYSICAL MEDICINE LLC | 1003029455 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02192018 | 03192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180212099 | I890 | Lymphedema, not elsewhere classified | ICD10 | 02122018 | 97161, 97162, 97163, 97164, 97760, 97140, 97530, 97110, 97112, 97116, 97035 | APPLICATION OF A MODALITY, ULTRASOUND, | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29 | CPT | C4 | Call to Nicole 614-366-8339 to discuss PA request.  She explained that this PA request is for the initial PA evaluation. If further treatment recommended  another PA request will be faxed., * initial PT  (physical therapy) evaluation. |  |  |  |  | 0 |
