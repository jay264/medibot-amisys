Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-18
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-18
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
| 06212017 | 2017-06-21T11:13:51+00:00 |  | 000080168-01 | Daniel | Hunter | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | MOLECULAR PROFILING INSTITUTE | 915766 | 1013973866 | MOLECULAR PROFILING INSTITUTE | 1013973866 | Genetic Testing | OP GEN | Pre-Service | PRE |  | MOLECULAR PROFILING INSTITUTE | 07182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06232017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621158 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 07182017 | 81170, 81202, 81211, 81235, 81245, 81272, 81295, 81298, 81311, 81314, 81401, 81403, 81404, 81405, 81406, 81407, 81408, 81479, 81401, 81405, 81479, 88360 | TUMOR IMMUNOHISTOCHEM/MANUAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 05052017 | 2017-05-05T19:24:46+00:00 | Q18318140 | 000098653-01 | Kathleen | Jackson | ALLIANCE PHYSICIANS INC | 902333 | ALEJANDRO R | CALVO | 1457341760 | ALLIANCE PHYS BH INC | 916872 | 1780852228 | ALLIANCE PHYSICIANS BH INC | 1780852228 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ALLIANCE PHYSICIANS BH INC | 07182017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 05102017 | 11062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170622176 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 07182017 | J9045, J9305, J1453 | Fosaprepitant injection | HCPCS | 60, 492, 900 | 60, 492, 900 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T14:28:24+00:00 |  | 000031212-01 | JERRY | MUSICK | OSU INTERNAL MED LLC | 935660 | PHILIP T | DIAZ | 1114930476 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 08152017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626125 | J439 | Emphysema, unspecified | ICD10 | 07182017 | 36600, 94726, 94620, 94010, 94729, 99213, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T08:27:22+00:00 | Q18728055 | 000045553-01 | Ronald | Young | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170627127 | Z45018 | Encounter for adjust and mgmt oth prt cardiac pacemaker | ICD10 | 07172017 | 33264, C1882 | CARDIOVERTER-DEFIBRILLATOR, OTHER THAN SINGLE OR DUAL CHAMBER (IMPLANTAB | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06272017 | 2017-06-27T15:38:27+00:00 |  | 000110024-01 | Norma | Kohman | COSHOCTON COUNTY MEM HSP | 913615 | DUANE P | POOL | 1073599031 | ZOLL SERVICES LLC | 907205 | 1164535274 | ZOLL LIFECOR CORPORATION | 1164535274 | Integrated Oncology (HH) | ONCOL | Post-Service | POST |  | ZOLL LIFECOR CORPORATION | 07172017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06192017 | 07192017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X170627177 | I420 | Dilated cardiomyopathy | ICD10 | 07172017 | K0606 | AUTOMATIC EXTERNAL DEFIBRILLATOR, WITH INTEGRATED ELECTROCARDIOGRAM ANAL | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06292017 | 2017-06-29T12:02:22+00:00 |  | 000042352-01 | STELLA | HERNANDEZ | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 07182017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07062017 | 08062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170629153 | C07 | Malignant neoplasm of parotid gland | ICD10 | 07182017 | 92550, 92552, 92553, 92557, 92567, 92588, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 32, 32, 32, 32, 32, 32, 32 | HCPCS | HC |  |  |  |  |  | 0 |
| 07122017 | 2017-07-12T11:29:10+00:00 |  | 000080453-01 | William | McCullen | COLONIAL CITY INTL MED | 900430 | FREDERICK C | CARROLL | 1962431957 | FIDELITY MEDICAL PRODUCT | 949465 | 1689859860 | FIDELITY MEDICAL PRODUCTS LLC | 1689859860 | DME | DME | Post-Service | POST |  | FIDELITY MEDICAL PRODUCTS LLC | 07182017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 07122017 | 09122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Approved | X170712158 | I372, I890, L97514 | Non-prs chronic ulcer oth prt right foot w necrosis of bone | ICD10 | 07182017 | A6545 | Grad comp non-elastic BK | HCPCS | 2 | 2 | Approved | 63 | HCPCS | HC |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T10:01:02+00:00 |  | 000012281-01 | Mary | Maynard | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07182017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07182017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170717114 | N186 | End stage renal disease | ICD10 | 07182017 | 90935, 90999 | UNLISTED DIALYSIS PROC | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T09:26:11+00:00 | Q18862696 | 000101519-01 | James | Wilson | OSU SURGERY LLC | 918628 | KYLE A | PERRY | 1821209925 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 07182017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07142017 | 08132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718011 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 07182017 | 78815 | TUMORIMAGE PET/CT SKUL-THIGH | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07142017 | 2017-07-14T15:23:34+00:00 | Q18868940 | 000094824-01 | Jacqueline | Nickels | MERCY HEALTH PHYSICIANS | 947499 | CORY D | BARRAT | 1336450840 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 07182017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718031 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 07182017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07182017 | 2017-07-18T07:50:18+00:00 |  | 000109241-01 | PATRICIA | FRALEY | NEUROSCIENCE CENTER | 915908 | YASUSHI | KISANUKI | 1518182419 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 07182017 | Approved | MediGold Essential Care | Member Representative | Services Not Available In-Network | Outpatient | 07182017 | 08182017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718036 | G119, G231, R760 | Raised antibody titer | ICD10 | 07182017 | 71020, 62270, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 32, 32, 32 | HCPCS | HC | PHONE CALL TO OSU NEUROSCIENCE  REQUESTING CLINICALS SHOWING TREATMENT PLAN AND ONGOING CARE. AS THERE HAS NEVER BEEN A REFERRAL MADE TO MEDIGOLD FOR OON SERVICES WITH OSU NEUROLOGY. SPOKE TO JOSH  HE TOOK INFORMATION AND WILL FAX OVER DOCUMENTATION. |  |  |  |  | 0 |
| 07142017 | 2017-07-14T16:42:22+00:00 | Q18869666 | 000078164-01 | Dollie | Prater | GENESIS MEDICAL GRP LLC | 927959 | SHALINI | GUPTA | 1740446343 | GENESIS HLTHCARE SYSTEM | 904350 | 1598868655 | GENESIS HEALTHCARE SYSTEM 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM 1500 | 07182017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 10092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718048 | C3491 | Malignant neoplasm of unsp part of right bronchus or lung | ICD10 | 07182017 | 77412 | RADIATION TREATMENT DELIVERY; UP TO 5 MEV; TECH ONLY | CPT | 1 | 1 | Approved | 91 | CPT | C4 |  |  |  |  |  | 0 |
| 07152017 | 2017-07-15T08:29:57+00:00 | Q18870061 | 000088176-01 | Jo | King | MOUNT CARMEL HLTH PRVDRS | 936208 | JOSEPH H | CUNNINGHAM | 1619950474 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07172017 | 08162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718050 | D869 | Sarcoidosis, unspecified | ICD10 | 07182017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T09:36:22+00:00 | Q18872572 | 000052886-01 | IDA | MURRAY | MOUNT CARMEL HLTH PRVDRS | 907033 | PATRINA V | YAO | 1578719639 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07182017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718073 | D320 | Benign neoplasm of cerebral meninges | ICD10 | 07182017 | 70552 | MRI BRAIN; INCLUDING BRAIN STEM; WITH CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07172017 | 2017-07-17T10:44:43+00:00 | Q18874053 | 000093672-01 | Herman | Hendrickson Jr | MOUNT CARMEL HLTH PRVDRS | 932649 | GREGORY B | COMFORT | 1144482415 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 07182017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 09222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170718086 | R9439 | Abnormal result of other cardiovascular function study | ICD10 | 07182017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 07072017 | 2017-07-07T10:24:22+00:00 |  | 000070340-01 | Sherree | Davenport | PICKAWAY HEALTH SERVICES | 913727 | KEVIN M | SELLERS | 1306085220 | NEUROSCIENCE CENTER | 937422 | 1962431817 | NEUROSCIENCE CENTER | 1962431817 | Out of Network Services | OONS | Post-Service | POST |  | NEUROSCIENCE CENTER | 07182017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 07182017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170707129 | G35 | Multiple sclerosis | ICD10 | 07182017 | 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | , , , ,  | 0, 0, 0, 0, 0 | CPT | C4 | PHONE CALL TO DR SELLARS OFFICE  SPOKE TO KIM  REQUESTED CLINICAL DOCUMENTATION SUPPORTING MS FOR REFERRAL TO OSU NEUROLOGY |  |  |  |  | 0 |
| 07102017 | 2017-07-10T15:10:59+00:00 |  | 000065467-01 | WILMA | CLARK | OH MEDICAL TRANSPORT LLC | 922193 |  | OH MEDICAL TRANSPORT LLC | 1316267297 | OH MEDICAL TRANSPORT LLC | 922193 | 1316267297 | OH MEDICAL TRANSPORT LLC | 1316267297 | Out of Network Services | OONS | Post-Service | POST |  | OH MEDICAL TRANSPORT LLC | 07182017 | Denied | MediGold Essential Care | Fax | Administrative Denial | Outpatient | 07182017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170711040 | S02401A | Maxillary fracture, unsp, init encntr for closed fracture | ICD10 | 07182017 | A0428, A0425 | GROUND MILEAGE, PER STATUTE MILE | HCPCS | 0, 0 | 1, 1 | ,  | 0, 0 | HCPCS | HC |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T15:07:59+00:00 |  | 000030709-01 | CURTIS | SCARBERRY | MEDTRONIC CARE MANAGEMEN | 950865 |  | MEDTRONIC CARE MANAGEMENT SERVICES L | 1760898001 | MEDTRONIC CARE MANAGEMEN | 950865 | 1760898001 | MEDTRONIC CARE MANAGEMENT SERVICES L | 1760898001 | DME | DME | Post-Service | POST |  | MEDTRONIC CARE MANAGEMENT SERVICES L | 07182017 | Denied | MediGold Essential Care | Fax | Administrative Denial | Outpatient | 07182017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170711112 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 07182017 | 93299 | ICM/ILR REMOTE TECH SERV | CPT | 0 | 1 |  | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T15:07:59+00:00 |  | 000055111-01 | EULALIA | BALLENGER | MEDTRONIC CARE MANAGEMEN | 950865 |  | MEDTRONIC CARE MANAGEMENT SERVICES L | 1760898001 | MEDTRONIC CARE MANAGEMEN | 950865 | 1760898001 | MEDTRONIC CARE MANAGEMENT SERVICES L | 1760898001 | DME | DME | Post-Service | POST |  | MEDTRONIC CARE MANAGEMENT SERVICES L | 07182017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 07182017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170711113 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 07182017 | 93299 | ICM/ILR REMOTE TECH SERV | CPT | 0 | 1 |  | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T15:07:59+00:00 |  | 000021475-01 | RINNEL | DUNCAN | MEDTRONIC CARE MANAGEMEN | 950865 |  | MEDTRONIC CARE MANAGEMENT SERVICES L | 1760898001 | MEDTRONIC CARE MANAGEMEN | 950865 | 1760898001 | MEDTRONIC CARE MANAGEMENT SERVICES L | 1760898001 | DME | DME | Post-Service | POST |  | MEDTRONIC CARE MANAGEMENT SERVICES L | 07182017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 07182017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170711115 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 07182017 | 93299 | ICM/ILR REMOTE TECH SERV | CPT | 0 | 1 |  | 0 | CPT | C4 |  |  |  |  |  | 0 |
| 07102017 | 2017-07-10T17:08:22+00:00 |  | 000062385-01 | JACQUELINE | DODRILL | KATABAY, ADIL O | 907517 | ADIL O | KATABAY | 1346204039 | MARION PAIN CENTER LLC | 925769 | 1326360082 | MARION PAIN CENTER LLC | 1326360082 | Out of Network Services | OONS | Post-Service | POST |  | MARION PAIN CENTER LLC | 07182017 | Denied | MediGold Classic Preferred | Fax | Administrative Denial | Outpatient | 07182017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Post-Service | Denied | X170711120 | M461, M47817, M797 | Fibromyalgia | ICD10 | 07182017 | 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0 | 3 |  | 0 | CPT | C4 |  |  |  |  |  | 0 |
