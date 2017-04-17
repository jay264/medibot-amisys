Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-19
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-19
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
	And in the "certification" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image and save the variable
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
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
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
| 03062017 | 2017-03-06T13:09:16+00:00 |  | 000079100-01 | Larry | Griffith | LICKING MEM PROF CORP | 930953 | ASEGID H | KEBEDE | 1598716201 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03172017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 03062017 | 06062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170307050 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 03172017 | 99201, 99202, 99203, 99204, 99205, 99211, 99212, 99213, 99214, 99215, 88305 | SURGICAL PATH LARGE SPEC/MANY SMALL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 93, 93, 93, 93, 93, 93, 93, 93, 93, 93, 93 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved., Received notification of expedited appeal. Case presented to medical director Dr. Greg Wise and he approved for consultation at OSU. |  |  |  |  | 0 |
| 03142017 | 2017-03-14T14:29:26+00:00 |  | 000023102-01 | GEORGIA | DAVENPORT | WESTLAND INT MED | 935540 | DANIEL T | BURLON | 1306882634 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 03172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03162017 | 04162018 | Standard |  |  |  |  |  |  |  |  |  |  |  | No child records to display. |  |  |  |  |  |  | K0800 | POV group 1 std up to 300 lbs | HCPCS | 1 | 1 | Approved | 397 | HCPCS | HC |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T13:28:40+00:00 |  | 000079100-01 | Larry | Griffith | OH ONCOLOGY & HEMATOLOGY | 935093 | JEFFREY | ZANGMEISTER | 1871541979 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Integrated Oncology (HH) | ONCOL | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 03172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 09112017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170316008 | E8352 | Hypercalcemia | ICD10 | 03172017 | J3489 | ZOLEDRONIC ACID 1MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 03142017 | 2017-03-14T10:32:18+00:00 | Q17963425 | 000075074-01 | Donald | Hicks | ONCOLOGY HEMATOLOGY CARE | 921848 | BENJAMIN T | HERMS | 1730218876 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL CLERMONT | 03172017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03202017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317003 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 03172017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T08:53:56+00:00 | Q17951707 | 000053778-01 | CHARLES | KELLER | LICKING MEM HLTH PROF | 932994 | AARON J | KIBLER | 1891081295 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 03172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 04202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317011 | R0602 | Shortness of breath | ICD10 | 03172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T07:01:43+00:00 | Q17981630 | 000082621-01 | Polly | Weber | MIDWEST SPINE & PAIN CNS | 915159 | JIMMY M | HENRY | 1548483670 | PROSCAN IMAGING PICKERINGTON LLC | 903474 | 1629036223 | PROSCAN IMAGING PICKERINGTON LLC | 1629036223 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | PROSCAN IMAGING PICKERINGTON LLC | 03172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03172017 | 04162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317024 | M542 | Cervicalgia | ICD10 | 03172017 | 72141 | MRI- SPINAL CANAL AND CONTENTS, CERVICAL; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T09:17:02+00:00 | Q17982891 | 000116877-01 | RUTH | LONG | OHIOHEALTH PHYS GRP | 914865 | MONICA R | RIFFLE | 1568770808 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | BERGER HOSPITAL | 03172017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 04202017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317033 | R079 | Chest pain, unspecified | ICD10 | 03172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T11:50:03+00:00 | Q17986047 | 000099969-01 | Nancy | Brown | MOUNT CARMEL HLTH PRVDRS | 935009 | STEVEN S | WALKER | 1861455131 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03272017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317051 | R0609 | Other forms of dyspnea | ICD10 | 03172017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T12:26:01+00:00 | Q17986639 | 000112790-01 | James | Benjamin | ORTHO & NEURO CONSULTS I | 935912 | LARRY T | TODD | 1649254087 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 03172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03172017 | 04162017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317053 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 03172017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T13:15:46+00:00 | Q17987543 | 000084935-01 | Jack | Woodruff | MERCY HEALTH PHYSICIANS | 911073 | TAMER Y | ABOU-ELSAAD | 1255302808 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MERCY HOSPITAL ANDERSON | 03172017 | Approved | MediGold Southwest OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03202017 | 04192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317063 | G450 | Vertebro-basilar artery syndrome | ICD10 | 03172017 | 70496 | CT ANGIOGRAPHY, HEAD | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T10:57:43+00:00 | Q17972417 | 000116372-01 | Annette | Adkins | IMTIAZ KAZI FAMILY PRCT | 935421 | IMTIAZ U | KAZI | 1851331706 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 03172017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 04142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317074 | M7502 | Adhesive capsulitis of left shoulder | ICD10 | 03172017 | 73221 | MRI JOINT UPPER EXTREMITY | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03152017 | 2017-03-15T14:13:51+00:00 | Q17978393 | 000075336-01 | George | Carey | AMERICAN HLTH NETWORK OF | 903540 | SCOTT A | KURZER | 1477549897 | MOUNT CARMEL HLTH SYS | 920190 | 1457617235 | MOUNT CARMEL HEALTH SYS PHYSICIANS | 1457617235 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL HEALTH SYS PHYSICIANS | 03172017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 03152017 | 04142017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317085 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 03172017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T11:03:54+00:00 | Q17978774 | 000086027-01 | Sandra | Baughman | GENESIS MEDICAL GRP LLC | 942943 | PHILIP F | BONGIORNO | 1073512422 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | GENESIS HEALTHCARE SYSTEM | 03172017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03282017 | 04272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317088 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 03172017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03172017 | 2017-03-17T08:56:17+00:00 | Q17971225 | 000078183-01 | William | Knight | COSHOCTON COUNTY MEM HSP | 945722 | AHMED A | HABIB | 1447230859 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Radiology (HH) | OP RAD | Initial Review | INIT |  | GENESIS HEALTHCARE SYSTEM | 03172017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03162017 | 04152017 | Standard |  |  |  |  |  |  |  |  |  |  |  | No child records to display. |  |  |  |  |  |  | 93458 | L HRT ARTERY/VENTRICLE ANGIO | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T16:17:57+00:00 |  | 000006032-01 | ELMER | ETTERS | MOUNT CARMEL HLTH PRVDRS | 925886 | DYLAN J | WIRTZ | 1982895975 | ADVANCED RESPIRATORY INC | 937839 | 1053357905 | ADVANCED RESPIRATORY INC | 1053357905 | DME | DME | Pre-Service | PRE |  | ADVANCED RESPIRATORY INC | 03172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 02282017 | 05282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170317117 | J479 | Bronchiectasis, uncomplicated | ICD10 | 03172017 | E0483 | HIGH FREQUENCY CHEST WALL OSCILLATION AIR-PULSE GENERATOR SYSTEM, (INCLU | HCPCS | 1 | 1 | Approved | 90 | HCPCS | HC |  |  |  |  |  | 0 |
| 03162017 | 2017-03-16T19:17:57+00:00 |  | 000004584-01 | CHARLES | OBLENESS | OSU INTERNAL MED LLC | 913877 | KRISTIE A | BLUM | 1811902679 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Radiology (HH) | OP RAD | Initial Review | INIT |  | THE OH STATE UNIVERSITY HOSPITAL | 03172017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03162017 | 09122017 | Expedited |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170317118 | C8310 | Mantle cell lymphoma, unspecified site | ICD10 | 03172017 | J9310 | RITUXIMAB, 100 MG | HCPCS | 1 | 1 | Approved | 181 | HCPCS | HC |  |  |  |  |  | 0 |
| 03102017 | 2017-03-10T09:02:44+00:00 |  | 000111750-01 | GLORIA | MANN | FCMH MED & SURG ASSOC | 906134 | DAVID J | GUNDERMAN | 1508861246 | HEARTLAND OF HILLSBORO OH LLC | 940121 | 1184666711 | HEARTLAND OF HILLSBORO OH LLC | 1184666711 | Out of Network Services | OONS | Pre-Service | PRE |  | HEARTLAND OF HILLSBORO OH LLC | 03172017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Outpatient | 03172017 | 03182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170313007 | M6281 | Muscle weakness (generalized) | ICD10 | 03172017 | 97116, 97112, 97110, 97162, G0293, 97140, 97530 | DYNAMIC ACTIVITES TO IMPROVE FUNCTIONAL PERFORMANCE, EACH 15 MINUTES | CPT | 0, 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1 | Denied, Denied, Denied, Denied, Denied, Denied, Denied | 0, 0, 0, 0, 0, 0, 0 | CPT | C4 | spoke with Tammy at the facility  member is coming into the SNF for outpatient therapy |  |  |  |  | 0 |
| 03132017 | 2017-03-13T16:24:26+00:00 |  | 000095471-01 | Robert | Matson Jr | TAMPA CARDIOVASCULAR ASS | 948992 | VICTOR F | DE AL CRUZ | 1790983203 | TAMPA CARDIOVASCULAR ASS | 948992 | 1083774665 | VICTOR F DE AL CRUZ | 1790983203 | Out of Network Services | OONS | Pre-Service | PRE | VICTOR F | DE AL CRUZ | 03172017 | Denied | MediGold Southeast OH Essential Care | Fax | Services Available In-Network | Outpatient | 03172017 | 03182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170314127 | I5022 | Chronic systolic (congestive) heart failure | ICD10 | 03172017 | 93282 | ICD DEVICE PROG EVAL, 1 SNGL | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03172017 | 2017-03-17T09:01:46+00:00 |  | 000017745-01 | WILLIAM | HOBENSACK | COPC CENTRAL OHIO PRIMAR | 905522 | AUDRA J | PARKER | 1073737763 | REHAB MEDICAL OF COLUMBUS | 914581 | 1851320774 | REHAB MEDICAL OF COLUMBUS | 1851320774 | DME | DME | Pre-Service | PRE |  | REHAB MEDICAL OF COLUMBUS | 03172017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03172017 | 03182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | X170317122 | I2510, I739, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 03172017 | K0800 | POV group 1 std up to 300 lbs | HCPCS | 0 | 1 | Denied | 0 | HCPCS | HC | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
