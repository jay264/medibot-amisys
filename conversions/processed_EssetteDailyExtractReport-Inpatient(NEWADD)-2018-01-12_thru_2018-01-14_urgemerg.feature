Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-12_thru_2018-01-14_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-12_thru_2018-01-14_URGEMERG
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
| 01112018 | 2018-01-11T12:28:44+00:00 |  | 000029886-01 | CAROLINE | TURNER | MOUNT CARMEL HLTH PRVDRS | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 01232018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180111057 | D321 | Benign neoplasm of spinal meninges | ICD10 | 01122018 |  |  | 63266, 69990 | MICROSURGERY ADD-ON | CPT | 1, 1 | 1, 1 | Approved, Approved | 32, 32 | CPT | C4 |  |  | No child records to display. |  |
| 01092018 | 2018-01-09T12:45:29+00:00 |  | 000057083-01 | SHARON | ANDERSON | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109124 | G939 | Disorder of brain, unspecified | ICD10 | 01122018 | 01082018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T10:28:29+00:00 |  | 000110888-01 | Margaret | Swigart | SMITH, KIRK E | 940202 | KIRK E | SMITH | 1730199985 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Inpatient | IP | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 01122018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 01062018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108069 | A419 | Sepsis, unspecified organism | ICD10 | 01122018 | 01062018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12262017 | 2017-12-26T10:00:36+00:00 | 265052137357 | 000044912-01 | MARY | CULVER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12232017 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226056 | I5033, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 01122018 | 12232017 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 12222017 | 2017-12-22T13:00:50+00:00 |  | 000069966-01 | Glen | Fox | ORTHOPEDIC ONE INC | 934921 | DENNIS J | TAYLOR | 1265425367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01102018 | 01112018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222046 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01122018 | 01102018 | 01112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01082018 | 2018-01-08T11:22:33+00:00 |  | 000101947-01 | Gary | Weimer | OHIOHEALTH PHYS GRP | 910639 | SUNG H | YI | 1265642961 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 01122018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 01052018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108106 | I4891 | Unspecified atrial fibrillation | ICD10 | 01122018 | 01052018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01112018 | 2018-01-11T13:59:37+00:00 |  | 000033462-01 | HELEN | GOHRING | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111066 | A419 | Sepsis, unspecified organism | ICD10 | 01122018 | 01102018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T12:38:02+00:00 |  | 000075447-01 | Arthur | Williams | MERCY HEALTH PHYSICIANS | 921535 | MATTHEW G | WITSKEN | 1184679516 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 01122018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01052018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108112 | I509, J90, R600, T45511A | Poisoning by anticoagulants, accidental, init | ICD10 | 01122018 | 01052018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01042018 | 2018-01-04T07:04:03+00:00 |  | 000068035-01 | LORENA | BANKSTON | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01122018 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 01032018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104016 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 01122018 | 01032018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01112018 | 2018-01-11T15:47:08+00:00 |  | 000116454-01 | LARRY | GRAVES | AMERICAN HLTH NETWORK OF | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111087 | I10, I442, J439, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 01122018 | 01102018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T12:51:30+00:00 |  | 000067226-01 | PATRICK | RADER | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01052018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108102 | I4891, R609 | Edema, unspecified | ICD10 | 01122018 | 01052018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01082018 | 2018-01-08T16:54:18+00:00 |  | 000029799-01 | ROBERT | LIVINGSTON | MOUNT CARMEL HLTH PRVDRS | 905425 | SVITLANA | HAYNES | 1457307837 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01072018 | 01112018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109065 | E871, J189 | Pneumonia, unspecified organism | ICD10 | 01122018 | 01072018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01102018 | 2018-01-10T16:22:30+00:00 |  | 000070564-01 | Nancy | Osborn | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111010 | I639 | Cerebral infarction, unspecified | ICD10 | 01122018 | 01092018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12262017 | 2017-12-26T13:30:05+00:00 |  | 000027535-01 | JIM | GAVORCIK | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12232017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226161 | F39 | Unspecified mood [affective] disorder | ICD10 | 01122018 | 12232017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 12262017 | 2017-12-26T14:27:07+00:00 |  | 000112377-01 | Kathleen | Palm | CARDIOLOGY SOUTH INC | 902234 | AJAY | REDDIVARI | 1063494086 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12242017 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226185 | I2109 | STEMI involving oth coronary artery of anterior wall | ICD10 | 01122018 | 12242017 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 11162017 | 2017-11-16T08:59:47+00:00 |  | 000114663-01 | Howard | Bradburn | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01122018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01102018 | 01112018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116073 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01122018 | 01102018 | 01112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12222017 | 2017-12-22T09:53:34+00:00 |  | 000097728-01 | David | Fox | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222037 | M4316, M48062 | M48062 | ICD10 | 01122018 | 01052018 | 01112018 | 22612, 22614, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 7, 7, 7, 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 01042018 | 2018-01-04T15:29:50+00:00 |  | 000066471-01 | Carolyn | Cantrell | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104112 | K5660 | Unspecified intestinal obstruction | ICD10 | 01122018 | 01032018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01052018 | 2018-01-05T10:24:43+00:00 |  | 000067295-01 | JAMES | WILSON | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01042018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105031 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01122018 | 01042018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T14:21:40+00:00 |  | 000016362-01 | MAURICE | SCOTT | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01042018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105066 | M6282 | Rhabdomyolysis | ICD10 | 01122018 | 01042018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01042018 | 2018-01-04T11:32:21+00:00 |  | 000099792-01 | KENNETH | JACKSON | HOSPITAL MEDICINE SERVIC | 949699 | IMRAN T | MINHAS | 1942288402 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104066 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01122018 | 01032018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 12212017 | 2017-12-21T14:43:03+00:00 |  | 000102198-01 | Thomas | Vaughan | FAIRFIELD HLTHCARE PROFS | 905153 | P ARYEH | COHEN | 1306063656 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12222017 | 12242017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171221067 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 01122018 | 12222017 | 12242017 | 20680 | REMOVAL OF IMPLANT; DEEP(EG, BURIED WIRE, PIN, SCREW, ROD, PLATE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  | No child records to display. |  |
| 12282017 | 2017-12-28T16:18:26+00:00 |  | 000042530-01 | RONALD | SINES | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12292017 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229003 | R5381 | Other malaise | ICD10 | 01122018 | 12292017 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T13:15:03+00:00 |  | 000032880-01 | JOAN | CURTIS | EMERALD COAST HSPIST INC | 929363 | COREY A | AMMAN | 1336374529 | MORTON PLANT HOSPITAL | 934673 | 1376529743 | MORTON PLANT HOSPITAL | 1376529743 | Inpatient | IP | Concurrent Review | CONC |  | MORTON PLANT HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01072018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108130 | E8352, R531 | Weakness | ICD10 | 01122018 | 01072018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T11:06:34+00:00 |  | 000072381-01 | Sharon | Bates | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01072018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108076 | K625, R109 | Unspecified abdominal pain | ICD10 | 01122018 | 01072018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01082018 | 2018-01-08T10:44:31+00:00 |  | 000070802-01 | Jane | Langdon | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01062018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108073 | A419, I959, L03119, R531, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 01122018 | 01062018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11092017 | 2017-11-09T11:22:02+00:00 |  | 000093513-01 | Susan | Lehman | LICKING MEM HLTH PROF | 949014 | ANDREW J | TERLECKY | 1467729442 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109071 | M179, M25561 | Pain in right knee | ICD10 | 01122018 | 01022018 | 01112018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 10 | CPT | C4 |  |  |  | 6.0 |
| 01042018 | 2018-01-04T15:14:27+00:00 |  | 000026581-01 | DALE | HAMMOND | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105004 | G9341, R001 | Bradycardia, unspecified | ICD10 | 01122018 | 01032018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01082018 | 2018-01-08T13:12:05+00:00 |  | 000077524-01 | Richard | Schutte | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01122018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01072018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108128 | I214, J810, J9601, N179, N189 | Chronic kidney disease, unspecified | ICD10 | 01122018 | 01072018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01092018 | 2018-01-09T17:43:16+00:00 |  | 000033181-01 | DIANA | BOBO | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 01042018 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110010 | S06360A | Traum hemor cereb, w/o loss of consciousness, init | ICD10 | 01122018 | 01042018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01092018 | 2018-01-09T15:22:46+00:00 |  | 000084222-01 | Charles | Ellis | CEN OH UROLOGY GRP INC | 941719 | JOHN K | BURGERS | 1982622353 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01122018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01102018 | 01112018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109140 | C61 | Malignant neoplasm of prostate | ICD10 | 01122018 | 01102018 | 01112018 | 55821 | SUPRAPUBIC PROSTATCTMY 1 OR 2 STGS | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01052018 | 2018-01-05T09:11:30+00:00 |  | 000113165-01 | Lawrence | Jackson | S DAYTON ACUTE CARE CNSL | 941387 | MADHUSUDHAN | TARIGOPULA | 1235340621 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 01122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12302017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105027 | K5792, N179 | Acute kidney failure, unspecified | ICD10 | 01122018 | 12302017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01102018 | 2018-01-10T12:08:58+00:00 |  | 000042333-01 | MARY | PLACE | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110057 | I471 | Supraventricular tachycardia | ICD10 | 01122018 | 01092018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01052018 | 2018-01-05T10:26:56+00:00 |  | 000052357-01 | JOHN | SHOOK | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105035 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01122018 | 01022018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T11:16:11+00:00 |  | 000042021-01 | ROBERT | YOAKAM SR | LICKING MEM INPATIENT ME | 905119 | NAWAR | SAIEG | 1750400867 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108088 | D649, E8342 | Hypomagnesemia | ICD10 | 01122018 | 01052018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12222017 | 2017-12-22T09:37:14+00:00 |  | 000080748-01 | Troy | Wilson | OSU INTERNAL MED LLC | 947011 | NINA M | GEORGE | 1700170917 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01122018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12212017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222032 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 01122018 | 12212017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12282017 | 2017-12-28T09:15:06+00:00 |  | 000089771-01 | Timothy | Moore | NEUROSCIENCE CENTER | 945250 | DEEPAK K | GULATI | 1669797890 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01122018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 12272017 | 12302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228020 | I639, I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 01122018 | 12272017 | 12302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12292017 | 2017-12-29T08:47:17+00:00 |  | 000000934-01 | NORMA | REED | THE OH STATE UNIVERSITY | 910572 | JAMES F | LAMB | 1821053448 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229038 | M2550 | Pain in unspecified joint | ICD10 | 01122018 | 12282017 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12292017 | 2017-12-29T11:38:09+00:00 |  | 000049497-01 | JOHN | GROOME | OSU INTERNAL MED LLC | 940873 | DANIEL R | DIAZ | 1851681332 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12292017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229057 | R509 | Fever, unspecified | ICD10 | 01122018 | 12292017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01022018 | 2018-01-02T07:17:33+00:00 |  | 000117926-01 | Lily | Smith | OSU EMERGENCY MED LLC | 907640 | LEO | BOGGS | 0 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12302017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102054 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 01122018 | 12302017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01022018 | 2018-01-02T09:14:17+00:00 |  | 000023960-01 | JOHANNES | FABER | HOSPITALIST MEDICINE PHY | 924167 | JONG H | LEE | 1093961120 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12312017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102077 | S73004A | Unspecified dislocation of right hip, initial encounter | ICD10 | 01122018 | 12312017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01042018 | 2018-01-04T09:48:12+00:00 |  | 000063862-01 | JACOB | MCNEELY JR | NEUROSCIENCE CENTER | 947205 | VIVIEN H | LEE | 1538146907 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01012018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104032 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 01122018 | 01012018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01082018 | 2018-01-08T16:00:07+00:00 |  | 000088071-01 | Mark | Dougherty | ADENA MEDICAL GROUP LLC | 941935 | ROBERT K | MONTAZEMI | 1184692238 | BARNESVILLE HOSPITAL | 904409 | 1235135450 | BARNESVILLE HOSPITAL | 1235135450 | Inpatient | IP | Concurrent Review | CONC |  | BARNESVILLE HOSPITAL | 01122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109003 | J189 | Pneumonia, unspecified organism | ICD10 | 01122018 | 01082018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01082018 | 2018-01-08T11:14:58+00:00 |  | 000034064-01 | ROY | STEVENS | CENTRAL OH HSPISTS INC | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01062018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108087 | S72011A | Unsp intracapsular fracture of right femur, init for clos fx | ICD10 | 01122018 | 01062018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01052018 | 2018-01-05T13:20:28+00:00 |  | 000111678-01 | Sandra | Brown | S DAYTON ACUTE CARE CNSL | 947057 | ELLEN S | KIM | 1912249400 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01042018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105058 | J159, J189 | Pneumonia, unspecified organism | ICD10 | 01122018 | 01042018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01022018 | 2018-01-02T18:03:49+00:00 |  | 000052365-01 | NOVA | SMITH | PULMONARY MED OF DAYTON | 951877 | JAMES B | GLEASON | 1982995395 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 01122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01012018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103055 | J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 01122018 | 01012018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
