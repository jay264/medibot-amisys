Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-07_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-07_URGEMERG
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
	And in the "Certification" page I use the sub-class "<sub_class>" to determine what to enter into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	And in the "hospital_services" page I enter "<auth_admission_date>" into the "est_admit" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "auth_days" image

	And in the "hospital_services" page I enter "$" into the "facility_number" image
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
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
	#And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And in the "provider_affiliation_list" page I convert "<health_plan>" as HMO or PPO and enter into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I enter "H" into the "cp_search_cell" image
	And I press ENTER graphically
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I determine whether something is PAR or NONPAR
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds

	And in the "hospital_services" page I enter "$" into the "ref_prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "prov_number" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I enter "<requesting_provider_id>" into the "prov_number" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_search" page I should see the "loaded_header" image
	And the test pauses for "3" seconds
	And in the "provider_search" page I click on the "prov_affs" image
	And the test pauses for "5" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "5" seconds
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
	And the test pauses for "2" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I copy the provider number to the clipboard and save the variable
	And the test pauses for "3" seconds
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
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
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And in the "Certification" page I enter the updated auth type code into the "Auth Type" field
	And I press "Control + S"
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

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 03222017 | 2017-03-22T14:20:18+00:00 |  | 000079475-01 | Irene | Randall | MERCY EMERGENCY CARE SER | 941138 | CHARLENE A | MILLER | 1851349351 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03212017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170324065 | I4891 | Unspecified atrial fibrillation | ICD10 | 06072017 | 03212017 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04122017 | 2017-04-12T08:53:58+00:00 |  | 000055962-01 | SHARON | SHAFER | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05302017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412020 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06072017 | 05302017 | 06022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04242017 | 2017-04-24T14:55:24+00:00 |  | 000071523-01 | Earl | Emery | ORTHO INSTITUTE OF DAYTO | 902696 | JEFFREY S | HOSKINS | 1669471447 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 06072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06022017 | 06042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426049 | M4806 | Spinal stenosis, lumbar region | ICD10 | 06072017 | 06022017 | 06042017 | 22830, 63047, 63048, 22612, 22614, 22842, 20936, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05092017 | 2017-05-09T07:42:52+00:00 |  | 000011483-01 | CHARLES | POTTS | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509005 | C61 | Malignant neoplasm of prostate | ICD10 | 06072017 | 06052017 | 06072017 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 05152017 | 2017-05-15T16:57:00+00:00 |  | 000062041-01 | DAVID | HAYS | CENTRAL OH HSPISTS INC | 932663 | ELIZABETH K | TODD | 1043500036 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05142017 | 05182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516008 | R55 | Syncope and collapse | ICD10 | 06072017 | 05142017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T11:10:21+00:00 |  | 000005242-01 | WINONA | ROBERTS | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517047 | I639 | Cerebral infarction, unspecified | ICD10 | 06072017 | 05172017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 05172017 | 2017-05-17T14:41:53+00:00 |  | 000086130-01 | Burton | Miller | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05162017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517075 | A419, C8591, E872, I714, I959, R6521 | Severe sepsis with septic shock | ICD10 | 06072017 | 05162017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 05182017 | 2017-05-18T11:19:31+00:00 |  | 000065030-01 | GARRY | BENNETT | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05182017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518032 | I4891 | Unspecified atrial fibrillation | ICD10 | 06072017 | 05182017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 05192017 | 2017-05-19T07:42:59+00:00 |  | 000099598-01 | Samuel | Baker | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05182017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519010 | A419, R6520 | Severe sepsis without septic shock | ICD10 | 06072017 | 05182017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05192017 | 2017-05-19T10:06:33+00:00 |  | 000010766-01 | ROSELIE | SMITH | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05242017 | 05312017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519040 | T8453XD, T84032D | Mech loosening of internal right knee prosthetic joint, subs | ICD10 | 06072017 | 05242017 | 05302017 | 27488 | RMVL KNEE PROS INC TOTAL KNEE | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 1.0 |
| 05242017 | 2017-05-24T12:22:45+00:00 |  | 000066743-01 | PATRICIA | LEWIS | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05232017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524035 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06072017 | 05232017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 05252017 | 2017-05-25T10:52:11+00:00 |  | 000010759-01 | MARY | REA | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05242017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525032 | M549 | Dorsalgia, unspecified | ICD10 | 06072017 | 05242017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 05252017 | 2017-05-25T14:00:57+00:00 | 025676809-7137 | 000034905-01 | BARBARA | FREEMAN | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525052 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06072017 | 06062017 | 06072017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05262017 | 2017-05-26T01:12:04+00:00 |  | 000069899-01 | Russell | Karlen III | NORTH CENTRAL OHIO HEALT | 905685 | RASHID | PERVEZ | 1528144177 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05242017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526002 | F328 | Other depressive episodes | ICD10 | 06072017 | 05242017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05262017 | 2017-05-26T10:46:19+00:00 |  | 000097897-01 | Harold | Yates | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05252017 | 05282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526030 | R109 | Unspecified abdominal pain | ICD10 | 06072017 | 05252017 | 05282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05302017 | 2017-05-30T09:21:14+00:00 |  | 000028486-01 | DOROTHY | KOLLMER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05262017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530020 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 06072017 | 05262017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05302017 | 2017-05-30T09:34:57+00:00 | 251614047146 | 000112855-01 | Richard | Dearwester | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05272017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530025 | R0602 | Shortness of breath | ICD10 | 06072017 | 05262017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05302017 | 2017-05-30T10:20:25+00:00 |  | 000109475-01 | Myron | Calendine | GENESIS MEDICAL GRP LLC | 904911 | DAVID M | BARBARA | 1619929981 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06072017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05282017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530145 | K5669 | Other intestinal obstruction | ICD10 | 06072017 | 05282017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05302017 | 2017-05-30T14:33:47+00:00 |  | 000008224-01 | MARIANN | SCHMITT | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05302017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530178 | J9691 | Respiratory failure, unspecified with hypoxia | ICD10 | 06072017 | 05302017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05302017 | 2017-05-30T11:30:07+00:00 |  | 000117292-01 | Sharon | Frazee | MID STATE PHYSICIANS LLP | 925810 | BASHAR | SALEM | 1841306958 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06072017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05302017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530185 | A419 | Sepsis, unspecified organism | ICD10 | 06072017 | 05302017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05312017 | 2017-05-31T08:15:55+00:00 |  | 000049981-01 | RICHARD | CARPER | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05262017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531023 | J449, R0902 | Hypoxemia | ICD10 | 06072017 | 05262017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05312017 | 2017-05-31T10:24:39+00:00 |  | 000117753-01 | Teeya | Kirkland | TRIHLTH SURG INSTITUTE L | 921180 | LOUIS C | THIBODEAUX | 1922080308 | BETHESDA MEMORIAL HOSPITAL INC | 916807 | 1417952748 | BETHESDA MEMORIAL HOSPITAL INC | 1417952748 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA MEMORIAL HOSPITAL INC | 06072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05252017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531052 | R109 | Unspecified abdominal pain | ICD10 | 06072017 | 05252017 | 06012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05312017 | 2017-05-31T14:48:52+00:00 |  | 000084580-01 | James | Westfall | SOUND KENWOOD HSPISTS OF | 925204 | AMIT | PATEL | 1720231897 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06072017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05312017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531083 | I4891, J810, R0902, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 06072017 | 05312017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06012017 | 2017-06-01T09:47:10+00:00 |  | 000082234-01 | Gerard | Gerlach | CLEVELAND CLINIC FNDN | 941614 | SHILA | SUBRAMANIAN | 1447456413 | MARYMOUNT HSP OF CLEVELA | 905111 | 1942248737 | MARYMOUNT HOSPITAL OF CLEVELAND | 1942248737 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MARYMOUNT HOSPITAL OF CLEVELAND | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05302017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601020 | F331 | Major depressive disorder, recurrent, moderate | ICD10 | 06072017 | 05302017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06012017 | 2017-06-01T11:48:23+00:00 |  | 000070284-01 | John | Hines | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05312017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601046 | R51 | Headache | ICD10 | 06072017 | 05312017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06012017 | 2017-06-01T12:54:17+00:00 |  | 000104846-01 | Helen | Heppard | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 06072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05312017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601054 | R188 | Other ascites | ICD10 | 06072017 | 05312017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06012017 | 2017-06-01T13:15:39+00:00 |  | 000089370-01 | Dorothy | Durham | JOSEPH C YU MD INC | 921540 | DALE P | YU | 1174506646 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06072017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05312017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601057 | E860, N10, N179, R112, R197 | Diarrhea, unspecified | ICD10 | 06072017 | 05312017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06022017 | 2017-06-02T10:34:11+00:00 | 025334143-7153 | 000010566-01 | FREDA | FARLEY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 06022017 | 06062017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602035 | I509, R0602 | Shortness of breath | ICD10 | 06072017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06022017 | 2017-06-02T10:52:34+00:00 | 026560446-7152 | 000101006-01 | Paulmina | Vetovich | HMP OF OHIO PC | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Essential Care | Reports | ACO - CHF | Inpatient | 06022017 | 06072017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602041 | I509 | Heart failure, unspecified | ICD10 | 06072017 | 06022017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06022017 | 2017-06-02T10:45:24+00:00 |  | 000078293-01 | Doris | Spahn | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 06052017 | 06062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602044 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 06072017 | 06052017 | 06062017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06022017 | 2017-06-02T15:55:05+00:00 |  | 000112786-01 | Donna | Bragg | ORTHO SPEC & SPORTS MED | 924918 | ALEKSANDAR | TANCEVSKI | 1194974824 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06072017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602080 | M1711, T8131XA | Disruption of external operation (surgical) wound, NEC, init | ICD10 | 06072017 | 06062017 | 06072017 | 27486, 27301 | I&D DEEP ABSCESS INF. BURSA/HEMA. | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06042017 | 2017-06-04T21:26:55+00:00 |  | 000018981-01 | ARTHUR | RAPIER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06032017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604003 | I509 | Heart failure, unspecified | ICD10 | 06072017 | 06032017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06042017 | 2017-06-04T21:57:50+00:00 |  | 000062668-01 | GAIL | LANDEFELD | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | THE TIMKEN COMPANY | Reports | Inpatient | Inpatient | 06022017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604008 | T8452XA | Infect/inflm reaction due to internal left hip prosth, init | ICD10 | 06072017 | 06022017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06042017 | 2017-06-04T22:04:35+00:00 |  | 000038809-01 | MADELYN | LANGLEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604009 | G9340, N390 | Urinary tract infection, site not specified | ICD10 | 06072017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06042017 | 2017-06-04T22:08:52+00:00 |  | 000021593-01 | MILDRED | OLIVER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | ACO -Cardiology | Inpatient | 06042017 | 06072017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604010 | R079 | Chest pain, unspecified | ICD10 | 06072017 | 06042017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T09:55:55+00:00 |  | 000010194-01 | DONNA | VESS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06042017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605027 | I639 | Cerebral infarction, unspecified | ICD10 | 06072017 | 06042017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T09:59:33+00:00 | 025992171-7154 | 000044296-01 | MARY | YAHNKE | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06032017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605030 | I4891 | Unspecified atrial fibrillation | ICD10 | 06072017 | 06032017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T08:26:07+00:00 |  | 000082775-01 | Amy | Martin | MOUNT CARMEL HLTH SYS | 914753 | CAIRAN J | POWERS | 1265606032 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06072017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06032017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605037 | I720 | Aneurysm of carotid artery | ICD10 | 06072017 | 06032017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T10:24:17+00:00 |  | 000083100-01 | Kenneth | Heslin | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06022017 | 06062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605045 | N179 | Acute kidney failure, unspecified | ICD10 | 06072017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T09:18:57+00:00 |  | 000078372-01 | Betty | Tilton | GENESIS MEDICAL GRP LLC | 924142 | EDWARD S | UMLAUF | 1942207063 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06072017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605057 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 06072017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T10:45:19+00:00 |  | 000001362-01 | EDNA | ROOF | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06032017 | 06072017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605063 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06072017 | 06032017 | 06072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T10:47:24+00:00 |  | 000047649-01 | HAROLD | HILES | MEHRA, TARUN | 900641 | TARUN | MEHRA | 1659374700 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06022017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605070 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 06072017 | 06022017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06052017 | 2017-06-05T10:43:46+00:00 |  | 000106080-01 | Thelma | Smith | COMMUNITY HSPIST LLC | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06072017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06022017 | 06042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605077 | I82429 | Acute embolism and thrombosis of unspecified iliac vein | ICD10 | 06072017 | 06022017 | 06042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06022017 | 2017-06-02T14:33:17+00:00 |  | 000006647-01 | ADA | RIGHTER | MOUNT CARMEL HLTH PRVDRS | 942767 | KYLE | PFAHL | 1801096789 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06012017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605115 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 06072017 | 06012017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06062017 | 2017-06-06T07:00:03+00:00 |  | 000112199-01 | Donna | Rausch | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 06052017 | 06062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606001 | N393, N8112, N812, N8182 | Incompetence or weakening of pubocervical tissue | ICD10 | 06072017 | 06052017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06062017 | 2017-06-06T08:22:07+00:00 |  | 000052656-01 | SANDRA | GIUSTI | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06072017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06062017 | 06062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606007 | K3580 | Unspecified acute appendicitis | ICD10 | 06072017 | 06062017 | 06062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T10:10:54+00:00 |  | 000017090-01 | SADIE | EAGLE | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 06072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607040 | I469 | Cardiac arrest, cause unspecified | ICD10 | 06072017 | 06052017 | 06052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
