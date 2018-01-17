Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-12_thru_2018-01-14_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-12_thru_2018-01-14_OBS
	Given I save the auth class "<auth_class>" to a variable
	Given I sign in to the application
	And the test pauses for "3" seconds
	When in the "Home" page I click on "Authorizations/Medical Management"
	And the test pauses for "3" seconds
	And in the "Authorizations Medical Management" page I click on "Certification"
	And the test pauses for "10" seconds
	And in the "Certification" page I should see the "Initial Date" element
	And I press "Control + N"
	And in the "certification" page I should see the "red_and_yellow_boxes" image
	And in the "Certification" page I enter "<requested_date>" into the "Initial Date" field
	And in the "Certification" page I enter "<requested_date>" into the "Req Dates 1" field
	And in the "Certification" page I enter "<member_id>" into the "Member Number" field
	And in the "Certification" page I use the source "<source>" to determine what to enter into the "Source" field
	And in the "Certification" page I enter the primary "<diagnosis_code>" into the "Primary Diag Dt 1" field and save the variable
	And in the "Certification" page I enter "OB" into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_requested" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_discharge_date>" into the "dates_end_approved" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "<auth_admission_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
  And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image

	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what count to enter into the count image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "prov" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<servicing_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And I edit myself if I am a NONPAR
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically

	And in the "Functions Menu" page I click on "Remarks"
	And in the "remarks_maintenance" page I should see the "remarks_maintenance" image
	And the test pauses for "3" seconds
	And I press "Control + N"
	And the test pauses for "4" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And the test pauses for "2" seconds
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"



		Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 01082018 | 2018-01-08T11:16:00+00:00 |  | 000082393-01 | Raymond | Green | HOSPITALIST MEDICINE PHY | 948091 | SAMUEL | ADAMS | 1225018104 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 01122018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 01052018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108057 | N179 | Acute kidney failure, unspecified | ICD10 | 01122018 | 01052018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T08:55:21+00:00 |  | 000115791-01 | William | Van De Pas | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01122018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12242017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226051 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01122018 | 12242017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12272017 | 2017-12-27T13:12:43+00:00 |  | 000108387-01 | Gerald | Wallace | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01122018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12272017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227077 | J449, S2242XA | Multiple fractures of ribs, left side, init for clos fx | ICD10 | 01122018 | 12272017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01022018 | 2018-01-02T10:57:41+00:00 |  | 000053885-01 | MARGARET | STEPP | APOGEE MED GRP OHIO INC | 943520 | DALIA M | DAWOUD | 1508026386 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01012018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103039 | R112 | Nausea with vomiting, unspecified | ICD10 | 01122018 | 01012018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12072017 | 2017-12-07T14:36:28+00:00 |  | 000116303-01 | Judith | White | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01082018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171207064 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01122018 | 01082018 | 01112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 01082018 | 2018-01-08T17:53:25+00:00 |  | 000114311-01 | Manuel | Pabon | SOUND INPATIENT PHYS OF | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109079 | R4182 | Altered mental status, unspecified | ICD10 | 01122018 | 01072018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01092018 | 2018-01-09T12:30:21+00:00 |  | 000055856-01 | GEORGE | PETTET | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01082018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109121 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 01122018 | 01082018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01102018 | 2018-01-10T10:29:12+00:00 |  | 000101687-01 | Patricia | Jarrell | CEN OH PRIMARY CARE SPEC | 936972 | NISHIT G | JHAVERI | 1356400659 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01092018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110037 | E872, K567 | Ileus, unspecified | ICD10 | 01122018 | 01092018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01102018 | 2018-01-10T14:14:21+00:00 |  | 000116591-01 | LOUPCHE | PRCULOVSKI | APOGEE MED GRP OHIO INC | 913747 | ATUL | KUTWAL | 1902136153 | GENESIS MEDICAL GRP LLC | 908733 | 1063663433 | DAVID M SKROBOT | 1629066998 | Observation | OBSV | Concurrent Review | CONC | DAVID M | SKROBOT | 01122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01092018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110083 | C7951, R0600, R748 | Abnormal levels of other serum enzymes | ICD10 | 01122018 | 01092018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T10:49:46+00:00 |  | 000056794-01 | CHARLES | TODD | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01072018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109007 | G20, R443 | Hallucinations, unspecified | ICD10 | 01122018 | 01072018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01052018 | 2018-01-05T14:06:38+00:00 |  | 000044533-01 | PAULINE | RUSSELL | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 01042018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105065 | E870, R748 | Abnormal levels of other serum enzymes | ICD10 | 01122018 | 01042018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12132017 | 2017-12-13T12:36:38+00:00 |  | 000079068-01 | Marie | Burks | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 01122018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 12122017 | 12142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171213089 | I481, N390, R42, R531 | Weakness | ICD10 | 01122018 | 12122017 | 12142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01092018 | 2018-01-09T10:56:07+00:00 |  | 000048499-01 | SARA | MCCONNELL | HMP OF FRANKLIN CTY LTD | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01082018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109086 | S32512A | Fracture of superior rim of left pubis, init for clos fx | ICD10 | 01122018 | 01082018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12192017 | 2017-12-19T10:57:57+00:00 |  | 000110638-01 | Darlene | Dials | RIVERSIDE SURG ASSOC INC | 910216 | ROBERT | TOSCANO | 1205835063 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 12182017 | 12202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219086 | Y09 | Assault by unspecified means | ICD10 | 01122018 | 12182017 | 12202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T14:46:31+00:00 |  | 000074362-01 | William | Mahr | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01122018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 01072018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109043 | R079 | Chest pain, unspecified | ICD10 | 01122018 | 01072018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01102018 | 2018-01-10T14:05:35+00:00 |  | 000009624-01 | JOHN | BEACHY | ADENA REGIONAL MED CTR | 934811 | YADWINDER | SINGH | 1083608830 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01092018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110090 | E876 | Hypokalemia | ICD10 | 01122018 | 01092018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01022018 | 2018-01-02T13:55:51+00:00 |  | 000108489-01 | Barbara | Mendenhall | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 12292017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103028 | E43, N390, R531 | Weakness | ICD10 | 01122018 | 12292017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12182017 | 2017-12-18T10:16:00+00:00 |  | 000014484-01 | CHARLES | BOWERSOCK | OHIOHEALTH PHYS GRP | 919351 | SABREEN O | ABU OBAID | 1700026556 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 12172017 | 12182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218133 | R079 | Chest pain, unspecified | ICD10 | 01122018 | 12172017 | 12182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01112018 | 2018-01-11T13:02:07+00:00 |  | 000114550-01 | Susan | Hatfield | THE CHRIST HSP MED SPEC | 930530 | THOMAS J | KEREIAKES | 1437190923 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 01122018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01102018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111061 | R040 | Epistaxis | ICD10 | 01122018 | 01102018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01102018 | 2018-01-10T11:59:34+00:00 |  | 000063148-01 | ALVYDAS | BICIUNAS | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01092018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110055 | I214, R079 | Chest pain, unspecified | ICD10 | 01122018 | 01092018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01112018 | 2018-01-11T17:14:08+00:00 |  | 000021846-01 | EARL | DERRING | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01102018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112013 | J449, R0902 | Hypoxemia | ICD10 | 01122018 | 01102018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01112018 | 2018-01-11T14:27:37+00:00 |  | 000014717-01 | EVERETT | EDMONDS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01102018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111072 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01122018 | 01102018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01122018 | 2018-01-12T10:19:51+00:00 |  | 000111744-01 | JOE | WRIGHT | HOSPITALIST MEDICINE PHY | 940020 | ALI R | IMANI | 1285921858 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01122018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112028 | I4891 | Unspecified atrial fibrillation | ICD10 | 01122018 | 01122018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T12:49:34+00:00 |  | 000099219-01 | DOROTHY | BOLINGER | HOSPITALIST MEDICINE PHY | 948134 | DONNA R | ADAMS | 1154381994 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 01122018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 01052018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108115 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 01122018 | 01052018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T11:14:39+00:00 |  | 000031429-01 | LEWIS | BLEVINS | LICKING MEM INPATIENT ME | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01062018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108085 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 01122018 | 01062018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01092018 | 2018-01-09T17:38:03+00:00 |  | 000109615-01 | Karyn | Davis | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01082018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110008 | R4182 | Altered mental status, unspecified | ICD10 | 01122018 | 01082018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
