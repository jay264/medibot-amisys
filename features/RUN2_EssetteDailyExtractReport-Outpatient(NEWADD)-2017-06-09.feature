Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-09
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-06-09
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
| 02162017 | 2017-02-16T15:05:10+00:00 |  | 000071645-01 | Edna | Eshenfelder | CENTRAL OHIO NP SERVICES | 936280 | JOHN | DIPIETRA | 1295770469 | OTTERBEIN NEW ALBANY LLC | 944058 | 1407262165 | OTTERBEIN NEW ALBANY LLC | 1407262165 | Part B Therapy | OP THER | Pre-Service | PRE |  | OTTERBEIN NEW ALBANY LLC | 06092017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02152017 | 04182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170217041 | F0280, S72002D | Fx unsp part of nk of l femr, subs for clos fx w routn heal | ICD10 | 06092017 | R0022 | Health Insurance Prospective Payment System (HIPPS), SNF PPS (RUG) | Revenue | 1 | 1 | Approved | 63 | Revenue | RV | Sean at the SNF requested the end date be changed to cover them starting later with visits. Change made and Sean aware of new end date of 4/18/17 and that the number of visits remain the same., NOMNC received non compliant |  |  |  |  | 0 |
| 06082017 | 2017-06-08T10:19:26+00:00 |  | 000100464-01 | Cathy | Quillen | KELLER, MICHAEL W | 926103 | MICHAEL W | KELLER | 1952319105 | KCI USA INC | 916303 | 1619965761 | KCI USA INC | 1619965761 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | KCI USA INC | 06092017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06052017 | 09052017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608065 | T8189XA | Oth complications of procedures, NEC, init | ICD10 | 06092017 | E2402, A6550, A7000 | CANISTER, DISPOSABLE, USED WITH SUCTION PUMP, EACH | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC | Member is currently admitted for inpatient stay at Kettering Medical Center Sycamore.  No ROI or POA on file with Voyager. |  |  |  |  | 0 |
| 06082017 | 2017-06-08T14:28:41+00:00 |  | 000054475-01 | Thomas | Keane | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06092017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 06172017 | 08172017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170608154 | S72461D | Displ suprcndl fx w intrcndl extn low end r femr, 7thD | ICD10 | 06092017 | 99499, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T07:19:32+00:00 | Q18603573 | 000031315-01 | ROBERT | LAMNECK | MARIETTA HLTH CARE PHYS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609004 | C159 | Malignant neoplasm of esophagus, unspecified | ICD10 | 06092017 | 74176, 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T10:44:23+00:00 | Q18607041 | 000092358-01 | Roy | Jenkins | MOUNT CARMEL HLTH PRVDRS | 936795 | F KEVIN | HACKETT | 1215990726 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 06092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06192017 | 08182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609009 | I420 | Dilated cardiomyopathy | ICD10 | 06092017 | 33249, 33225, C1900, C1721, C1722, C1882, C1777, C1895, C1896 | LEAD, CARDIOVERTER-DEFIBRILLATOR, OTHER THAN ENDOCARDIAL SINGLE OR DUAL | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T16:06:13+00:00 |  | 000087336-01 | William | Ford | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant Eval | TRANS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06092017 | Approved | MediGold Essential Care | Fax | Transplant Evaluation | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609020 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 06092017 | 36558, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T17:04:15+00:00 |  | 000031074-01 | JONATHAN | MILLER | ORTHO & NEURO CONSULTS I | 900853 | FRANCIS J | O DONNELL III | 1932183076 | CEN OHIO NEURO OPHTHALMO | 936377 | 1396822334 | AVROM D EPSTEIN | 1831118363 | Out of Network Services | OONS | Pre-Service | PRE | AVROM D | EPSTEIN | 06092017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 07252017 | 10252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609026 | G451 | Carotid artery syndrome (hemispheric) | ICD10 | 06092017 | 99244, 92083, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3 | 3, 3, 3 | Approved, Approved, Approved | 93, 93, 93 | HCPCS | HC |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T07:46:28+00:00 | Q18603787 | 000090368-01 | JUDITH | SPIRES | MARIETTA HLTH CARE PHYS | 921993 | MICHAEL K | BROCKETT | 1366419343 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MARIETTA MEMORIAL HOSPITAL | 06092017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06162017 | 07162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609029 | S22000A | Wedge compression fracture of unsp thoracic vertebra, init | ICD10 | 06092017 | 72146 | MRI, SPINAL CANAL AND CONTENTS, THORACIC; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T07:56:38+00:00 | Q18603852 | 000103733-01 | Kimberly | Brown | NEUROSCIENCE CENTER | 941371 | JAIME I | HERRERA | 1548420615 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609031 | R42 | Dizziness and giddiness | ICD10 | 06092017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T08:02:26+00:00 | Q18603956 | 000100190-01 | David | Robinson | LICKING MEM HLTH PROF | 949014 | ANDREW J | TERLECKY | 1467729442 | NORTHERN LIGHTS IMAGING LLC | 905210 | 1255406062 | NORTHERN LIGHTS IMAGING LLC | 1255406062 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | NORTHERN LIGHTS IMAGING LLC | 06092017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06122017 | 07122017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609032 | M25531 | Pain in right wrist | ICD10 | 06092017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T09:06:22+00:00 | Q18604943 | 000118178-01 | Tamira | Prather | FAIRFIELD HLTHCARE PROFS | 937141 | MICHAEL J | MARTIN | 1083662951 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 06092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 07092017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609041 | E876 | Hypokalemia | ICD10 | 06092017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T07:16:34+00:00 | Q18603542 | 000085995-01 | Sylvia | Stewart-Locke | TAJ MEDICAL INC | 907161 | ASHFAQ T | AHMED | 1578565214 | TAJ MEDICAL INC | 902712 | 1811914765 | TAJ MEDICAL INC | 1811914765 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | TAJ MEDICAL INC | 06092017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609070 | Z955 | Presence of coronary angioplasty implant and graft | ICD10 | 06092017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T09:27:44+00:00 | Q18583555 | 000087407-01 | Donald | Stone | MOUNT CARMEL HLTH PRVDRS | 932440 | SYED ALI SHAN | IDRIS | 1942317060 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06072017 | 07072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609085 | R251 | Tremor, unspecified | ICD10 | 06092017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06082017 | 2017-06-08T12:58:59+00:00 | Q18609516 | 000019553-01 | ELIZABETH | EPLING | COPC CENTRAL OHIO PRIMAR | 936944 | OLIVIA C | HOWER | 1194708883 | COPC CENTRAL OHIO PRIMAR | 938757 | 1194705194 | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | CENTRAL OH PRIMARY CARE PHYS INC | 06092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06082017 | 07082017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609096 | R319 | Hematuria, unspecified | ICD10 | 06092017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T12:45:08+00:00 |  | 000081433-01 | Joy | Richardson | BECKETT SPRINGS PHYSICIA | 950935 | KELLY | RYAN | 1134675192 | BECKETT SPRINGS LLC | 940170 | 1538404371 | BECKETT SPRINGS HOSPITAL | 1538404371 | OP Behavioral Health | OP BH | Pre-Service | PRE |  | BECKETT SPRINGS HOSPITAL | 06092017 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Outpatient | 06012017 | 09012017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609122 | F411 | Generalized anxiety disorder | ICD10 | 06092017 | 90791, 90792, 99211, 99212, 99213 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93 | CPT | C4 |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:18:13+00:00 |  | 000117199-01 | Randall | Davis | ORTHO ASSOC OF SW OH INC | 913140 | JEFFREY S | ROGERS | 1770699829 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Out of Network Services | OONS | Pre-Service | PRE |  | UNKNOWN PROVIDER | 06092017 | Approved | MediGold Classic Preferred | Phone | Medical Criteria Met | Outpatient | 05242017 | 08242017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609125 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 06092017 | 90791, 96101 | PSYCHO TESTING BY PSYCH/PHYS | CPT | 1, 6 | 1, 6 | Approved, Approved | 93, 93 | CPT | C4 | Spoke to Dr. Berman he stated he would not be billing for office visit would be billing for 1 visit of 90791 and 6 visits of 96101. 060917 at 13:55:00 so I build a new authorization with the new codes. |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:01:02+00:00 | Q18614890 | 000070376-01 | Thomas | Joyce | ROBERT D RUPERT JR MD IN | 906637 |  | ROBERT D RUPERT JR MD INC | 1437395183 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170609126 | C109 | Malignant neoplasm of oropharynx, unspecified | ICD10 | 06092017 | J9055 | INJECTION, CETUXIMAB, 10 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T13:42:25+00:00 |  | 000071185-01 | Connie | Jenkins | OSU INTERNAL MED LLC | 909005 | JON P | WALKER | 1588716237 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06092017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 06152017 | 07152017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170609127 | K22711 | Barrett's esophagus with high grade dysplasia | ICD10 | 06092017 | 43239 | ESOPHAGOGASTRODUOD. SPEC FOR CYTLGY | CPT | 1 | 1 | Approved | 31 | CPT | C4 | David Adkins confirmed Approval letter is being mailed tonight as this an Expedited case |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:21:24+00:00 | Q18615958 | 000118672-01 | James | Fightmaster | ALLIANCE PHYSICIANS INC | 913338 | PRIYA G | JAIN | 1912093360 | GRANDVIEW HOSPITAL & SOU | 902690 | 1053339507 | SOUTHVIEW MEDICAL CENTER | 0 | Radiology (HH) | OP RAD | Initial Review | INIT |  | SOUTHVIEW MEDICAL CENTER | 06092017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170609135 | C20 | Malignant neoplasm of rectum | ICD10 | 06092017 | J9263, J8520, J2469 | INJECTION, PALONOSETRON HCL, 25 MCG | HCPCS | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 06092017 | 2017-06-09T14:49:39+00:00 | Q18617896 | 000090240-01 | Nellie | Hunt | ONCOLOGY HEMATOLOGY CARE | 920870 | KURT P | LEUENBERGER | 1194765800 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Initial Review | INIT |  | OH ONCOLOGY & HEMATOLOGY LLC | 06092017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 06092017 | 12062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170609136 | C541 | Malignant neoplasm of endometrium | ICD10 | 06092017 | J9045, J9267, J1626, J1100 | INJECTION, DEXAMETHOSONE SODIUM PHOSPHATE, UP TO 4MG/ML | HCPCS | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 181, 181, 181, 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 04102017 | 2017-04-10T14:19:23+00:00 |  | 000028883-01 | PHILIP | JOHNSON | OSU OTOLARYNGOLOGISTS LL | 935454 | AMIT | AGRAWAL | 1083648539 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 06092017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 06092017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170411088 | C07 | Malignant neoplasm of parotid gland | ICD10 | 06092017 | 99211, 99212, 99213, 99215, 99214 | OFFICE CALL - ESTABLISHED PATIENT | CPT | 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06082017 | 2017-06-08T14:18:52+00:00 |  | 000042294-01 | DARRELL | MANIFOLD | MOUNT CARMEL HLTH PRVDRS | 914773 | M ELAINE | KINNARD | 1295044626 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 06092017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 06092017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170608152 | M5416 | Radiculopathy, lumbar region | ICD10 | 06092017 | 99499 | UNLISTED EVALUATION AND MANAGEMENT SERVICES | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Spoke with Lisa and explain need for documentation to be regarding MRADLs in the home.  Denial based upon documentation only for MRADLs outside of the home., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 06082017 | 2017-06-08T14:45:44+00:00 |  | 000116243-01 | Erla | Bolyard | FAIRFIELD HLTHCARE PROFS | 947849 | JASON T | WEINGART | 1114188273 | IRHYTHM TECHNOLOGIES INC | 932882 | 1710130539 | IRHYTHM TECHNOLOGIES INC | 1710130539 | DME | DME | Pre-Service | PRE |  | IRHYTHM TECHNOLOGIES INC | 06092017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Services Available In-Network | Outpatient | 06092017 | 06102017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170608155 | R002 | Palpitations | ICD10 | 06092017 | 0297T | EXT ECG SCAN W/REPORT | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Member number on PA Form is incorrect should be 116243, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
