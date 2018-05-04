Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-01_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-01_OBS
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
| 04252018 | 2018-04-25T09:59:53+00:00 |  | 000072015-01 | Richard | Hood | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04222018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425017 | A419 | Sepsis, unspecified organism | ICD10 | 04302018 | 04222018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04252018 | 2018-04-25T10:03:33+00:00 |  | 000068280-01 | ROSEWIN | OCHS | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425019 | R799 | Abnormal finding of blood chemistry, unspecified | ICD10 | 05012018 | 04242018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04182018 | 2018-04-18T08:08:20+00:00 |  | 000072579-01 | Linda | Landis | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04172018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418017 | G459, I208, R4781 | Slurred speech | ICD10 | 05012018 | 04172018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04232018 | 2018-04-23T08:28:01+00:00 |  | 000046332-01 | DELBERT | BACKUS | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04222018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423063 | M545, R296 | Repeated falls | ICD10 | 05012018 | 04222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T08:29:06+00:00 |  | 000070695-01 | Carol | Fulks | FAIRFIELD HLTHCARE PROFS | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04222018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423065 | E871, R531, W19XXXA | Unspecified fall, initial encounter | ICD10 | 05012018 | 04222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T08:30:11+00:00 |  | 000091521-01 | Thomas | Rork | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04222018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423068 | I959, R079, R55 | Syncope and collapse | ICD10 | 05012018 | 04222018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T08:29:40+00:00 |  | 000068470-01 | LINDA | CUCCIO | FAIRFIELD HLTHCARE PROFS | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04232018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424050 | R55 | Syncope and collapse | ICD10 | 05012018 | 04232018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T11:33:09+00:00 |  | 000075118-01 | Clarence | Sink Jr | HOSPITALIST MEDICINE PHY | 928091 | NAWAZ | AHMED | 1154634798 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424074 | I4891 | Unspecified atrial fibrillation | ICD10 | 05012018 | 04242018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04242018 | 2018-04-24T13:44:17+00:00 |  | 000047745-01 | RONALD | WILES | COPC CENTRAL OHIO PRIMAR | 911535 | RAVI | BELLALA | 1649483801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424095 | D61818, D649 | Anemia, unspecified | ICD10 | 05012018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T16:33:22+00:00 |  | 000096771-01 | GARY | ANDERSON | CLINTON MEMORIAL HOSPITAL | 917905 |  | CLINTON MEMORIAL HOSPITAL | 1063713659 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04202018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430092 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05012018 | 04202018 | 04222018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 3 | CPT | C4 |  |  |  | 2.0 |
| 04042018 | 2018-04-04T08:08:27+00:00 |  | 000047682-01 | MARY | UHL | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04032018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404046 | R079 | Chest pain, unspecified | ICD10 | 05012018 | 04032018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T09:07:41+00:00 |  | 000100066-01 | Ronald | Ables | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417053 | L03115, M79602, R0902 | Hypoxemia | ICD10 | 05012018 | 04162018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04182018 | 2018-04-18T10:28:30+00:00 |  | 000097992-01 | Marty | Williams | GRANT MEDICAL CENTER | 936409 |  | GRANT MEDICAL CENTER | 1255377149 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04172018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418025 | Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 05012018 | 04172018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04182018 | 2018-04-18T11:16:58+00:00 |  | 000040814-01 | CARL | MCGRAW | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04172018 | 04192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418047 | L0390 | Cellulitis, unspecified | ICD10 | 05012018 | 04172018 | 04192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T09:23:12+00:00 |  | 000083349-01 | John | Hendershot | GREENFIELD AREA MED CTR | 919753 | RICHARD S | HARRIS | 1811945801 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04232018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424054 | I509 | Heart failure, unspecified | ICD10 | 05012018 | 04232018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04242018 | 2018-04-24T15:02:55+00:00 |  | 000106484-01 | Bonnie | Corbin | ADENA MEDICAL GROUP LLC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424105 | R001 | Bradycardia, unspecified | ICD10 | 05012018 | 04232018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T07:35:24+00:00 |  | 000045016-01 | REGINA | ADAMS | OHIOHEALTH PHYS GRP | 924382 | DAWIT | WUBISHET | 1083971311 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425028 | I480, R001, R55 | Syncope and collapse | ICD10 | 05012018 | 04242018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04252018 | 2018-04-25T08:29:18+00:00 |  | 000085062-01 | Relva | Romine | FAIRFIELD MEDICAL CENTER | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425037 | G459, I10 | Essential (primary) hypertension | ICD10 | 05012018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252018 | 2018-04-25T12:13:22+00:00 |  | 000009638-01 | MAX | BUMGARNER | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425052 | R079 | Chest pain, unspecified | ICD10 | 05012018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252018 | 2018-04-25T14:57:49+00:00 |  | 000067305-01 | JAMES | COOPER | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425080 | M549 | Dorsalgia, unspecified | ICD10 | 05012018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T14:53:19+00:00 |  | 000117355-01 | THOMAS | VIRTS | MERCY HEALTH PHYSICIANS | 902845 | MARVIN M | NARCELLES | 1871583666 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426067 | R079 | Chest pain, unspecified | ICD10 | 05012018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T09:49:50+00:00 |  | 000097496-01 | Sue | Cole | HOSPITALIST MEDICINE PHY | 921371 | LAURA C | KENNY | 1881650885 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 05012018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427025 | D649 | Anemia, unspecified | ICD10 | 05012018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T13:41:54+00:00 |  | 000030323-01 | JOY | MENDENHALL | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427050 | J189 | Pneumonia, unspecified organism | ICD10 | 05012018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T09:01:22+00:00 |  | 000116399-01 | Lavena | Farrell | ER MED PHYS OF CHAMPAIGN | 926511 | MEGAN | LEONARD | 1467726323 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04272018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430028 | E871, R109, R112 | Nausea with vomiting, unspecified | ICD10 | 05012018 | 04272018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T10:27:04+00:00 |  | 000119982-01 | John | Lutz | FCMH MED & SURG ASSOC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Observation | OBSV | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04272018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430050 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05012018 | 04272018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T14:11:13+00:00 |  | 000079895-01 | Betty | Stamper | MEDICINE INPATIENT GROUP | 929488 | LOFTI F | MAMLOUK | 1013957216 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 05012018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04282018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501011 | R0602 | Shortness of breath | ICD10 | 05012018 | 04302018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T08:59:09+00:00 |  | 000077304-01 | Betty | Winkler | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427010 | R42, R51, R531 | Weakness | ICD10 | 05012018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T09:00:14+00:00 |  | 000018403-01 | NORMA | PINKSTOCK | FAIRFIELD HLTHCARE PROFS | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427011 | M5431, R109 | Unspecified abdominal pain | ICD10 | 05012018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04272018 | 2018-04-27T15:02:56+00:00 |  | 000109845-01 | Roger | Jarrells | DAYTON SURGEONS INC | 923165 | JULIE | GILKESON | 1558544270 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427068 | T814XXS | Infection following a procedure, sequela | ICD10 | 05012018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04292018 | 2018-04-29T13:40:03+00:00 |  | 000061000-01 | LARRY | MEYERS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430018 | R079 | Chest pain, unspecified | ICD10 | 05012018 | 04282018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T08:29:52+00:00 |  | 000118259-01 | Diann | Engle | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04292018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430027 | R079 | Chest pain, unspecified | ICD10 | 05012018 | 04292018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04302018 | 2018-04-30T13:28:47+00:00 |  | 000106462-01 | Louise E | Cooper | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04292018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501002 | J90, J9601, R0902 | Hypoxemia | ICD10 | 05012018 | 04292018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
