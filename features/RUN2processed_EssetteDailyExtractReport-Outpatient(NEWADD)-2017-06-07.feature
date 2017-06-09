Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-07
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-07
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
| 05032017 | 2017-05-03T11:45:03+00:00 |  | 000081944-01 | RAYMOND | LEIENDECKER | OSU SURGERY LLC | 934871 | JEAN E | STARR | 1770530693 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Clinical Trial | TRIAL | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 05262017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170503292 | I10 | Essential (primary) hypertension | ICD10 | 06072017 | C1820, 0268T, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 05042017 | 2017-05-04T13:50:09+00:00 |  | 000058004-01 | JANET | BAUMGARTNER | BEZBATCHENKO, MICHAEL J | 919295 | MICHAEL J | BEZBATCHENKO | 1497879332 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06072017 | 09072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170504195 | G4733 | Obstructive sleep apnea (adult) (pediatric) | ICD10 | 06072017 | E0486, 99202, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 05232017 | 2017-05-23T14:33:22+00:00 |  | 000080453-01 | William | McCullen | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | FIDELITY MEDICAL PRODUCT | 949465 | 1689859860 | FIDELITY MEDICAL PRODUCTS LLC | 1689859860 | DME | DME | Pre-Service | PRE |  | FIDELITY MEDICAL PRODUCTS LLC | 06072017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 05312017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170523134 | I872, I890, L97514 | Non-prs chronic ulcer oth prt right foot w necrosis of bone | ICD10 | 06072017 | E0652, E0667 | SEGMENTAL PNEUMATIC APPLIANCE FOR USE WITH PNEUMATIC COMPRESSOR, FULL | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | HCPCS | HC | Spoke with Doug at Fidelity.  Additional information to be submitted including documentation on ulcers and edema beyond the lower extremities., Spoke with Doug at Fidelity.  Acknowledged receiving faxed request and stated additional information on ulcers will be sent over with documentation going back to December 2016 |  |  |  |  | 0 |
| 05252017 | 2017-05-25T10:39:31+00:00 | Q18086091 | 000077409-01 | Roger | Osborn | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04072017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170525106 | I420 | Dilated cardiomyopathy | ICD10 | 06072017 | 33249, 33225, 33241, C1900, C1721, C1722, C1882, C1777, C1895, C1896, 33264, C1882 | CARDIOVERTER-DEFIBRILLATOR, OTHER THAN SINGLE OR DUAL CHAMBER (IMPLANTAB | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Void | 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 05262017 | 2017-05-26T08:14:30+00:00 |  | 000063213-01 | DENNIS | WAUGH | KLISOVIC, REBECCA B | 908494 | REBECCA B | KLISOVIC | 1417962945 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06152017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170526054 | C9100, D89811, Z9481, V4281 | BONE MARROW REPLACED BY TRANSPLANT | ICD10 | 06072017 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82947, 83615, 82040, 84075, 84460, 84450, 82248, 82247, 84155, 83907, 83900, 83901, 83909, 83912, 92565, 85652, G0463, 35266 | RPR BV/A-V FIS C GR NOT VN, UP.EXT. | CPT | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 26 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 26 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T09:22:35+00:00 |  | 000069585-01 | PAUL | VITTITOW | OSU INTERNAL MED LLC | 911166 | MAHMOUD | HOUMSSE | 1780630129 | OSU INTERNAL MED LLC | 937566 | 1740231448 | OSU INTERNAL MEDICINE LLC | 1740231448 | Transplant Eval | TRANS | Pre-Service | PRE |  | OSU INTERNAL MEDICINE LLC | 06072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606014 | B9781, I480, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06072017 | 99214, 93000, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T14:15:11+00:00 |  | 000114381-01 | Karen | Moore | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | OSU HLTH SYS ORTHO ONC P | 927773 | 1710944814 | HISHAM M AWAN | 1578774907 | Out of Network Services | OONS | Pre-Service | PRE | HISHAM M | AWAN | 06072017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 06072017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606155 | S6290XA | Unsp fracture of unsp wrist and hand, init for clos fx | ICD10 | 06072017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 61 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06062017 | 2017-06-06T14:16:14+00:00 |  | 000047945-01 | PATRICIA | KAIN | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 06142017 | 09142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606157 | C73 | Malignant neoplasm of thyroid gland | ICD10 | 06072017 | 99211, 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T16:43:49+00:00 |  | 000116969-01 | Burt | Isaac | ALLIANCE PHYSICIANS INC | 905063 | NATHANIEL J | DITTOE | 1720106685 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | DME | DME | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 06072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03192017 | 05042017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607005 | I420 | Dilated cardiomyopathy | ICD10 | 06072017 | K0606 | AUTOMATIC EXTERNAL DEFIBRILLATOR, WITH INTEGRATED ELECTROCARDIOGRAM ANAL | HCPCS | 1 | 1 | Approved | 47 | HCPCS | HC | Called phone # listed on auth of 937-866-0637 for Dr Nathaniel Dittoe MD is incorrect  Left message for Dr Diitoe's nurse (937-293-3486)  as unsure who receptionist is unsure who Tavara E is, Called Jessica at HealthHelp (Phone # 877-883-5690)  Stated this  was originally auth came from Teresa Asher in Nathaniel Dittoe Phone 614-293-3486 fax 614-293-3605 Auth was for 30 days starting Feb 16  2017 This was authorized till March 19 2017.  Per Jessica MBR started to wear the Wearable Cardioverter November 15  2016 so this was reviewed by a HealthHelp physician at time of first request, Spoke with Teresa from Dr Dittoe's office who stated this referral came from Zoll |  |  |  |  | 0 |
| 06062017 | 2017-06-06T17:50:24+00:00 |  | 000093789-01 | Leila | Hollett | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | Transplant Evaluation | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607007 | K7460, K7581 | Nonalcoholic steatohepatitis (NASH) | ICD10 | 06072017 | 49083, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06072017 | 2017-06-07T09:42:33+00:00 |  | 000049849-01 | JUDITH | TIMSON | CLEVELAND CLINIC FNDN | 911668 | MARAN | THAMILARASAN | 1851492755 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Out of Network Services | OONS | Pre-Service | PRE |  | CLEVELAND CLINIC FNDN | 06072017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06092017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607012 | I10, I272 | Other secondary pulmonary hypertension | ICD10 | 06072017 | 93010, 93306, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06052017 | 2017-06-05T13:53:50+00:00 | Q18577354 | 000115150-01 | MICHAEL | DUMM | OH PHY MED & REHAB INC | 937306 | JON H | PEARLMAN | 1215915897 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06062017 | 07062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607021 | M4727 | Other spondylosis with radiculopathy, lumbosacral region | ICD10 | 06072017 | 72131, 72128 | CAT SCAN THORACIC SPINE WO CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T11:41:28+00:00 | Q18586042 | 000097907-01 | EUGENE | LAUTENSCHLEGER | GENESIS PRIMARY CARE PHY | 914049 | SEAN B | BARNES | 1164620290 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 06072017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607029 | R413 | Other amnesia | ICD10 | 06072017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06062017 | 2017-06-06T13:15:37+00:00 | Q18587739 | 000086882-01 | Arnold | Strausbaugh | MERCY HEALTH PHYSICIANS | 935886 | AIJAZ | AHMED | 1306911961 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY MEMORIAL HOSPITAL - CAH | 06072017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170607039 | S12600A | Unsp disp fx of seventh cervical vertebra, init for clos fx | ICD10 | 06072017 | 72125 | CAT SCAN CERVICAL SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04272017 | 2017-04-27T12:59:17+00:00 |  | 000055971-01 | ROGER | GEORGE | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | JOINT ACTIVE SYSTEMS INC | 920700 | 1639172331 | JOINT ACTIVE SYSTEMS INC | 1639172331 | DME | DME | Pre-Service | PRE |  | JOINT ACTIVE SYSTEMS INC | 06072017 | Denied | TRINITY HEALTH | Fax | Criteria Not Met | Outpatient | 06072017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170428133 | M25561, M6281, R2689 | Other abnormalities of gait and mobility | ICD10 | 06072017 | E1811 | BI-DIRECTIONAL STATIC PROGRESSIVE STRETCH KNEE DEVICE WITH RANGE OF MOTI | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06052017 | 2017-06-05T15:21:54+00:00 |  | 000080657-01 | Marva | Johnson | MT AUBURN NEPHROLOGY INC | 928857 | IAN A | MEYER | 1083836043 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06072017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Outpatient | 06072017 | 06082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170605079 | N186 | End stage renal disease | ICD10 | 06072017 | 90999, 90935 | HEMODIALYSIS PROCED W/SINGL EVAL | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
