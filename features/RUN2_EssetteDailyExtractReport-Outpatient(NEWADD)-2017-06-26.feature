Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-26
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-26
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
| 01312017 | 2017-01-31T09:59:43+00:00 |  | 000081734-01 | James | Jack | OSU EYE PHYS & SURGEONS | 915820 | COLLEEN | CEBULLA | 1144264334 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06262017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 02252017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170201029 | C6931 | Malignant neoplasm of right choroid | ICD10 | 06262017 | 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T17:01:52+00:00 |  | 000110840-01 | ROGELLIO | JONES | OSU INTERNAL MED LLC | 907309 | DOUGLAS M | LEVIN | 1750374328 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03062017 | 04062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317144 | R160 | Hepatomegaly, not elsewhere classified | ICD10 | 06262017 | 74183 | MRI ABDOMEN W/O&W DYE | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  |  |  | 0 |
| 06212017 | 2017-06-21T10:38:45+00:00 |  | 000030943-01 | DONALD | BRITTON | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06262017 | Approved | MediGold Classic Preferred | Fax | Clinical Trial | Outpatient | 06282017 | 07282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170621141 | I459 | Conduction disorder, unspecified | ICD10 | 06262017 | 0387T | LEADLESS C PM INS/RPL VENTR | CPT | 1 | 1 | Approved | 31 | CPT | C4 | PHONE CALL PLACED TO DR REINIG'S OFFICE  LEFT MESSAGE OF CONFIDENTIAL VM REQUESTING CALL BACK FROM HEATHER.  REQUESTING INFORMATION OF PARTICIPATION IN CLINICAL TRIAL AS OUTLINED IN THE DECISION MEMO , PHONE CALL PLACED TO PROVIDER AND MESSAGE LEFT FOR RETURN CALL.  HEATHER DID RETURN CALL YESTERDAY  AND WHEN ASKED ABOUT CLINICAL TRIAL PARTICIPATION  WASN'T AWARE OF A TRIAL.  SHE WAS GOING TO LOOK INTO AND CALL BACK.  HADN'T HEARD BACK  SO FOLLOWING UP., SPOKE TO HEATHER AND THEY WERE NOT AWARE OF STUDY  OR CMS GUIDELINES.  HOWEVER  ACCORDING TO MEDTRONIC LITERATURE FROM MAY 2017  THE STUDY DATA IS OBTAINED FROM CLAIMS.  I FAXED THE INFO TO HEATHER FOR REVIEW.  SHE WILL ADVISE AFTER RECEIPT., MEMBER PROCEDURE ON 6/28/17  HEATHER WITHDREW EXPEDITED TO REVIEW INFO BEFORE MOVING FORWARD. |  |  |  |  | 0 |
| 06212017 | 2017-06-21T12:22:11+00:00 | Q18702333 | 000044632-01 | CAROLE | VANHOOSE | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 06262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 08052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626013 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 06262017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T08:05:54+00:00 | Q18708473 | 000032663-01 | DONALD | GANTT SR | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 06262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 09042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626025 | I255 | Ischemic cardiomyopathy | ICD10 | 06262017 | 33249, C1721, C1722, C1777, C1895 | LEAD, CARDIOVERTER-DEFIBRILLATOR, ENDOCARDIAL DUAL COIL (IMPLANTABLE) | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T12:17:45+00:00 | Q18708943 | 000089752-01 | Charles | Pope Jr | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06222017 | 07222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626029 | C642 | Malignant neoplasm of left kidney, except renal pelvis | ICD10 | 06262017 | 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T06:25:41+00:00 | Q18698586 | 000100044-01 | Lynn | Argyle | LICKING MEM ONCOLOGY HEM | 931839 | D'ANNA N | MULLINS | 1790946861 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 06262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626033 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 06262017 | 71275 | CT ANGIOGRAPHY, CHEST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T13:17:02+00:00 | Q18688434 | 000079678-01 | Henry | Bruner Jr | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 06262017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07112017 | 09092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626041 | I471 | Supraventricular tachycardia | ICD10 | 06262017 | 33208, 33225, C1900, C1785, C2619, C1779, C1898 | LEAD, PACEMAKER, OTHER THAN TRANSVENOUS VDD SINGLE PASS | HCPCS | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T09:40:39+00:00 | Q18719963 | 000038217-01 | JO | COLLINS | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 06262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06232017 | 07232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626046 | M5416 | Radiculopathy, lumbar region | ICD10 | 06262017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06222017 | 2017-06-22T15:47:03+00:00 | Q18716793 | 000074084-01 | Richard | Breckenridge | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | HEARTLAND CARDIOLOGY LLC | 913080 | 1538488564 | HEARTLAND CARDIOLOGY LLC | 1538488564 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | HEARTLAND CARDIOLOGY LLC | 06262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626071 | R079 | Chest pain, unspecified | ICD10 | 06262017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T06:13:25+00:00 |  | 000042352-01 | STELLA | HERNANDEZ | MEM HSP OF UNION COUNTY | 935273 | ANTERPREET S | NEKI | 1407893555 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06262017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 07062017 | 10062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626082 | C07 | Malignant neoplasm of parotid gland | ICD10 | 06262017 | 99211, 99212, 99213, 99214, 99215, 99201, 99202, 99203, 99204, 99205, 88305, 85049, 85610, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T13:41:12+00:00 | Q18724054 | 000085924-01 | Betty | Wince | LICKING MEM HLTH PROF | 919172 | ARUNA C | GOWDA | 1407070576 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 06262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 07032017 | 08022017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626090 | C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 06262017 | 77058 | MAGNETIC RESONANCE IMAGING BREAST W & W/O WITH CONTRAST MATERIAL(S) | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T11:27:25+00:00 | Q18722216 | 000094939-01 | Bonnie | Detty | COPC CENTRAL OHIO PRIMAR | 905458 | GIDEON L | KING | 1548255367 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | DILEY RIDGE MEDICAL CENTER | 06262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06232017 | 07232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626100 | M5410 | Radiculopathy, site unspecified | ICD10 | 06262017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T08:33:18+00:00 | Q18718394 | 000075469-01 | Harold | Shultz | MOUNT CARMEL HLTH PRVDRS | 937298 | SHAILESH R | PATEL | 1346235215 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06262017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06262017 | 08252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626107 | I482 | Chronic atrial fibrillation | ICD10 | 06262017 | 33249, 33225, 33233, 33235, C1900, C1721, C1722, C1882, C1777, C1895, C1896 | LEAD, CARDIOVERTER-DEFIBRILLATOR, OTHER THAN ENDOCARDIAL SINGLE OR DUAL | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06232017 | 2017-06-23T07:59:42+00:00 | Q18718457 | 000052741-01 | ROBERT | WERTZ | WESTERN MEDICINE LLC | 901464 | JACOB T | DEAN | 1932172467 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06262017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06232017 | 07232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626108 | R911 | Solitary pulmonary nodule | ICD10 | 06262017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T10:27:33+00:00 | Q18091591 | 000104675-01 | Russell | Cline | BATTEN, WILLIAM H | 937179 | WILLIAM H | BATTEN | 1437124112 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06262017 | Approved | Flexible Choice PPO | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626111 | R310 | Gross hematuria | ICD10 | 06262017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06262017 | 2017-06-26T10:34:44+00:00 |  | 000105988-01 | Russell | Burton | BECKNELL, MILTON E | 919264 | MILTON E | BECKNELL | 1295837771 | BECKNELL, MILTON E | 919264 | 1295837771 | MILTON E BECKNELL | 1295837771 | OP Behavioral Health | OP BH | Pre-Service | PRE | MILTON E | BECKNELL | 06262017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 06262017 | 07262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170626113 | F4542 | Pain disorder with related psychological factors | ICD10 | 06262017 | 90791, 96101 | PSYCHO TESTING BY PSYCH/PHYS | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06202017 | 2017-06-20T16:07:03+00:00 |  | 000079256-01 | Ronald | Swisher | RAO, KALAPALA | 924317 | KALAPALA | RAO | 1730267030 | RAO, KALAPALA | 924317 | 1730267030 | KALAPALA RAO | 1730267030 | Out of Network Services | OONS | Pre-Service | PRE | KALAPALA | RAO | 06262017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Administrative Denial | Outpatient | 06262017 | 06272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170620189 | R6889 | Other general symptoms and signs | ICD10 | 06262017 | 99204, 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0 | 1, 1 | Denied, Denied | 0, 0 | CPT | C4 | Requested clinical documentation with diagnostic codes, Retroactive requests for authorization cannot be processed  as services have already been rendered. |  |  |  |  | 0 |
