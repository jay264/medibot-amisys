Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-17
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-04-17-RUN-02
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
| 04112017 | 2017-04-11T13:48:08+00:00 | Q18176283 | 000023124-01 | BETTY | DAVIS | COPC CENTRAL OHIO PRIMAR | 905458 | GIDEON L | KING | 1548255367 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170413013 | R1084 | Generalized abdominal pain | ICD10 | 04172017 | 74178, 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 0, 1 | 1, 1 | Withdrawal, Approved | 31, 31 | CPT | C4 | PROCEDURE CODE CHANGED TO 74176 |  |  |  |  | 0 |
| 04142017 | 2017-04-14T09:59:36+00:00 |  | 000108710-01 | Patsy | Whisman | CEI PHYSICIANS PSC INC | 944220 | KAVITHA R | SIVARAMAN | 1992016976 | CINCINNATI EYE INSTITUTE | 905184 | 1790772804 | CINCINNATI EYE INSTITUTE | 1790772804 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CINCINNATI EYE INSTITUTE | 04172017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 04192017 | 07312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414131 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 04172017 | 66984, 66982 | CATARACT SURGERY, COMPLEX | CPT | 1, 1 | 1, 1 | Approved, Approved | 104, 104 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T09:59:36+00:00 |  | 000098301-01 | Joy | Schatz | CEI PHYSICIANS PSC INC | 921055 | RICHARD R | ROEBUCK | 1750378782 | CINCINNATI EYE INSTITUTE | 905184 | 1790772804 | CINCINNATI EYE INSTITUTE | 1790772804 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CINCINNATI EYE INSTITUTE | 04172017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 05032017 | 08032017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414132 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 04172017 | 66984, 66982 | CATARACT SURGERY, COMPLEX | CPT | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T10:15:42+00:00 |  | 000111620-01 | CARL | ROSSKOPF | CEI PHYSICIANS PSC INC | 921738 | HISHAM H | ARAR | 1609833342 | CINCINNATI EYE INSTITUTE | 905184 | 1790772804 | CINCINNATI EYE INSTITUTE | 1790772804 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CINCINNATI EYE INSTITUTE | 04172017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 05182017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414137 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 04172017 | 66984, 66982 | CATARACT SURGERY, COMPLEX | CPT | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T10:21:51+00:00 |  | 000073542-01 | Sadie | Dickerson | CEI PHYSICIANS PSC INC | 921082 | JOSHUA J | SANDS | 1164476958 | CINCINNATI EYE INSTITUTE | 905184 | 1790772804 | CINCINNATI EYE INSTITUTE | 1790772804 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | CINCINNATI EYE INSTITUTE | 04172017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06212017 | 09212017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414140 | H2513 | Age-related nuclear cataract, bilateral | ICD10 | 04172017 | 66982, 66984 | EXTRCAPSULAR CATARACT RMVL | CPT | 1, 1 | 1, 1 | Approved, Approved | 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T14:17:03+00:00 |  | 000097196-01 | Richard | Kulp | OSU OTOLARYNGOLOGISTS LL | 916952 | RICARDO L | CARRAU | 1740252691 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04172017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04182017 | 07182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170414152 | J387 | Other diseases of larynx | ICD10 | 04172017 | 92507, 92610, 92612, 92526, 31575, 31579, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1, 1, 3 | 1, 1, 1, 1, 1, 1, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T10:32:08+00:00 |  | 000085792-01 | Thomas | Maxwell | OSU INTERNAL MED LLC | 912077 | UDAY S | NORI | 1013923234 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant Eval | TRANS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 04172017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04172017 | 07272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170415003 | Z940, Z944 | Liver transplant status | ICD10 | 04172017 | 99214, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 102, 102 | HCPCS | HC | Patient had liver/kidney transplant in 2006. |  |  |  |  | 0 |
| 04142017 | 2017-04-14T17:19:09+00:00 | Q18205717 | 000110138-01 | Nancy | Montgomery | CAPITAL PARK FAM HLTH CT | 937075 | SUE | LEATHERMAN | 1043217839 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 04172017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 04172017 | 05142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170417005 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 04172017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 28 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T18:57:08+00:00 | Q18169970 | 000091884-01 | Ann | Baker | EYE SURGERY ASSOCS | 916370 | CARL A | MINNING JR | 1316940513 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 04172017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04182017 | 05182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417029 | H532 | Diplopia | ICD10 | 04172017 | 70553, 70543 | MRI ORBT/FAC/NCK W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08302016 | 2016-08-30T12:32:51+00:00 | Q16552428 | 000071698-01 | John | Johnson | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 10052016 | 11042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417050 | R312 | Other microscopic hematuria | ICD10 | 04172017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 396 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T13:56:32+00:00 | Q18112085 | 000028651-01 | Sadie | Hill | COLUMBUS AREA INTEGRATED | 904713 | ANTONIO M | PHILLIPS | 1679684344 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417053 | R634 | Abnormal weight loss | ICD10 | 04172017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T06:51:13+00:00 | Q18171847 | 000073422-01 | Robert | Northrup | ARYEH GORENSTEIN MD INC | 935496 | ANIL S | GOKHALE | 1740353879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 04172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417059 | H905 | Unspecified sensorineural hearing loss | ICD10 | 04172017 | 70480 | CAT SCAN ORBIT UNENHANCED | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T10:53:51+00:00 | Q18175106 | 000103749-01 | Crystal | Six | LOWER LIGHTS CHRISTIAN H | 924708 | JENNIFER J | HARTMAN | 1811008840 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04112017 | 05112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417063 | R911 | Solitary pulmonary nodule | ICD10 | 04172017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T18:59:03+00:00 | Q18183825 | 000032468-01 | DONNA | CONWAY | RCHP WILMINGTON LLC | 947943 | ADEWALE A | FAWOLE | 1073742359 | MADISON COUNTY COMMU ER | 938360 | 0 | MADISON COUNTY COMMU ER PHY | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MADISON COUNTY COMMU ER PHY | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04122017 | 07112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417070 | C50812 | Malignant neoplasm of ovrlp sites of left female breast | ICD10 | 04172017 | J9355 | TRASTUZUMAB, 10 MG | HCPCS | 320 | 320 | Approved | 91 | HCPCS | HC | J9355: 320 Trastuzumab 396mg IV every 21 days x8 cycles (8 treatments).Total billing units 320 |  |  |  |  | 0 |
| 04132017 | 2017-04-13T13:53:54+00:00 | Q18197881 | 000109580-01 | Mary | Edens | COSHOCTON COUNTY MEM HSP | 922046 | DAVID | LOZOWSKI | 1588669543 | COSHOCTON COUNTY MEM HSP | 949437 | 0 | COSHOCTON COUNTY MEMORIAL HOSPITAL A | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | COSHOCTON COUNTY MEMORIAL HOSPITAL A | 04172017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417086 | R634 | Abnormal weight loss | ICD10 | 04172017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T13:56:00+00:00 | Q18197925 | 000112967-01 | Joseph | Sterling | MOUNT CARMEL HLTH PRVDRS | 914407 | KENDRA L | RADCLIFF | 1043425465 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 04172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417088 | R1909 | Other intra-abdominal and pelvic swelling, mass and lump | ICD10 | 04172017 | 74181 | MRI ABDOMEN | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T14:13:24+00:00 | Q18198197 | 000006267-01 | JAMES | WARD | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417097 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 04172017 | 74174 | CT ANGIO ABD&PELV W/O&W/DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T14:22:51+00:00 | Q18198423 | 000062937-01 | GEORGE | MCCOMBS JR | OH GASTRO GRP INC | 918776 | PRIYA M | ROY | 1043492895 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417100 | R112 | Nausea with vomiting, unspecified | ICD10 | 04172017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T14:40:05+00:00 | Q18198756 | 000083663-01 | James | Cummings | ALLIANCE PHYSICIANS INC | 913338 | PRIYA G | JAIN | 1912093360 | GRANDVIEW HOSPITAL & SOU | 902369 | 1053339507 | DAYTON OSTEOPATHIC HOSPITAL 1500 | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DAYTON OSTEOPATHIC HOSPITAL 1500 | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04132017 | 05132017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417107 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 04172017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T14:54:41+00:00 | Q18199063 | 000061482-01 | JUDY | HAYWOOD | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04142017 | 05142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417109 | C50211 | Malig neoplm of upper-inner quadrant of right female breast | ICD10 | 04172017 | 78472 | BL PL IMG,REST,WAL MTN SDY/REG EJ F | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T06:39:30+00:00 | Q18201363 | 000102682-01 | KATHRYNE | DECKER | MOUNT CARMEL HLTH PRVDRS | 914281 | DAVID J | FRID | 1598990434 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417121 | I25119 | Athscl heart disease of native cor art w unsp ang pctrs | ICD10 | 04172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T08:27:24+00:00 | Q18202058 | 000085072-01 | Judy | Armentrout | ORTHOPEDIC ONE INC | 906672 | BRENT A | BICKEL | 1336203645 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04142017 | 05142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417130 | S72002S | Fracture of unspecified part of neck of left femur, sequela | ICD10 | 04172017 | 73700 | CAT SCAN LOWER EXTREMITY WO CONTRST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T08:47:20+00:00 | Q18202389 | 000033946-01 | PATRICIA | FENTON | COPC CENTRAL OHIO PRIMAR | 942599 | JACOB | LIU | 1699031427 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04142017 | 05142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417133 | D329 | Benign neoplasm of meninges, unspecified | ICD10 | 04172017 | 70551 | MRI IMAGING BRAIN; INCLUDING BRAIN STEM; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T10:27:01+00:00 | Q18203890 | 000099398-01 | Elsie | Marcum | ONCOLOGY HEMATOLOGY CARE | 921022 | DAVID | PRATT | 1851492003 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 04172017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04172017 | 05172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417140 | D333 | Benign neoplasm of cranial nerves | ICD10 | 04172017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04142017 | 2017-04-14T10:49:25+00:00 | Q18204351 | 000108780-01 | Chuck | Bowman | WRIGHT STATE PHYSICIANS | 907134 | MINIA | HELLAN | 1699851279 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GRANDVIEW MEDICAL CENTER | 04172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04142017 | 05142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417149 | N35112 | Postinfective bulbous urethral stricture, NEC | ICD10 | 04172017 | 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04172017 | 2017-04-17T15:05:17+00:00 |  | 000099600-01 | Michael | Rieser | OSU OTOLARYNGOLOGISTS LL | 940525 | JAMES W | ROCCO | 1972594091 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 04172017 | Approved | MediGold Medical Only | Fax | Services Not Available In-Network | Outpatient | 04192017 | 07192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170417155 | C329 | Malignant neoplasm of larynx, unspecified | ICD10 | 04172017 | G0463, 92507, 92610, 92612, 92526, 92597, 31575, 31579 | LARYNGOSCOPY, FLEX SCOPE W STROBOSCOPY | CPT | 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92 | CPT | C4 |  |  |  |  |  | 0 |
| 04132017 | 2017-04-13T12:45:09+00:00 |  | 000102373-01 | DANNY | FICKE | ORTHO ASSOC OF SW OH INC | 913140 | JEFFREY S | ROGERS | 1770699829 | ORTHO ASSOC OF SW OH INC | 913140 | 1447422118 | JEFFREY S ROGERS | 1770699829 | Radiology (HH) | OP RAD | Pre-Service | PRE | JEFFREY S | ROGERS | 04172017 | Denied | MediGold Southwest OH Essential Care | Member | Criteria Not Met | Outpatient | 04172017 | 04182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170414148 | M792 | Neuralgia and neuritis, unspecified | ICD10 | 04172017 | 64493, 64494 | INJ PARAVERT F JNT L/S 2 LEV | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 04132017 | 2017-04-13T12:00:23+00:00 |  | 000001299-01 | KATHLEEN | MORGENSTERN | AMERICAN HLTH NETWORK OF | 936119 | VINCENT K | CHU | 1366481822 | CENTERBURG RESPIRATORY A | 949066 | 1083157747 | CENTERBURG RESPIRATORY AND SPECIALTY | 1083157747 | Part B Therapy | OP THER | Pre-Service | PRE |  | CENTERBURG RESPIRATORY AND SPECIALTY | 04172017 | Interim Approval | MediGold Classic Preferred | Fax | SNF | Outpatient |  |  | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Interim Approval | X170413118 | G20 | Parkinson's disease | ICD10 | 04172017 |  |  |  | 0 | 0 |  | 0 |  |  | Physician review sent to Dr Wise and he approved it  shows as this nurse did the approval when in fact Dr Wise approved it. Sent it back to him but it continues to show as this nurse did the approval. |  |  |  |  | 0 |
