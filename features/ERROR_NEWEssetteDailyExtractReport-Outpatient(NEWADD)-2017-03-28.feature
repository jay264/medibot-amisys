Feature: Process Essette Extract NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-28
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Outpatient(NEWADD)-2017-03-28
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
| 03272017 | 2017-03-27T10:50:25+00:00 |  | 000080761-01 | Miles | Peyton | SPRINGFIELD UROLOGY LLC | 903102 | ANANTH | ANNAMRAJU | 1003981168 | CRYSTAL CLEAR IMAGING | 937806 | 1346220662 | CRYSTAL CLEAR IMAGING | 1346220662 | Radiology (HH) | OP RAD | Initial Review | INIT |  | CRYSTAL CLEAR IMAGING | 03282017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Outpatient | 03282017 | 03292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Denied | X170327010 | C61 | Malignant neoplasm of prostate | ICD10 | 03282017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 0 | 1 | Denied | 0 | CPT | C4 | Letter is written in appropriate language with no abbreviations and is therefore approved. |  |  |  |  | 0 |
| 03242017 | 2017-03-24T10:45:00+00:00 | Q17998455 | 000102227-01 | Nicki | Bernard | OH ONCOLOGY & HEMATOLOGY | 936113 | MARK H | KNAPP | 1952359549 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170327035 | C3411 | Malignant neoplasm of upper lobe, right bronchus or lung | ICD10 | 03282017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T14:33:29+00:00 |  | 000043184-01 | STEPHEN | BEELER | ADENA MEDICAL GROUP LLC | 927435 | ZION | OSHIKANLU | 1750522694 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | ADENA REGIONAL MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170327046 | C170 | Malignant neoplasm of duodenum | ICD10 | 03282017 | 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03232017 | 2017-03-23T13:50:16+00:00 |  | 000080599-01 | Emagene | Fouty | OSU INTERNAL MED LLC | 909694 | THOMAS E | OLENCKI | 1710994280 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | UNKNOWN PROVIDER | 03282017 | Approved | MediGold Southeast OH Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04012017 | 05012017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328002 | C6931 | Malignant neoplasm of right choroid | ICD10 | 03282017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T08:13:26+00:00 | Q18053687 | 000109387-01 | Linda | Gregg | OH ONCOLOGY & HEMATOLOGY | 934772 | MARK | SEGAL | 1093715385 | OH ONCOLOGY & HEMATOLOGY | 926010 | 1467717553 | OH ONCOLOGY & HEMATOLOGY LLC | 1467717553 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | OH ONCOLOGY & HEMATOLOGY LLC | 03282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 04052017 | 05052017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328004 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 03282017 | 71260, 74177 | CT ABDOMEN&PELVIS W/CONTRAST | CPT | 1, 1 | 1, 1 | Approved, Approved | 31, 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T13:24:53+00:00 | Q18059495 | 000000740-01 | OPAL | BEAVER | MOUNT CARMEL SLEEP MEDIC | 936045 | PARESH J | TIMBADIA | 1508849100 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04272017 | 05272017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328014 | R911 | Solitary pulmonary nodule | ICD10 | 03282017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T13:27:24+00:00 |  | 000099307-01 | ANTOINETTE | WILBUR | MOUNT CARMEL HLTH PRVDRS | 935805 | MARC L | CARROLL | 1639131329 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03272017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328015 | R911 | Solitary pulmonary nodule | ICD10 | 03282017 | 71250 | CAT SCAN THORAX WO IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03262017 | 2017-03-26T12:37:28+00:00 | Q18053139 | 000101877-01 | Michael | Masters | ALLIANCE PHYSICIANS INC | 914343 | ERIC J | HICK | 1346236353 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 03282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03262017 | 04252017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328018 | R310 | Gross hematuria | ICD10 | 03282017 | 74178 | CT ABD&PELV 1+ SECTION/REGNS | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T08:12:44+00:00 | Q18053755 | 000098643-01 | Ronald | Stelzer | ALLIANCE PHYSICIANS INC | 919922 | JODY L | SHORT | 1053527523 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | KETTERING MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03272017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328025 | I671 | Cerebral aneurysm, nonruptured | ICD10 | 03282017 | 70498 | CT ANGIOGRAPHY, NECK | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T08:33:36+00:00 | Q18053994 | 000089129-01 | Clayton | Corbin | LICKING MEM PROF CORP | 930953 | ASEGID H | KEBEDE | 1598716201 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 04062017 | 05062017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328027 | Z87891 | Personal history of nicotine dependence | ICD10 | 03282017 | G0297 | LDCT FOR LUNG CA SCREEN | HCPCS | 1 | 1 | Approved | 31 | HCPCS | HC |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T10:52:11+00:00 | Q18050313 | 000049159-01 | RONALD | BOURGEOIS | COLUMBUS CARDIOLOGY CARE | 937224 | MICHAEL R | MURNANE | 1720041148 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03282017 | Approved | MediGold Medical Only | HealthHelp | Medical Criteria Met | Outpatient | 03302017 | 04292017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328052 | Z01810 | Encounter for preprocedural cardiovascular examination | ICD10 | 03282017 | 78452 | HT MUSCLE IMAGE SPECT, MULT | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T14:40:01+00:00 | Q18050935 | 000114227-01 | GREGORY | BRANSCOME | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03272017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328058 | S39012A | Strain of muscle, fascia and tendon of lower back, init | ICD10 | 03282017 | 72148 | MRI- SPINAL CANAL AND CONTENTS, LUMBAR; WITHOUT CONTRAST MATERIAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T09:05:19+00:00 |  | 000082199-01 | Paul | Brill | OSU SURGERY LLC | 909559 | VIMAL K | NARULA | 1912952490 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Out of Network Services | OONS | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 03282017 | Approved | MediGold Essential Care | Fax | Services Not Available In-Network | Outpatient | 03302017 | 05302017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328069 | C760 | Malignant neoplasm of head, face and neck | ICD10 | 03282017 | 43246, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 62, 62 | HCPCS | HC |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T19:50:53+00:00 |  | 000110447-01 | Sandra | Conley | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03232017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328070 | C641 | Malignant neoplasm of right kidney, except renal pelvis | ICD10 | 03282017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T19:53:00+00:00 | Q18038444 | 000103336-01 | CHARLES | SHAFER | OH EAR INSTITUTE LLC | 904433 | JOHN M | RYZENMAN | 1871501437 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 03282017 | Approved | MediGold Essential Care | HealthHelp | Medical Criteria Met | Outpatient | 03232017 | 04222017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328072 | H903 | Sensorineural hearing loss, bilateral | ICD10 | 03282017 | 70553 | MRI BRAIN- NO CONTRAST MATERIAL,FOLLOWED BY CONTRAST & FURTHER SEQUEN. | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T07:56:44+00:00 | Q18044826 | 000076969-01 | Roger | Harris | HOSPICE OF CENTRAL OHIO | 936284 | RICHARD R | DONNARD | 1962482950 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Radiology (HH) | OP RAD | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328076 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 03282017 | 71260 | CAT SCAN THORAC C IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03242017 | 2017-03-24T14:21:44+00:00 |  | 000083064-01 | Larry | Ruff | NEWARK RADIATION ONCOLOG | 937251 | MARK | BECKER | 1053312462 | LANCASTER RADIATION ONCO | 938347 | 1205837663 | LANCASTER RADIATION ONCOLOGY | 1205837663 | Cardiology (HH) | OP CARD | Pre-Service | PRE |  | LANCASTER RADIATION ONCOLOGY | 03282017 | Approved | MediGold Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03212017 | 06192017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328080 | C062 | Malignant neoplasm of retromolar area | ICD10 | 03282017 | G6015 | RADIATION TX DELIVERY IMRT | HCPCS | 1 | 1 | Approved | 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03272017 | 2017-03-27T20:07:52+00:00 | Q18063463 | 000066074-01 | TERRI LYNN | TROTT | WHITEHALL MED CTR INC | 949441 | JENICE R | BROWN | 1437601341 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MOUNT CARMEL EAST HOSPITAL | 03282017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Outpatient | 03272017 | 04262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170328083 | R42 | Dizziness and giddiness | ICD10 | 03282017 | 70470 | CAT SCAN HEAD WO/W IV CONTRAST | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T14:25:22+00:00 | Q18043386 | 000115481-01 | Barbara | Tucker | MARIETTA HLTH CARE PHYS | 921885 | RAJENDRA S | BHATI | 1164641759 | MARIETTA MEMORIAL HOSPITAL | 929440 | 1154393114 | MARIETTA MEMORIAL HOSPITAL | 1154393114 | Radiology (HH) | OP RAD | Initial Review | INIT |  | MARIETTA MEMORIAL HOSPITAL | 03282017 | Approved | MediGold Southeast OH Classic Preferred | HealthHelp | Medical Criteria Met | Outpatient | 03242017 | 04232017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170328113 | C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 03282017 | 77059 | MAGNETIC RESONANCE IMAGING BREAST W & W/O CONTRAST BILATERAL | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T14:40:46+00:00 |  | 000015705-01 | OTTO | NEIKE | OSU INTERNAL MED LLC | 935661 | JOHN C | BYRD | 1770599664 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Out of Network Services | OONS | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 03282017 | Approved | MediGold Classic Preferred | Fax | Services Not Available In-Network | Outpatient | 04182017 | 07182017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328117 | C9110, D720, D7589, Z5111 | Encounter for antineoplastic chemotherapy | ICD10 | 03282017 | 84132, 84295, 36415, 85025, 85652, 80053, 82947, 82435, 84100, 82565, 84520, 82374, 99211, 99212, 99213, 99214, 99215, 82310, 83735, 84450, 82248, 83615, 84550, 84439, 84443, 82247, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92, 92 | HCPCS | HC |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T12:39:02+00:00 | Q16818001 | 000102847-01 | Warren | Tomlin Jr | FAIRFIELD HLTHCARE PROFS | 919094 | ROOPA S | SRIKANTIAH-SAH | 1396856191 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Radiology (HH) | OP RAD | Initial Review | INIT |  | FAIRFIELD MEDICAL CENTER | 03282017 | Approved | MediGold Southeast OH Essential Care | Fax | Medical Criteria Met | Outpatient | 03282017 | 06262017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Initial Review | Approved | X170328126 | C187 | Malignant neoplasm of sigmoid colon | ICD10 | 03282017 | J9206, J9055, J9055, J9190, J0640 | INJECTION, LEUCOVORIN CALCIUM, PER 50 MG | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 91, 91, 91, 91, 91 | HCPCS | HC |  |  |  |  |  | 0 |
| 03282017 | 2017-03-28T17:00:12+00:00 |  | 000087232-01 | Deborah | Swartz | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Outpatient Surgery/Procedure | OP SURG | Pre-Service | PRE |  | OHIO VALLEY MEDICAL CENTER | 03282017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Outpatient | 03282017 | 03282017 | Standard |  |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | X170328131 | T84033A | Mech loosening of internal left knee prosthetic joint, init | ICD10 | 03282017 | 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1 | 1 | Approved | 1 | CPT | C4 | Received call 3/28/17 at 12:55:00 from Mindy Simmons RN Ohio Valley Surgical Hospital Springfield.  (937) 521-4927. Member was prior authorized for L TKA.  During surgery today  Dr. Thompson did not have to perform complete surgery.  He performed POLY EXCHANGE and discharged member home from recovery room.  I have canceled this auth and built an outpatient auth. |  |  |  |  | 0 |
