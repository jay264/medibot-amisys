Feature: Process Essette Extract EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-25-to-2017-08-27
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Outpatient(NEWADD)-2017-08-25-to-2017-08-27
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
| 08242017 | 2017-08-24T08:40:42+00:00 | Q19164457 | 000031443-01 | JOHN | LEROY | OH ONCOLOGY & HEMATOLOGY | 935443 | PATRICK C | ELWOOD | 1083672760 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08312017 | 09302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825015 | C642 | Malignant neoplasm of left kidney, except renal pelvis | ICD10 | 08252017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T08:51:45+00:00 | Q19164634 | 000013669-01 | CATHERINE | HALL | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 08252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08292017 | 09282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825016 | C8218 | Follicular lymphoma grade II, lymph nodes of multiple sites | ICD10 | 08252017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T07:51:37+00:00 | Q19163823 | 000057749-01 | BETTY | LYNN | MOUNT CARMEL HLTH PRVDRS | 906494 | TIMOTHY P | NUSS | 1982649232 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08312017 | 09302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825036 | Z01810 | Encounter for preprocedural cardiovascular examination | ICD10 | 08252017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T09:07:24+00:00 | Q19164904 | 000068579-01 | DONALD | RIGGS | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 08252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08242017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825044 | R42 | Dizziness and giddiness | ICD10 | 08252017 | 70450 | COMP. TOMOG., HEAD WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T09:12:01+00:00 | Q19164989 | 000089619-01 | Mary | Leffler | LICKING MEM HLTH PROF | 903573 | MEGAN E | MILLER | 1255330072 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 08252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08282017 | 09272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825046 | S060X0A | Concussion without loss of consciousness, initial encounter | ICD10 | 08252017 | 70460 | COMP. TOMOG. HEAD WITH IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T10:41:04+00:00 | Q19166722 | 000097172-01 | Patricia | Stidham | TAJ MEDICAL INC | 906519 | NAJEEB | AHMED | 1972574275 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08252017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08312017 | 10302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825060 | R0789 | Other chest pain | ICD10 | 08252017 | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 61 | CPT | C4 |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T10:48:54+00:00 | Q19166985 | 000105911-01 | Catherine | Peters | THE UROLOGY GROUP | 921698 | SHEKAR | DHEENAN | 1801907332 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 08252017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08242017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825062 | R310 | Gross hematuria | ICD10 | 08252017 | 74176 | CT ABD & PELVIS W/O CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T12:44:29+00:00 | Q19168985 | 000117118-01 | Galen | Waits | HLTHSOURCE OF OHIO WILMI | 949180 | TERESA L | WRIGHT | 1649372624 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 08252017 | Approved | MediGold Southwest OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 08242017 | 09232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825072 | Z87891 | Personal history of nicotine dependence | ICD10 | 08252017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T11:33:14+00:00 | Q19133619 | 000045927-01 | JOHN | BROWN | ADENA MEDICAL GROUP LLC | 911234 | COLLINS N | OKOLIE | 1235331224 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 08252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08212017 | 09202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825119 | J986 | Disorders of diaphragm | ICD10 | 08252017 | 74160 | CAT SCAN ABDOMEN C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08222017 | 2017-08-22T18:19:43+00:00 | Q19151328 | 000099214-01 | Don | Meek | ALLIANCE PHYSICIANS INC | 913445 | JOSEPH W | LAVELLE | 1629027727 | GRANDVIEW HOSPITAL & SOU | 902690 | 1053339507 | SOUTHVIEW MEDICAL CENTER | 0 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | SOUTHVIEW MEDICAL CENTER | 08252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08232017 | 02192018 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170823145 | C61 | Malignant neoplasm of prostate | ICD10 | 08252017 | J9217 | LEUPROLIDE ACETATE (FOR DEPOT SUSPENSION), 7.5 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 08242017 | 2017-08-24T09:52:54+00:00 |  | 000081140-01 | Carolyn | Farnsworth | ORTHO TRAUMA SRVS LTD | 909385 | BRUCE G | FRENCH | 1568447696 | ORTHO TRAUMA SRVS LTD | 926774 | 1285622688 | ORTHOPEDIC TRAUMA SERVICES LTD | 1285622688 | Out of Network Services | OONS | Pre-Service | PRE |  | ORTHOPEDIC TRAUMA SERVICES LTD | 08252017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 09072017 | 10072017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170824135 | S2243XA, S42001A | Fracture of unsp part of right clavicle, init for clos fx | ICD10 | 08252017 | 99214, 73000, 71111 | RIBS INC AP CHEST BILATERAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 31, 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08162017 | 2017-08-16T09:56:31+00:00 | Q19102761 | 000083112-01 | Glenna | Mcconnell | S ZANESVILLE FAM MED CTR | 922038 | RONALD J | KALCHIK | 1043200249 | GENESIS HEALTHCARE SYSTEM DME | 924099 | 1972640332 | GENESIS HEALTHCARE SYSTEM DME | 1972640332 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM DME | 08252017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 08162017 | 09152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170817036 | R938 | Abnormal findings on diagnostic imaging of body structures | ICD10 | 08252017 | 74160, 74170 | CAT SCAN ABDOMEN W/WO IV CONTRAST | CPT | 0, 1 | 1, 1 | Void, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 08112017 | 2017-08-11T10:03:00+00:00 |  | 000092051-01 | J Harry | Mosher | MOUNT CARMEL HLTH PRVDRS | 949247 | AMIE | FIELDS | 1538519517 | CORNERSTONE MEDICAL SRVS COLS LLC | 910277 | 1881830958 | CORNERSTONE MEDICAL SRVS COLS LLC | 1881830958 | DME | DME | Pre-Service | PRE |  | CORNERSTONE MEDICAL SRVS COLS LLC | 08252017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 08252017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170811135 | I82401 | Acute embolism and thombos unsp deep veins of r low extrem | ICD10 | 08252017 | A6530 | GRADIENT COMPRESSION STOCKING, BELOW KNEE, 18-30 MMHG, EACH | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Contacted Angela nurse for Amie Fields CNP. LVM to return call urgent that we receive the clinical documentation for this request., PHONE CALL PLACED TO MT CARMEL VASCULAR.  TRANSFERRED TO VOICEMAIL OF ANGELA BROWN RN  WHO IS WITH AMIE FIELDS CNP.  MESSAGE AGAIN LEFT FOR DOCUMENTATION AND TYPE OF COMPRESSION HOSE REQUESTED.  REQUESTED FAX OF INFO   PHONE NUMBERS ALSO LEFT.  REQUESTED INFORMATION FOR TODAY  SO REQUEST MAY BE PROCESSED., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08112017 | 2017-08-11T15:15:22+00:00 |  | 000054503-01 | GREGORY | MCBRIDE | ROCKING HORSE COMMUNITY | 906655 | YAMINI V | TEEGALA | 1558579318 | CORNERSTONE HEALTH CARE | 939222 | 1578517942 | CORNERSTONE HEALTH CARE | 1578517942 | DME | DME | Pre-Service | PRE |  | CORNERSTONE HEALTH CARE | 08252017 | Denied | MediGold Classic Preferred | Member | Not a Covered Benefit (PA) | Outpatient | 08252017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170811152 | G4730 | Sleep apnea, unspecified | ICD10 | 08252017 | E1399 | DURABLE MEDICAL EQUIPMENT, MISCELLANEOUS | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Spoke with receptionist  Charley  and asked to have her fax over clinical for this authorization. She stated that she would leave a message with Dr. Teegala's nurse  Diane., Dr. Teegala's nurse  Heather  called back. She stated that Dr. Teegala never prescribed a CPAP for this member. That the member had gone to a sleep study and received the CPAP through them but had never followed up with a pulmonologist and therefore do not have any clinical to send to us., Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08112017 | 2017-08-11T15:52:56+00:00 |  | 000022438-01 | SALLY | HESS | MOUNT CARMEL HLTH | 917307 | CHARLES W | LONGWELL III | 1740406883 | THE OH STATE UNIVERSITY HSP REHAB | 936564 | 1184723637 | THE OH STATE UNIVERSITY HSP REHAB | 1184723637 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HSP REHAB | 08252017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Outpatient | 08252017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170811156 | G3184 | Mild cognitive impairment, so stated | ICD10 | 08252017 | 97166 | OT EVAL MOD COMPLEX 45 MIN | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Corrected CPT code of OT For Driving Eval is 97166, Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08142017 | 2017-08-14T12:32:14+00:00 |  | 000026799-01 | CLAIRE | WACHTEL | MOUNT CARMEL HLTH PRVDRS | 935805 | MARC L | CARROLL | 1639131329 | MDINR LLC | 928912 | 1336420140 | MDINR LLC | 1336420140 | Out of Network Services | OONS | Pre-Service | PRE |  | MDINR LLC | 08252017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 08252017 | 08262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170814012 | I4891 | Unspecified atrial fibrillation | ICD10 | 08252017 | G0249, G0248 | DEMONSTRATION, AT INITIAL USE, OF HOME INR MONITORING FOR PATIENT WITH M | HCPCS | 0, 0 | 12, 1 | Denied, Denied | 0, 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 08242017 | 2017-08-24T12:24:11+00:00 | Q19168473 | 000072060-01 | Claudia | Obleness | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 07062017 | 09042017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170825068 | I442 | Atrioventricular block, complete | ICD10 | 08252017 | 33264, 33225, C1900, C1721, C1722, C1882, C1777, C1895, C1896 | LEAD, CARDIOVERTER-DEFIBRILLATOR, OTHER THAN ENDOCARDIAL SINGLE OR DUAL | HCPCS | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 61, 61, 61, 61, 61, 61, 61, 61, 61 | HCPCS | HC |  |  |  |  |  | 0 |
