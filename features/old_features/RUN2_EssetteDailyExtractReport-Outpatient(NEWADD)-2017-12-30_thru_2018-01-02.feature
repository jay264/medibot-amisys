Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-30_thru_2018-01-02
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-12-30_thru_2018-01-02
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
| 12052017 | 2017-12-05T08:58:55+00:00 |  | 000081761-01 | James | Powers | RETINA CONSULTANTS | 929923 | ABRAHAM S | MITIAS | 1750328241 | RETINAL CONSULTANTS INC | 938742 | 0 | RETINAL CONSULTANTS INC | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | RETINAL CONSULTANTS INC | 01022018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01102018 | 06102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171205059 | H353211, H353221 | EXDTVE AGE-REL MCLR DEGN, LEFT EYE, WITH ACTV CHRDL NEOVAS | ICD10 | 01022018 | 92012, 92014, 67028, J0178, 92134, 92235, 42250 | REPAIR OROANTRAL OR ORONASAL FISTULA, UP TO 1 CM | CPT | 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 152, 152, 152, 152, 152, 152, 152 | CPT | C4 |  |  |  |  |  | 0 |
| 12262017 | 2017-12-26T12:19:00+00:00 | Q20048095 | 000107059-01 | Samuel | Thomas | THE UROLOGY GROUP | 921736 | DOUGLAS E | FEENEY | 1649216326 | THE UROLOGY GROUP | 922524 | 1568404846 | THE UROLOGY GROUP | 1568404846 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | THE UROLOGY GROUP | 01012018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12262017 | 06242018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171228028 | C61 | Malignant neoplasm of prostate | ICD10 | 01012018 | J0897, J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 60, 6 | 60, 6 | Approved, Approved | 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T08:24:20+00:00 | Q20065645 | 000118183-01 | BETTY | CHAMBERLAIN | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052018 | 02042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171230017 | I472 | Ventricular tachycardia | ICD10 | 12302017 | 75561 | CARDIAC MRI FOR MORPH W/DYE,19.65,19.65 | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T07:05:26+00:00 | Q20065154 | 000116591-01 | LOUPCHE | PRCULOVSKI | SPRINGFIELD HEMATOLOGY & | 908018 | FILIX | KENCANA | 1790709301 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 12302017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01032018 | 07022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171230027 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 12302017 | J9299 | INJECTION, NIVOLUMAB | HCPCS | 3000 | 3000 | Approved | 181 | HCPCS | HC | J9299: 3000: INJECTION  NIVOLUMAB  1 MG  Dispensed as: 250.00 mg  2 treatment(s) each cycle  6 cycle(s) |  |  |  |  | 0 |
| 12282017 | 2017-12-28T08:22:30+00:00 | Q20057743 | 000115649-01 | CHRISTINE | TAULBEE | ONCOLOGY HEMATOLOGY CARE | 921848 | BENJAMIN T | HERMS | 1730218876 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 12302017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 12292017 | 06272018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171230046 | C9002 | Multiple myeloma in relapse | ICD10 | 12302017 | J9041 | INJECTION, BORTEZOMIB, 0.1 MG | HCPCS | 624 | 624 | Approved | 181 | HCPCS | HC | J9041: 624: Bortezomib 1.6 mg/m2  IV  days 1  8  15  22  every 35 days  4 cycles |  |  |  |  | 0 |
| 12292017 | 2017-12-29T10:07:14+00:00 | Q20067263 | 000004528-01 | GRACIE | DAVIS | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 01012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01112018 | 07102018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171230047 | C9002 | Multiple myeloma in relapse | ICD10 | 01012018 | J9176, J8999, J8540, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 7740, 9999, 3264, 96 | 7740, 9999, 3264, 96 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 12292017 | 2017-12-29T10:21:29+00:00 | Q20067398 | 000103004-01 | Penny | Burton | MOUNT CARMEL WEST PHYS | 936517 | JONATHAN B | FEIBEL | 1578556817 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 12302017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12292017 | 01282018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171230050 | S8251XD | Disp fx of med malleolus of r tibia, 7thD | ICD10 | 12302017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T07:36:01+00:00 |  | 000096380-01 | Lucien | Mouawad | MEM HSP OF UNION COUNTY | 935268 | ROBERT D | RUPERT JR | 1831305325 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01022018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01022018 | 04022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180102008 | C01 | Malignant neoplasm of base of tongue | ICD10 | 01022018 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 85025, 82565, 84520, 82374, 82435, 84295, 84132, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 01022018 | 2018-01-02T11:30:32+00:00 | Q20073752 | 000091018-01 | Bobby | Manning | LAWS, JAMES G | 902649 | JAMES G | LAWS | 1720016884 | OH INSTITUTE OF CARDIAC | 938624 | 1477576619 | OH INSTITUTE OF CARDIAC CARE INC | 1477576619 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH INSTITUTE OF CARDIAC CARE INC | 01022018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01022018 | 02012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180102015 | R0789 | Other chest pain | ICD10 | 01022018 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12202017 | 2017-12-20T14:48:42+00:00 |  | 000061212-01 | THELMA | JOHNSON | MIDWEST DYSPHAGIA CONSUL | 942344 | ANGELA R | HARDY | 1083048474 | THE VINEYARDS AT CONCORD | 928631 | 1104905173 | THE VINEYARDS AT CONCORD | 1104905173 | Part B Therapy | OP THER | Pre-Service | PRE |  | THE VINEYARDS AT CONCORD | 01022018 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 01022018 | 02052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171220138 | G309, G4089, R262, R296 | Repeated falls | ICD10 | 01022018 | 97010, 97035, 97110, 97112, 97535, 97110, 97530, 97166, 92507, 97532 | COGNITIVE SKILLS DEVELOPMENT | CPT | 16, 16, 16, 16, 16, 16, 16, 1, 16, 16 | 16, 16, 16, 16, 16, 16, 16, 1, 16, 16 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 35, 35, 35, 35, 35, 35, 35, 35, 35, 35 | CPT | C4 | PART B THERAPY FORWARDED TO CONTRACTING FOR SCA, SCA REQUEST FAILED TO E-MAIL  TO CONTRACTING THROUGH ESSSETE  E-MAILED IT MANUALLY, PON: Extended time to make a decision because the single case agreement has yet to be received., Received SCA   auth request reviewed |  |  |  |  | 0 |
| 12062017 | 2017-12-06T14:44:03+00:00 | Q19925551 | 000082566-01 | Sandra | Stewart | COPC CENTRAL OHIO PRIMAR | 905522 | AUDRA J | PARKER | 1073737763 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 01012018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 12062017 | 01052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171207106 | R1032 | Left lower quadrant pain | ICD10 | 01012018 | 74178, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 12182017 | 2017-12-18T13:10:49+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01022018 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 12192017 | 06192018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171219083 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 01022018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 85730, 85610, 80048, 83735, 84100, 84550, 84165, 84155, 84040, 84075, 84460, 84450, 82248, 82247, 84155, 83615, 86900, 86901, 86850, 82728, 86695, 86645, 86644, 86696, 87801, 86665, 86703, 87340, 86803, 83900, 87081, 85730, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183 | HCPCS | HC |  |  |  |  |  | 0 |
| 12282017 | 2017-12-28T17:13:34+00:00 |  | 000100420-01 | Bernard | Rossi | LADSON, DARNELL | 907484 | DARNELL | LADSON | 1346332731 | LADSON, DARNELL | 907484 | 1346332731 | DARNELL LADSON | 1346332731 | OP Behavioral Health | OP BH | Pre-Service | PRE | DARNELL | LADSON | 01022018 | Approved | MediGold Essential Care | Member | Services Not Available In-Network | Outpatient | 02012018 | 08012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X171229026 | F330, F901 | Attn-defct hyperactivity disorder, predom hyperactive type | ICD10 | 01022018 | 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3 | 3 | Approved | 182 | CPT | C4 |  |  |  |  |  | 0 |
