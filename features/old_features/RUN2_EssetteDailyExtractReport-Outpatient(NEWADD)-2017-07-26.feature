Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-26
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-07-26
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
| 07252017 | 2017-07-25T08:43:50+00:00 | Q18934569 | 000093688-01 | Penny | Radcliff | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL HLTH PRVDRS | 901263 | 1134154750 | MOUNT CARMEL HEALTH PROVIDERS INC II | 1134154750 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH PROVIDERS INC II | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726038 | R0609 | Other forms of dyspnea | ICD10 | 07262017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 05232017 | 2017-05-23T12:24:59+00:00 |  | 000025507-01 | HELEN | CARVOUR | COLS WEST PARK | 936386 | MARK A | EVANS | 1568479087 | SANCTUARY TUTTLE CROSSING | 936556 | 1740274125 | SANCTUARY TUTTLE CROSSING | 1740274125 | Part B Therapy | OP THER | Pre-Service | PRE |  | SANCTUARY TUTTLE CROSSING | 07262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06012017 | 06302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170523123 | M6281, R2681, R2689, R278, S72402D, Z9181, Z741 | Need for assistance with personal care | ICD10 | 07262017 | 97110, 97530, 97535, 97110, 97112, 97116, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | , , , , , ,  | 30, 30, 30, 30, 30, 30, 30 | CPT | C4 | This auth is a Part B extension from auth# X170426109  so same SCA being used for the extension., Called SNF  spoke with Heather in Therapy  requested the NOMNC to close auth case  she verbalized understanding and with fax NOMNC to MediGold., NOMNC received |  |  |  |  | 0 |
| 07202017 | 2017-07-20T12:31:03+00:00 | Q18908141 | 000088329-01 | Mary | Hale | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08012017 | 08312017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726012 | C4499 | Other specified malignant neoplasm of skin, unspecified | ICD10 | 07262017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T09:19:28+00:00 | Q18935156 | 000080705-01 | Charles | Melanko | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07262017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07312017 | 08302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726015 | C641 | Malignant neoplasm of right kidney, except renal pelvis | ICD10 | 07262017 | 74177, 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T13:43:14+00:00 | Q18927892 | 000118601-01 | Dottie | Baver | DAYTON PHYSICIANS LLC | 925670 | RYAN D | STEINMETZ | 1902007651 | DAYTON PHYSICIANS LLC | 904470 | 1902844947 | DAYTON PHYSICIANS LLC | 1902844947 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | DAYTON PHYSICIANS LLC | 07262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 10232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726058 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 07262017 | G6012 | RADIATION TREATMENT DELIVERY | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T10:14:03+00:00 | Q18936423 | 000055707-01 | RONALD | MCKNIGHT | MOUNT CARMEL HLTH PRVDRS | 906494 | TIMOTHY P | NUSS | 1982649232 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07262017 | 09242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726104 | I200 | Unstable angina | ICD10 | 07262017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T12:15:54+00:00 | Q18938855 | 000033754-01 | LARRY | JOHNSON | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | JACK STANKO MD LLC | 902266 | 1194924431 | JACK STANKO MD LLC | 1194924431 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | JACK STANKO MD LLC | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07282017 | 08272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726081 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 07262017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T09:48:23+00:00 | Q18935845 | 000063392-01 | MARY | MOORE | PHYSICAL MED ASSOCS INC | 906465 | VICTOR BRANDON | THOMPSON | 1154382943 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726095 | M5412 | Radiculopathy, cervical region | ICD10 | 07262017 | 72125 | CAT SCAN CERVICAL SPINE WO CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T15:00:49+00:00 |  | 000101883-01 | Dianna | Snavely | HYPERENSION NEPH CONSULT | 930692 | SALEEM H | BHARMAL | 1336348721 | COLUMBUS MED PARTNERS, L | 949374 | 1912371212 | LIBERTY DIALYSIS - WEST COLUMBUS | 1912371212 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | LIBERTY DIALYSIS - WEST COLUMBUS | 07262017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 07242017 | 10242017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170725170 | N186 | End stage renal disease | ICD10 | 07262017 | 90945, 90989, 90999 | UNLISTED DIALYSIS PROC | CPT | 630, 7, 1 | 630, 7, 1 | Approved, Approved, Approved | 93, 93, 93 | CPT | C4 | Spoke with Carol with FMC Liberty Dialysis of Columbus who stated she did not think MBR has had dialysis in past  She told me to talk with Bonnie @ 614-460-6100, Spoke with Bonnie in  Saleem Bilarmal MD's office 614-460-4100 and she stated plan is when catheter has healed member will start Dialysis with  peritoneal dialysis (Not Hemodialysis) Dialysis west Columbus Peritoneal Catheter was Placed 7/6/17  /stated that Dr Bilarmal goes to FMC Greater Columbus Dialysis Center and FMC Liberty, Spoke with the nurse Dan in Peritoneal Dialysis at FMC Greater Columbus Regional Dialysis Center (614-228-9114) who stated they are not full for PD Stated he will discuss with Unit Manager and Carol and then CB, Spoke with Nurse Leslie Kibney RN who stated MBR started training and CAPD on 7/24/17, Spoke with Melissa Janes RN; Director Physician and Clinical Services @  MediGold  & Angela Saffell  RN; Supervisor Medical Management @  MediGold.  Since Liberty Dialysis West is part of Fersenius Network and Centers are limited Auth to be approved, Essette fax did not fax Authorization and approval manually right faxed to BONNIE/SALEEM H BHARMAL MD  HYPERENSION NEPH CONSULT &, CAROL/SALEEM H BHARMAL MD  FRESENIUS LIBERTY DIALYSIS WEST COLUMBUS |  |  |  |  | 0 |
| 07252017 | 2017-07-25T13:46:31+00:00 | Q18890320 | 000015744-01 | LEWIS | BELL | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726022 | R936 | Abnormal findings on diagnostic imaging of limbs | ICD10 | 07262017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 04282017 | 2017-04-28T17:37:25+00:00 | Q18293682 | 000060552-01 | LEONARD | STEVENS | PICKAWAY HEALTH SERVICES | 905899 | SUDHATHI | CHENNURU | 1689740326 | HEMATOLOGY ONCOLOGY CONS | 938154 | 1780793901 | HEMATOLOGY ONCOLOGY CONSULTANT | 1780793901 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | HEMATOLOGY ONCOLOGY CONSULTANT | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 01052017 | 10282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170502021 | C3432 | Malignant neoplasm of lower lobe, left bronchus or lung | ICD10 | 07262017 | J9305, J2505 | INJECTION, PEGFILGRASTIM, 6 MG | HCPCS | 420, 6 | 420, 6 | Approved, Approved | 297, 297 | HCPCS | HC |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T07:34:57+00:00 | Q18933674 | 000102181-01 | Ronald | Moneypenny | CEN OH UROLOGY GRP INC | 936163 | EVAN B | COHN | 1164463451 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726031 | R310 | Gross hematuria | ICD10 | 07262017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07242017 | 2017-07-24T14:23:23+00:00 | Q18930591 | 000066223-01 | MARJORIE | MISKELL | COLONNADE MED GRP INC | 907233 | H STEVEN | MELIOTES | 1194883165 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 07262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07242017 | 08232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726067 | I720 | Aneurysm of carotid artery | ICD10 | 07262017 | 70549 | MR ANGIOGRAPH NECK W/O&W DYE | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T11:37:44+00:00 | Q18894755 | 000065626-01 | FRANK | HOLTER | OH ONCOLOGY & HEMATOLOGY | 937300 | TARAL | PATEL | 1780632828 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07202017 | 08192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726005 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 07262017 | 71260, 74177, 70491 | CAT SCAN SFT TIS NECK C CONTRAST | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07252017 | 2017-07-25T08:46:32+00:00 | Q18934605 | 000049001-01 | BARBARA | SICKLES | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07252017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726040 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 07262017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06022017 | 2017-06-02T15:59:18+00:00 | Q18568281 | 000091896-01 | Fred | Thomas | SPRINGFIELD HEMATOLOGY & | 920373 | ZAW M | BO | 1578701116 | ONCOLOGY HEMATOLOGY CARE | 922264 | 1790778041 | ONCOLOGY HEMATOLOGY CARE INC | 1790778041 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | ONCOLOGY HEMATOLOGY CARE INC | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06022017 | 08312017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170606088 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 07262017 | J9041 | INJECTION, BORTEZOMIB, 0.1 MG | HCPCS | 600 | 600 | Approved | 91 | HCPCS | HC | J9041: 600 Velcade 2.5mg subq day 1  8  15  22 Q28 days x 6 cycles (24 treatments). Total billing units = 600, Canceled.  Built in error |  |  |  |  | 0 |
| 07242017 | 2017-07-24T17:38:36+00:00 | Q18901532 | 000038046-01 | FRANK | LOEL | ADENA MEDICAL GROUP LLC | 939749 | GREGORY M | THOMPSON | 1750512349 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 07262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170726006 | C44300 | Unsp malignant neoplasm of skin of unspecified part of face | ICD10 | 07262017 | 70553, 70543 | MRI ORBT/FAC/NCK W/O&W DYE | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 07192017 | 2017-07-19T15:23:46+00:00 |  | 000086955-01 | Polly | Perry | MED ASSOCS OF CAMBRIDGE | 922026 | MARK | GOGGIN | 1518962612 | OSU SURGERY LLC | 924394 | 1538117551 | BRADLEY J NEEDLEMAN | 1063451284 | Out of Network Services | OONS | Pre-Service | PRE | BRADLEY J | NEEDLEMAN | 07262017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Services Available In-Network | Outpatient | 07262017 | 07272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170719174 | R140 | Abdominal distension (gaseous) | ICD10 | 07262017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Essette fax did not fax Authorization and approval manually right faxed to  , JENNY/MARK GOGGIN MD  MED ASSOCS OF CAMBRIDGE |  |  |  |  | 0 |
