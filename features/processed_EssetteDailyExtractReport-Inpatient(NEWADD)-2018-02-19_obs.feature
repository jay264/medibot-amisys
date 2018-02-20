Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-19_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-19_OBS
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
| 02162018 | 2018-02-16T13:43:05+00:00 |  | 000064758-01 | MARY | SLYGH | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216075 | I10, R040, R0602, R51 | Headache | ICD10 | 02192018 | 02162018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02162018 | 2018-02-16T10:09:32+00:00 |  | 000065766-01 | ARTHUR | CRABTREE | COPC CENTRAL OHIO PRIMAR | 942147 | KEVIN P | MCANINCH | 1104183649 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02152018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216008 | R4182 | Altered mental status, unspecified | ICD10 | 02192018 | 02152018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02162018 | 2018-02-16T10:22:39+00:00 |  | 000069974-01 | Norman | Rinehart | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02152018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216012 | M6281 | Muscle weakness (generalized) | ICD10 | 02192018 | 02152018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02092018 | 2018-02-09T08:58:00+00:00 |  | 000039985-01 | MARGARET | BRAHAM | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02082018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209013 | M545, S22089A | Unsp fracture of T11-T12 vertebra, init for clos fx | ICD10 | 02192018 | 02082018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02152018 | 2018-02-15T10:35:04+00:00 |  | 000119295-01 | Terry | Nesbitt | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02142018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215031 | M79604, M79605 | Pain in left leg | ICD10 | 02192018 | 02142018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02172018 | 2018-02-17T16:24:56+00:00 |  | 000070393-01 | Paul | Krieger | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02162018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219003 | R42 | Dizziness and giddiness | ICD10 | 02192018 | 02162018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02012018 | 2018-02-01T12:42:43+00:00 |  | 000078385-01 | Jo | Evilsizor | SPRINGFIELD UROLOGY LLC | 903102 | ANANTH | ANNAMRAJU | 1003981168 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02132018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201046 | S3710XD | Unspecified injury of ureter, subsequent encounter | ICD10 | 02192018 | 02132018 | 02162018 | 50780, S2900 | SURGICAL TECHNIQUES REQUIRING USE OF ROBOTIC SURGICAL SYSTEM | HCPCS | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | HCPCS | HC |  |  |  | 3.0 |
| 02132018 | 2018-02-13T08:53:22+00:00 |  | 000059599-01 | CONNIE | HINTON | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213053 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02192018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02132018 | 2018-02-13T09:02:20+00:00 |  | 000102085-01 | Donald | Hoylman | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213074 | J189 | Pneumonia, unspecified organism | ICD10 | 02192018 | 02122018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02132018 | 2018-02-13T11:22:55+00:00 |  | 000065717-01 | MARTHA | SELLERS | WILMINGTON PHYS GRP LLC | 952220 | PETER A | SNITOVSKY | 1710951520 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213106 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02192018 | 02122018 | 02142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02152018 | 2018-02-15T08:24:44+00:00 |  | 000119547-01 | Richard | Hamrick | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02192018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02142018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215020 | I495 | Sick sinus syndrome | ICD10 | 02192018 | 02142018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02152018 | 2018-02-15T13:36:15+00:00 |  | 000108454-01 | Larry | Shank | BANDED KILLIFISH INPATIE | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02152018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215060 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02192018 | 02152018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02132018 | 2018-02-13T12:43:10+00:00 |  | 000112264-01 | Marian | Watts | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 02192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213089 | L02419, L03119 | Cellulitis of unspecified part of limb | ICD10 | 02192018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02142018 | 2018-02-14T07:59:21+00:00 |  | 000043005-01 | LINDA | GOZY | ADENA MEDICAL GROUP LLC | 903781 | JAMES R | MANAZER | 1205860228 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02152018 | 02162018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214002 | I70244 | Athscl native art of left leg w ulcer of heel and midfoot | ICD10 | 02192018 | 02152018 | 02162018 | 37221, 35558, 35661 | BYPASS GR, NT VN, FEMORAL-FEMORAL | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02152018 | 2018-02-15T12:01:08+00:00 |  | 000086549-01 | Susan | Idle | APOGEE MED GRP OHIO INC | 928091 | NAWAZ | AHMED | 1154634798 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02142018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215041 | R079 | Chest pain, unspecified | ICD10 | 02192018 | 02142018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02162018 | 2018-02-16T08:06:52+00:00 |  | 000073955-01 | James | Riley | FAYETTE COUNTY MEM HSP 1 | 903662 |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02152018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216018 | I4891, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 02192018 | 02152018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02162018 | 2018-02-16T12:30:48+00:00 |  | 000115791-01 | William | Van De Pas | CLERMONT INTERNISTS ASSO | 921516 | CHANDRASEKAR | VAIDYANATHAN | 1659373553 | MERCY HOSPITAL CLERMONT | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 02192018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02162018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216062 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02192018 | 02162018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02162018 | 2018-02-16T13:07:33+00:00 |  | 000109259-01 | Franklin | West | SPRINGFIELD UROLOGY LLC | 903102 | ANANTH | ANNAMRAJU | 1003981168 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02162018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216064 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 02192018 | 02162018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02172018 | 2018-02-17T17:08:46+00:00 |  | 000076186-01 | Francis | Luning | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02192018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 02162018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219004 | K750 | Abscess of liver | ICD10 | 02192018 | 02162018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02192018 | 2018-02-19T08:53:55+00:00 |  | 000106386-01 | William Jackson | Sneed | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219023 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02192018 | 02172018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02192018 | 2018-02-19T09:24:41+00:00 |  | 000103127-01 | Enos | Wisniewski | MOUNT CARMEL HLTH PRVDRS | 937383 | PHILIP D | BERGER | 1851339725 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02192018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02172018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219027 | K5669 | Other intestinal obstruction | ICD10 | 02192018 | 02172018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02192018 | 2018-02-19T09:45:06+00:00 |  | 000086076-01 | Paulette | Penwell | MERCY HEALTH PHYSICIANS | 907641 | TEDROS | ANDOM | 1629160262 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02162018 | 02182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219029 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 02192018 | 02162018 | 02182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02192018 | 2018-02-19T12:32:47+00:00 |  | 000116085-01 | Carolyn | Sheets | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02192018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02172018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219065 | E872, R296, S82831A | Oth fracture of upper and lower end of right fibula, init | ICD10 | 02192018 | 02172018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
