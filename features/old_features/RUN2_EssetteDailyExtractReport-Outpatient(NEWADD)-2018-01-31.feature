Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-31
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2018-01-31
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
| 01292018 | 2018-01-29T15:10:30+00:00 | Q20278183 | 000081423-01 | Lois | Loraditch | FAIRFIELD HLTHCARE PROFS | 932438 | OMAR | AL-NOURI | 1770742264 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01312018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02192018 | 03212018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131033 | R911 | Solitary pulmonary nodule | ICD10 | 01312018 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01292018 | 2018-01-29T15:27:42+00:00 | Q20278512 | 000042078-01 | DEAN | OYER | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL HLTH SYS | 947612 | 1457617235 | THERESA H LEITE | 1679558183 | Radiology (HH) | OP RAD | Pre-Service | PRE | THERESA H | LEITE | 01312018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131036 | R350 | Frequency of micturition | ICD10 | 01312018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01292018 | 2018-01-29T15:34:30+00:00 | Q20278662 | 000099073-01 | Richard | Landis | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07022018 | 08012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131038 | C61 | Malignant neoplasm of prostate | ICD10 | 01312018 | 72197 | MRI PELVIS W/O & W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01262018 | 2018-01-26T10:16:00+00:00 | Q20264842 | 000108219-01 | John | Houston | THE UROLOGY GROUP | 920823 | GARY M | KIRSH | 1770525073 | THE UROLOGY GROUP | 947671 | 1619200664 | BENJAMIN E NIVER | 1043657067 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE | BENJAMIN E | NIVER | 01312018 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 02062018 | 08052018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180130017 | C61 | Malignant neoplasm of prostate | ICD10 | 01312018 | J9217, J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1, 0 | 1, 1 | Approved, Void | 181, 181 | HCPCS | HC | J9217: 6: Oncology - Prostate: Leuprolide 45 mg  IM  day 1  every 6 months  1 cycle |  |  |  |  | 0 |
| 01302018 | 2018-01-30T04:54:26+00:00 | Q20280060 | 000083402-01 | Michael | Wells | MARIETTA HLTH CARE PHYS | 922136 | VIVEK V | ABHYANKAR | 1083607089 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 01312018 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 07302018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131040 | C187 | Malignant neoplasm of sigmoid colon | ICD10 | 01312018 | J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 8 | 8 | Approved | 181 | HCPCS | HC | J2505: 8: PegFilgrastim (Neulasta) 6 mg  SQ  once  every 14 days  8 cycles |  |  |  |  | 0 |
| 01302018 | 2018-01-30T06:40:18+00:00 | Q20280133 | 000011430-01 | JACK | MOORE | CEN OH PRIMARY CARE SPEC | 934893 | KIMBERLY A | STOCK | 1053307827 | COPC CENTRAL OHIO PRIMAR | 948084 | 1194705194 | SVETLANA NOVAK | 1598008179 | Radiology (HH) | OP RAD | Pre-Service | PRE | SVETLANA | NOVAK | 01312018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131042 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 01312018 | 74175 | CT ANGIO ABDOM W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T08:11:21+00:00 | Q20280811 | 000063643-01 | BRENDA | WELCH | MOUNT CARMEL HLTH PRVDRS | 929338 | GENEVIEVE T | CO-FAUSTINO | 1689905150 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 01312018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131053 | R109 | Unspecified abdominal pain | ICD10 | 01312018 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T09:33:09+00:00 | Q20282370 | 000065207-01 | HAZEL | CURTIS | FAIRFIELD HLTHCARE PROFS | 918916 | ALYSON A | ADAMS | 1477820462 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 01312018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131062 | R634 | Abnormal weight loss | ICD10 | 01312018 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T09:42:28+00:00 | Q20282689 | 000116129-01 | Gladys | Leach | ALLIANCE PHYSICIANS INC | 910681 | RAYMOND J | POELSTRA | 1972530848 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 01312018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131064 | S22000S | Wedge compression fracture of unsp thor vertebra, sequela | ICD10 | 01312018 | 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01312018 | 2018-01-31T08:54:04+00:00 |  | 000103719-01 | Dolly | Dunn | OSU SURGERY LLC | 908006 | MICHAEL R | GO | 1225297377 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 01312018 | Approved | MediGold Southwest OH Essential Care | Fax | Services Not Available In-Network | Outpatient | 02062018 | 03062018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131071 | I70261 | Athscl native arteries of extremities w gangrene, right leg | ICD10 | 01312018 | 99201, 99202, 99203, 99204, 99205 | OFFICE CALL - NEW PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29 | CPT | C4 | PON: Member approved to be seen at OSU East wound center. |  |  |  |  | 0 |
| 01302018 | 2018-01-30T12:11:00+00:00 | Q20285960 | 000058710-01 | BARBARA | PROEHL | GLATFELTER FAM MED CTR | 903990 | JODI C | BENNETT | 1396808150 | ADENA MEDICAL GROUP LLC | 928524 | 1235468083 | CHRISTIN L SPAHN | 1861654105 | Radiology (HH) | OP RAD | Pre-Service | PRE | CHRISTIN L | SPAHN | 01312018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01302018 | 03012018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131089 | I720 | Aneurysm of carotid artery | ICD10 | 01312018 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T13:23:22+00:00 | Q20287099 | 000042831-01 | LARRY | REEFER | MOUNT CARMEL HLTH PRVDRS | 936924 | CHARLES R | HOLDEN | 1093713133 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MADISON COUNTY HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 02022018 | 03042018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131091 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 01312018 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T13:34:52+00:00 | Q20287232 | 000104341-01 | TOM | STREAM | HEUMAN, MICHAEL D | 931881 | MICHAEL D | HEUMAN | 1457349680 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KNOX COMMUNITY HOSPITAL | 01312018 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 01312018 | 03022018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131092 | R1031 | Right lower quadrant pain | ICD10 | 01312018 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T10:20:33+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 943770 | MEGHAN | KROMER | 1477931533 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 01312018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 01302018 | 07312018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131096 | D849, E119, Z794, Z9481 | Bone marrow transplant status | ICD10 | 01312018 | 99211, 99212, 99213, 99214, 99215, 36415, 85025, 92565, 82565, 84520, 82374, 82435, 84295, 84132, 82310, 82040, 84075, 84460, 84450, 82247, 82248, 84155, 83615, 87497, 80197, 83735 | MAGNESIUM, BLOOD, CHEMICAL | CPT | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 183 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T15:35:11+00:00 |  | 000097392-01 | Stephen | Miller | OSU INTERNAL MED LLC | 936061 | WILLIAM T | ABRAHAM | 1093755944 | OSU INTERNAL MED LLC | 937566 | 1740231448 | OSU INTERNAL MEDICINE LLC | 1740231448 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU INTERNAL MEDICINE LLC | 01312018 | Approved | MediGold Medical Only | Fax | Medical Criteria Met | Outpatient | 02152018 | 03152018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131099 | E039, R0602, Z79899 | Other long term (current) drug therapy | ICD10 | 01312018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 29, 29, 29, 29, 29 | CPT | C4 |  |  |  |  |  | 0 |
| 01302018 | 2018-01-30T15:05:09+00:00 |  | 000116078-01 | JOSEPH | SANOK JR | OSU INTERNAL MED LLC | 927197 | SITARAMESH | EMANI | 1114942752 | OSU INTERNAL MED LLC | 937566 | 1740231448 | OSU INTERNAL MEDICINE LLC | 1740231448 | Out of Network Services | OONS | Pre-Service | PRE |  | OSU INTERNAL MEDICINE LLC | 01312018 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 02232018 | 05232018 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X180131101 | I255, I5022 | Chronic systolic (congestive) heart failure | ICD10 | 01312018 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 4, 4, 4, 4, 4 | 4, 4, 4, 4, 4 | Approved, Approved, Approved, Approved, Approved | 90, 90, 90, 90, 90 | CPT | C4 |  |  |  |  |  | 0 |
