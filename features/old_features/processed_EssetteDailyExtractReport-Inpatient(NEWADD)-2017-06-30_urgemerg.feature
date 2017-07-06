Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-30_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-30_URGEMERG
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
	And in the "hospital_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex_new" image
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result in the "how_many_requested" image
	And the test pauses for "2" seconds

	#And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And in the "authorized_services" page I enter "21" into the "location" image
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
| 05042017 | 2017-05-04T15:09:44+00:00 |  | 000108916-01 | Connie | Szuk | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504057 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06302017 | 06282017 | 06302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05262017 | 2017-05-26T01:12:04+00:00 |  | 000069899-01 | Russell | Karlen III | NORTH CENTRAL OHIO HEALT | 905685 | RASHID | PERVEZ | 1528144177 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05242017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526002 | F328 | Other depressive episodes | ICD10 | 06302017 | 05242017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05302017 | 2017-05-30T11:25:34+00:00 | 178394227147 | 000014462-01 | HERBERT | SMITH | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 05272017 | 05312017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530098 | I509 | Heart failure, unspecified | ICD10 | 06302017 | 05272017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06092017 | 2017-06-09T11:23:20+00:00 | 026790819-7163 | 000080391-01 | Elizabeth | Longworth | ORTHO & NEURO CONSULTS I | 942983 | RYAN M | PALMER | 1912134487 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609052 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06302017 | 06282017 | 06302017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06142017 | 2017-06-14T08:39:43+00:00 |  | 000051642-01 | DONNA | CODY | OSU INTERNAL MED LLC | 947140 | NATHAN A | DONHAM | 1558704940 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06132017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614007 | G9340 | Encephalopathy, unspecified | ICD10 | 06302017 | 06132017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06142017 | 2017-06-14T15:41:57+00:00 |  | 000113476-01 | Brenda | Goerlitz | COLON & RECTAL SURG INC | 937269 | ANANTHA | PADMANABHAN | 1689674780 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06272017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614064 | D122 | Benign neoplasm of ascending colon | ICD10 | 06302017 | 06272017 | 06302017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06192017 | 2017-06-19T09:47:10+00:00 |  | 000040006-01 | ROBERT | WILSON | FAYETTE COUNTY MEM HSP C | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06182017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619029 | R0602 | Shortness of breath | ICD10 | 06302017 | 06182017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06202017 | 2017-06-20T09:21:10+00:00 | 250768737171 | 000002975-01 | LENA | MILENKOVSKA | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06192017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620020 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 06302017 | 06202017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06202017 | 2017-06-20T08:38:43+00:00 | 026096321-7164 | 000042020-01 | BEVERLY | YOAKAM | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06292017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620022 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06302017 | 06292017 | 06302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06202017 | 2017-06-20T10:01:00+00:00 | 263335947171 | 000060264-01 | ELISABETH | PACE | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06202017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620038 | A419 | Sepsis, unspecified organism | ICD10 | 06302017 | 06202017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06202017 | 2017-06-20T13:27:11+00:00 |  | 000102178-01 | Phyllis | Payne | ALLIANCE PHYSICIANS INC | 906934 | BRIAN P | SCHWARTZ | 1255315453 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06302017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06192017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620114 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06302017 | 06192017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06212017 | 2017-06-21T11:19:21+00:00 |  | 000088586-01 | Clarence | Cottrill | ADENA HEALTH SYSTEMS | 939543 | DANIEL J | IANNI | 1295816288 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06222017 | 06292017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621043 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 06302017 | 06222017 | 06292017 | 27488 | RMVL KNEE PROS INC TOTAL KNEE | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 06212017 | 2017-06-21T15:00:49+00:00 | 025678666-7129 | 000106732-01 | Helga | Scriven | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06302017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06292017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621075 | M1711, M25561 | Pain in right knee | ICD10 | 06302017 | 06292017 | 06302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06222017 | 2017-06-22T09:57:31+00:00 | 178586257173 | 000046979-01 | ANNA | METZGER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06212017 | 06302017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622013 | I509 | Heart failure, unspecified | ICD10 | 06302017 | 06212017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06232017 | 2017-06-23T10:51:10+00:00 | 173405957174 | 000029265-01 | MYRIAM | PLACE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06232017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623032 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 06302017 | 06232017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06232017 | 2017-06-23T13:37:16+00:00 |  | 000077372-01 | Walter | Hughes | TRIHEALTH H LLC | 932552 | MICHAEL C | LAUGLE | 1174893655 | BETHESDA MEMORIAL HOSPITAL INC | 916807 | 1417952748 | BETHESDA MEMORIAL HOSPITAL INC | 1417952748 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA MEMORIAL HOSPITAL INC | 06302017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06222017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623065 | G9340 | Encephalopathy, unspecified | ICD10 | 06302017 | 06222017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06262017 | 2017-06-26T10:16:06+00:00 | 252888497174 | 000033389-01 | ARTHUR | TIMMONS | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06242017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626014 | N179 | Acute kidney failure, unspecified | ICD10 | 06302017 | 06242017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06262017 | 2017-06-26T10:27:50+00:00 | 252303077176 | 000068748-01 | VICKIE | SIGMAN | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06302017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 06252017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626022 | R079 | Chest pain, unspecified | ICD10 | 06302017 | 06252017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06242017 | 2017-06-24T06:46:28+00:00 | 026554453-7174 | 000081646-01 | Jodi | Cooperrider | RALPH NAPOLITANO DPM LLC | 906537 | RALPH J | NAPOLITANO JR | 1831240795 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626050 | T8744 | Infection of amputation stump, left lower extremity | ICD10 | 06302017 | 06232017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06262017 | 2017-06-26T07:27:18+00:00 |  | 000067033-01 | SAMUEL | WILLIAMS JR | HMP OF PICKAWAY COUNTY L | 914637 | EMMANUEL | CHUKWUNYERE | 1821235540 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626056 | I10 | Essential (primary) hypertension | ICD10 | 06302017 | 06232017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06262017 | 2017-06-26T11:22:25+00:00 | 255524717176 | 000031366-01 | NOUPHET | THEUAMTHALARAY | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06252017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626057 | J181, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06302017 | 06252017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06262017 | 2017-06-26T10:28:24+00:00 |  | 000076248-01 | Margaret | Barth | EASTERN HILLS INTL MED I | 921533 | DAVID G | WILSON | 1750394730 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06302017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06232017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626122 | K819, R109, R160 | Hepatomegaly, not elsewhere classified | ICD10 | 06302017 | 06232017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06272017 | 2017-06-27T10:00:05+00:00 | 250173847177 | 000115978-01 | Russell | Cook | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06262017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627027 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06302017 | 06262017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06272017 | 2017-06-27T08:58:40+00:00 |  | 000093789-01 | Leila | Hollett | OSU INTERNAL MED LLC | 911866 | JAMES R | KNIGHT | 1740496553 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627053 | R4182 | Altered mental status, unspecified | ICD10 | 06302017 | 06262017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06282017 | 2017-06-28T10:28:37+00:00 | 253397947178 | 000051793-01 | Robert | Lockard | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06272017 | 06302017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628027 | R079 | Chest pain, unspecified | ICD10 | 06302017 | 06272017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06282017 | 2017-06-28T10:51:54+00:00 | 251800567178 | 000057548-01 | THAD | HELFER | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06272017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628034 | K920 | Hematemesis | ICD10 | 06302017 | 06272017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06292017 | 2017-06-29T08:34:12+00:00 |  | 000057595-01 | BOBBY | SMITH | HMP OF OHIO PC | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06302017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629041 | I4891 | Unspecified atrial fibrillation | ICD10 | 06302017 | 06282017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06292017 | 2017-06-29T12:57:56+00:00 |  | 000111377-01 | James | Zavisin | HEALTHSOUTH REHABILITATI | 947611 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | HEALTHSOUTH REHABILITATI | 947611 | 1538440904 | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 06302017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 06302017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170629060 | M869 | Osteomyelitis, unspecified | ICD10 | 06302017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
