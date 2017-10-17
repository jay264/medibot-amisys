Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-13_thru_2017-10-15
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-10-13_thru_2017-10-15
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
| 10102017 | 2017-10-10T07:44:00+00:00 | Q19505238 | 000112618-01 | Kenneth | Jackson | ALLIANCE PHYSICIANS INC | 913319 | GREGORY A | GORDON | 1518917301 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 10132017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 10162017 | 04142018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171013015 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 10132017 | J2469, J9305, J1453, J9035, J9045, J1100, J0897 | Denosumab injection | HCPCS | 60, 732, 900, 1026, 90, 480, 720 | 60, 732, 900, 1026, 90, 480, 720 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 181, 181, 181, 181, 181, 181, 181 | HCPCS | HC | J9305: 732: INJECTION  PEMETREXED  10 MG  Dispensed as: 1220.00 mg  1 treatment(s) each cycle  6 cycle(s): J9035: 1026: INJECTION  BEVACIZUMAB  10 MG  Dispensed as: 1709.00 mg  1 treatment(s) each cycle  6 cycle(s): J9045: 90: INJECTION  CARBOPLATIN  50 MG  Dispensed as: 734.00 mg  1 treatment(s) each cycle  6 cycle(s): J0897: 720: INJECTION  DENOSUMAB  1 MG  Dispensed as: 120.00 mg  1 treatment(s) each cycle  6 cycle(s): J2469: 60: Palonosetron 0.25 mg  IV  day 1  Dispensed as: 0.25 mg  1 treatment(s) each cycle  6 cycle(s): J1453: 900: Fosaprepitant 150 mg  IV  day 1  Dispensed as: 150.00 mg  1 treatment(s) each cycle  6 cycle(s): J1100: 480: Dexamethasone Sodium Phosphate up to 20 mg  IV  up to 4 days  Dispensed as: 20.00 mg  4 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 10122017 | 2017-10-12T10:45:38+00:00 |  | 000093790-01 | Clarence | Vinson | NORTH CEN OHIO FAM CARE | 937030 | RICHARD | KLUMP | 1114971512 | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 928505 | 1881948073 | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 1881948073 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CENTRAL OHIO UROLOGY SURGERY CTR LLC | 10132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10192017 | 11192017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012142 | R9720 | ELEVATED PROSTATE SPECIFIC ANTIGEN [PSA] | ICD10 | 10132017 | 55700 | BIOPSY PROSTATE-NEEDLE-1 OR MORE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T09:23:00+00:00 | Q19520339 | 000053748-01 | JEFFREY | DEEMS | CEN OH UROLOGY GRP INC | 935062 | MICHAEL A | WODARCYK | 1407827264 | CEN OH UROLOGY GRP INC | 903823 | 1396780466 | CENTRAL OH UROLOGY GROUP INC | 1396780466 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | CENTRAL OH UROLOGY GROUP INC | 10132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 04092018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171013079 | C61 | Malignant neoplasm of prostate | ICD10 | 10132017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 6 | 6 | Approved | 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 10092017 | 2017-10-09T15:59:33+00:00 |  | 000100569-01 | Daniel | Belcher | THE VINEYARDS AT CONCORD | 928631 |  | THE VINEYARDS AT CONCORD | 1104905173 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 10132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 10112017 | 11112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010060 | G20, R293, R2990, R2991, F3289 | OTHER SPECIFIED DEPRESSIVE EPISODES | ICD10 | 10132017 | 97116, 97110, 97112, 97530, 97535, 97532 | COGNITIVE SKILLS DEVELOPMENT | CPT | 16, 16, 16, 16, 16, 16 | 16, 16, 16, 16, 16, 16 | Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32 | CPT | C4 | Per David:  Barb from Vinyard is calling about this auth.  I guess the original one ended yesterday and this is an extenstion.  I told her it was still in process., , Returned call to Barb  LVMM with my contact info., This is a continuation of auth X170911117.  See attached documents for SCA., Per Molly Barr we are no longer keeping case open until discharge (NOMNC) due to their is a report to follow up on NOMNC's.  So will close auth due to NO NOMNC is needed. |  |  |  |  | 0 |
| 09082017 | 2017-09-08T08:03:39+00:00 |  | 000083870-01 | Grace | Wilson | GERIATRIC ASSOC OF ZANES | 923234 | PAUL D | MUMMA | 1619958121 | ZANESVILLE HEALTH AND RE | 945472 | 1124418926 | ZANESVILLE HEALTH AND REHABILITATION | 1124418926 | Part B Therapy | OP THER | Pre-Service | PRE |  | ZANESVILLE HEALTH AND REHABILITATION | 10132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09222017 | 10212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170908103 | Z89612 | Acquired absence of left leg above knee | ICD10 | 10132017 |  |  |  | 0 | 0 |  | 0 |  |  | This Part B auth is an extension of auth # X170810127; SCA continues to this auth  see attached documents., Completed physician review and placed into the Medical Queue for review., Letter is written in appropriate language with no abbreviations and is therefore approved., Called Tracy  no answer then called SNF transferred to SW Megan  no answer  left a voice mail message informing NOMNC was faxed and needed to be signed today with my phone number to call with questions. Then called back/spoke with Elli in admissions  she confirmed that fax was received and that member's husband in visiting at present and will explain form and have husband sign form. Thanked., Called Tracy  no answer  left voice mail message requesting the signed NOMNC to close out case., KEPRO Fast Track Appeal notification received., Received notification from Kepro that a FTA was filed 9/12/2017., Late ENTRY: Noted around 1300 that I received an email from Molly Barr that she received a Kepro call last night  stating the recent cut letter was void  as no clinical was received. THEN I looked on Kepro website which showed that records were received but process was not completed. THEN around 1445  I called Tracy at facility  she confirmed that paperwork was sent to Kepro and that facility had reissued the NOMNC on 09/11/2017 since the NOMNC that I sent on 9/8/17 was not completed by facility. THEN around 1500 called Kepro to discuss case  placed on hold  spoke with Debra re case at 1530--she informed case was voided due to facility records were received on 9/12/17 at 1805 and dead line for records is 1700 so received in an untimely manner from facility that is way case was voided and a new NOMNC needs issued. Thanked for update.  THEN around 1600 today-- I faxed facility a new NOMNC  DENC  and notice of denial for member. THEN around 1615--  I called Tracy at Facility  she confirmed that NOMNC was received and would make sure the NOMNC is completed today.Also  updated Molly Barr (Director of Health Services) on the above., Per Kepro  a FTA was filed today., KEPRO Fast Track Appeal notification received., Per Kepro  Member had her appeal deemed invalid due to an untimely filing to request a FTA. Kepro referred her to MediGold for any other appeal options she may have., Called Tracy  no answer  left a voice message requesting the signed NOMNC to close out extended case with my phone number to call back with any questions., Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification from the Medical Director that an expedited appeal was processed through MediGold per member/family request and was approved for Part B Physical Therapy., Spoke with Tracy at SNF  updated that PT was approved through expedited appeal process and approved auth was faxed to facility  she verbalized understanding., Per Molly Barr  we are no longer keeping the case open until discharge (NOMNC) due to a back end report to follow up on NOMNC's so will close auth case now. |  |  |  |  | 0 |
| 10092017 | 2017-10-09T15:22:25+00:00 |  | 000102073-01 | Regina | Miller | OSU HLTH SYS ORTHO ONC P | 903526 | JOEL | MAYERSON | 1720041098 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10132017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 10242017 | 01242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171009155 | Z96611 | Presence of right artificial shoulder joint | ICD10 | 10132017 | 97161, 97162, 97163, 97164, 97760, 97140, 97535, 97530, 97110, 97112, 97116, 97035, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T09:56:00+00:00 | Q19515150 | 000015867-01 | LOWELL | CUPP | OH GASTRO GRP INC | 936338 | RICHARD A | EDGIN | 1477547719 | MOUNT CARMEL HLTH PRVDRS | 914650 | 1013942630 | MOUNT CARMEL HEALTH PROVIDERS | 1013942630 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS | 10132017 | Approved | MediGold Classic Preferred |  | Medical Criteria Met | Outpatient | 10112017 | 11102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012024 | Q438 | Other specified congenital malformations of intestine | ICD10 | 10132017 | 74261 | CT COLONOGRAPHY, W/O DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 10112017 | 2017-10-11T06:44:00+00:00 | Q19512635 | 000020886-01 | CARL | EUBEL | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ZOLL LIFECOR CORPORATION | 10132017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10112017 | 12102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171013019 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 10132017 | 93745, K0606, K0607, K0608, K0609 | REPLACEMENT ELECTRODES FOR USE WITH AUTOMATED EXTERNAL DEFIBRILLATOR, GA | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 10022017 | 2017-10-02T10:31:02+00:00 |  | 000091307-01 | Frances | Miller | WELLER HEALTH TRANSITION | 917780 | CHRISTINE B | WELLER | 1811953318 | SPRINGFIELD MASONIC COMM | 939421 | 1962510305 | SPRINGFIELD MASONIC COMMUNITY | 1962510305 | Part B Therapy | OP THER | Post-Service | POST |  | SPRINGFIELD MASONIC COMMUNITY | 10132017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 09252017 | 10222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X171013115 | I639, M6281 | Muscle weakness (generalized) | ICD10 | 10132017 | 97110, 97112, 97140, 97166, 97530, 97535 | SELF CARE/HOME MANAGEMENT TRAINING (EG, ACTIVITIES OF DAILY | CPT | 12, 12, 12, 12, 12, 12 | 12, 12, 12, 12, 12, 12 | Approved, Approved, Approved, Approved, Approved, Approved | 28, 28, 28, 28, 28, 28 | CPT | C4 |  |  |  |  |  | 0 |
| 10122017 | 2017-10-12T07:21:51+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 948088 | JOHN | CURFMAN | 1780039412 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 10152017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 10122017 | 01122018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171012081 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 10152017 | 99211, 99212, 99213, 99214, 99215, 36415, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 10102017 | 2017-10-10T09:25:13+00:00 |  | 000071892-01 | Alice | Dillman | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 10152017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 11072017 | 03072018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171010144 | M4120 | Other idiopathic scoliosis, site unspecified | ICD10 | 10152017 | 99212, 99213, 99214, 99215, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 121, 121, 121, 121, 121 | HCPCS | HC |  |  |  |  |  | 0 |
