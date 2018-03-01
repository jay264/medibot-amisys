Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-27_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-27_OBS
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
| 02152018 | 2018-02-15T11:56:46+00:00 |  | 000067081-01 | FRANCIS | NOVAK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02142018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215038 | R791 | Abnormal coagulation profile | ICD10 | 02272018 | 02142018 | 02222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02222018 | 2018-02-22T10:40:05+00:00 |  | 000068534-01 | DARREL | COEY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222022 | J111 | Flu due to unidentified influenza virus w oth resp manifest | ICD10 | 02272018 | 02202018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02222018 | 2018-02-22T10:45:50+00:00 |  | 000077972-01 | Sandy | Daniels | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02192018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222024 | Z452 | Encounter for adjustment and management of VAD | ICD10 | 02272018 | 02192018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02222018 | 2018-02-22T14:37:05+00:00 |  | 000070470-01 | Patty | Darby | COLS INPATIENT CARE INC | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222056 | R509 | Fever, unspecified | ICD10 | 02272018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T10:36:25+00:00 |  | 000040866-01 | BETTY | BRANHAM | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02222018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223028 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 02272018 | 02222018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02232018 | 2018-02-23T11:26:04+00:00 |  | 000005583-01 | DONALD | EWELL | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223040 | E162 | Hypoglycemia, unspecified | ICD10 | 02272018 | 02222018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02192018 | 2018-02-19T11:09:36+00:00 |  | 000015183-01 | Harley | Hanes Sr | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219057 | R079 | Chest pain, unspecified | ICD10 | 02272018 | 02172018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02202018 | 2018-02-20T08:14:37+00:00 |  | 000000720-01 | DARLENE | DICK | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02202018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220058 | K5712, R109, R319 | Hematuria, unspecified | ICD10 | 02272018 | 02202018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02212018 | 2018-02-21T10:53:26+00:00 |  | 000112498-01 | Margaret | Frank | KNOX COMMUNITY HOSP GRP | 904518 | DAVID A | KITTOE | 1730149154 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02202018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221081 | R627 | Adult failure to thrive | ICD10 | 02272018 | 02202018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02232018 | 2018-02-23T11:34:29+00:00 |  | 000044206-01 | ROBERT | LAMBERT | MOUNT CARMEL HLTH SYS | 905259 | LEENA | TARIGOPULA | 1023002714 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223042 | Z01818 | Encounter for other preprocedural examination | ICD10 | 02272018 | 02222018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02232018 | 2018-02-23T11:42:36+00:00 |  | 000114249-01 | Baldassare | Zambuto | HOSPITALIST MEDICINE PHY | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02222018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223043 | M6281 | Muscle weakness (generalized) | ICD10 | 02272018 | 02222018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02232018 | 2018-02-23T11:40:33+00:00 |  | 000097216-01 | Thelma | Mills | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223045 | K6389 | Other specified diseases of intestine | ICD10 | 02272018 | 02222018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02272018 | 2018-02-27T08:00:17+00:00 |  | 000101587-01 | Celesta | Venneman | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02272018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02262018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227025 | R6889 | Other general symptoms and signs | ICD10 | 02272018 | 02262018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01122018 | 2018-01-12T10:02:25+00:00 |  | 000111944-01 | Barbara A | Kunz | ORTHO INSTITUTE OF DAYTO | 902345 | KEVIN J | PALEY | 1982603627 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02192018 | 02212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112025 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 02272018 | 02192018 | 02212018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01122018 | 2018-01-12T10:22:04+00:00 |  | 000117674-01 | Roger | Evans | ORTHO INSTITUTE OF DAYTO | 902345 | KEVIN J | PALEY | 1982603627 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02272018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 02192018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112030 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 02272018 | 02192018 | 02202018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  | No child records to display. |  |
| 02222018 | 2018-02-22T10:22:57+00:00 |  | 000023552-01 | THOMAS | DODDS | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222041 | N390, R0902 | Hypoxemia | ICD10 | 02272018 | 02222018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02222018 | 2018-02-22T10:06:50+00:00 |  | 000092082-01 | GLENNA | BOOKER | KEVIN M REID DO INC | 903141 |  | KEVIN M REID DO INC | 0 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222060 | E871, E875 | Hyperkalemia | ICD10 | 02272018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02232018 | 2018-02-23T14:48:52+00:00 |  | 000042529-01 | PATRICIA | SINES | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223062 | R0602 | Shortness of breath | ICD10 | 02272018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02252018 | 2018-02-25T18:05:08+00:00 |  | 000024673-01 | WILMA | GRAY | COLS INPATIENT CARE INC | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02212018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226012 | R296 | Repeated falls | ICD10 | 02272018 | 02212018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02252018 | 2018-02-25T11:22:29+00:00 |  | 000073062-01 | Diana | Braden | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02242018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226023 | G459, G510, I7771 | Dissection of carotid artery | ICD10 | 02272018 | 02242018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T12:15:33+00:00 |  | 000090374-01 | Toby | Hummel | GENERAL SURG ASSOC INC | 900848 | DAVID J | ROBERTSON | 1811983067 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02252018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226084 | L0390, R509, R5383 | Other fatigue | ICD10 | 02272018 | 02252018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02262018 | 2018-02-26T15:32:29+00:00 |  | 000090172-01 | George | Gholson | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02242018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226112 | A419, L03115, S91301A | Unspecified open wound, right foot, initial encounter | ICD10 | 02272018 | 02242018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02262018 | 2018-02-26T17:01:45+00:00 |  | 000044004-01 | THURMAN | WARNOCK JR | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02232018 | 02262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227020 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 02272018 | 02232018 | 02262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T10:11:06+00:00 |  | 000090665-01 | Alanna | Wells | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02262018 | 02272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227050 | I200 | Unstable angina | ICD10 | 02272018 | 02262018 | 02272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02272018 | 2018-02-27T15:38:04+00:00 |  | 000060983-01 | BETTY | MESSER | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227084 | G40909, R0902, R4182 | Altered mental status, unspecified | ICD10 | 02272018 | 02222018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02272018 | 2018-02-27T15:50:39+00:00 |  | 000042438-01 | LONNIE | FERGUSON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | THE TIMKEN COMPANY | Fax | Observation | Inpatient | 02222018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227088 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02272018 | 02222018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02272018 | 2018-02-27T16:01:32+00:00 |  | 000028883-01 | PHILIP | JOHNSON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02222018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227089 | J189 | Pneumonia, unspecified organism | ICD10 | 02272018 | 02222018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02272018 | 2018-02-27T16:21:01+00:00 |  | 000106079-01 | Elizabeth | Marcus | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 02222018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227095 | L03116 | Cellulitis of left lower limb | ICD10 | 02272018 | 02222018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02272018 | 2018-02-27T16:35:29+00:00 |  | 000096539-01 | Joseph | Hughes | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02242018 | 02252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227097 | N200 | Calculus of kidney | ICD10 | 02272018 | 02242018 | 02252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
