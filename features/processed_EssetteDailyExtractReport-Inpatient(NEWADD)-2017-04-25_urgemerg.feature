Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-25_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-04-25_URGEMERG
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
| 03302017 | 2017-03-30T08:56:21+00:00 |  | 000079919-01 | William | Day | JOSEPH C YU MD INC | 921540 | DALE P | YU | 1174506646 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04252017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03292017 | 04062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080874.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170331060 | J189 | Pneumonia, unspecified organism | ICD10 | 05032017 | 03292017 | 04062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04032017 | 2017-04-03T10:07:39+00:00 | 252609327091 | 000058285-01 | JUDITH | COFFIELD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04012017 | 04242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080877.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170403004 | J159 | Unspecified bacterial pneumonia | ICD10 | 05032017 | 04012017 | 04242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 23.0 |
| 04062017 | 2017-04-06T14:32:30+00:00 |  | 000074349-01 | Lynn | Steele | MARIETTA HLTH CARE PHYS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172017 | 04242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080879.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170406070 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05032017 | 04172017 | 04242017 | 31622, 32505, 32480 | TOTAL-SUBTOTAL LOBECTOMY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 8, 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 04102017 | 2017-04-10T09:54:36+00:00 |  | 000096555-01 | Edward | Funk | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 04252017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04072017 | 04132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080881.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170411080 | M6281 | Muscle weakness (generalized) | ICD10 | 05032017 | 04072017 | 04132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04142017 | 2017-04-14T12:32:21+00:00 |  | 000032341-01 | JANE | SNOOK | OHIO PLASTIC SURGERY SPE | 935510 | WALTER L | BERNACKI | 1871664714 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 04132017 | 04142017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080883.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414045 | S21101A | Unsp opn wnd r frnt wl of thorax w/o penet thor cavity, init | ICD10 | 05032017 | 04132017 | 04142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172017 | 2017-04-17T10:36:34+00:00 |  | 000066245-01 | JAMES | BARANEK SR | WRIGHT STATE PHYSICIANS | 943833 | GREGORY R | SEMON | 1134366149 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04142017 | 04232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080886.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417093 | K5669 | Other intestinal obstruction | ICD10 | 05032017 | 04142017 | 04232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04182017 | 2017-04-18T15:22:54+00:00 |  | 000021233-01 | DOROTHY | MINOR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04132017 | 04242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080892.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418091 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 05032017 | 04132017 | 04242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04192017 | 2017-04-19T11:54:32+00:00 |  | 000099266-01 | Charles | Casey | WHEELING HOSPITAL | 936873 |  | WHEELING HOSPITAL | 1104821305 | WHEELING HOSPITAL | 936873 | 1104821305 | WHEELING HOSPITAL | 1104821305 | Inpatient | IP | Concurrent Review | CONC |  | WHEELING HOSPITAL | 04252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04192017 | 04212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080897.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420025 | I2109 | STEMI involving oth coronary artery of anterior wall | ICD10 | 05032017 | 04192017 | 04212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202017 | 2017-04-20T11:49:20+00:00 |  | 000001219-01 | JANE | KINNEAR | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04192017 | 04232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080898.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420042 | I214, I2510, N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 05032017 | 04192017 | 04232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04202017 | 2017-04-20T14:27:47+00:00 |  | 000023102-01 | GEORGIA | DAVENPORT | DR. BHAVESH PRAVIN PATEL | 910322 | BHAVESH P | PATEL | 1669632469 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04252017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 04192017 | 04242017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080901.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420077 | R0602 | Shortness of breath | ICD10 | 05032017 | 04202017 | 04242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04212017 | 2017-04-21T09:26:19+00:00 |  | 000000163-01 | THOMAS | BOWYER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 04202017 | 04242017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080902.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421003 | J159 | Unspecified bacterial pneumonia | ICD10 | 05032017 | 04202017 | 04242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04212017 | 2017-04-21T13:50:59+00:00 |  | 000027036-01 | NANCY | BUONI | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04142017 | 04242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080904.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170421043 | I7103 | Dissection of thoracoabdominal aorta | ICD10 | 05032017 | 04142017 | 04242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04242017 | 2017-04-24T09:25:08+00:00 |  | 000002233-01 | THOMAS | HINTON | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04212017 | 04242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080905.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424004 | R0602 | Shortness of breath | ICD10 | 05032017 | 04212017 | 04242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04242017 | 2017-04-24T14:33:43+00:00 |  | 000096301-01 | Dennis | Fyffe | CLEVELAND CLINIC FNDN | 936488 |  | CLEVELAND CLINIC FNDN | 1679525919 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 04252017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 04202017 | 04212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080906.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424108 | K5792, Z941 | Heart transplant status | ICD10 | 05032017 | 04202017 | 04212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
