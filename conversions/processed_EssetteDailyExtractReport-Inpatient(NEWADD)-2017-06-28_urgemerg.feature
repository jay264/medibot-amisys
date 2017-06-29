Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-28_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-28_URGEMERG
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
| 05222017 | 2017-05-22T13:35:44+00:00 |  | 000083958-01 | Garry | Mccann | APOGEE MEDICAL GRP PAYSO | 934483 | FELIX | OFORI-GYEBI | 1366675480 | WESTERN ARIZONA REGIONAL MEDICAL CTR | 931098 | 1255302766 | WESTERN ARIZONA REGIONAL MEDICAL CTR | 1255302766 | Inpatient | IP | Concurrent Review | CONC |  | WESTERN ARIZONA REGIONAL MEDICAL CTR | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05202017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522096 | I350, I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 06282017 | 05202017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06202017 | 2017-06-20T15:03:08+00:00 |  | 000102909-01 | Penny | Riley | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06282017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06182017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620106 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 06282017 | 06182017 | 06252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06222017 | 2017-06-22T09:42:11+00:00 | 250093367172 | 000002894-01 | KAREN | BEHM | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06212017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622010 | I959, K559 | Vascular disorder of intestine, unspecified | ICD10 | 06282017 | 06212017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06262017 | 2017-06-26T10:20:35+00:00 | 259083877176 | 000010172-01 | GEORGE | STRODE | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06252017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626017 | A419 | Sepsis, unspecified organism | ICD10 | 06282017 | 06252017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06212017 | 2017-06-21T13:19:53+00:00 |  | 000058702-01 | HORST | SCHMIDT | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621062 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 06282017 | 06272017 | 06282017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06222017 | 2017-06-22T06:50:09+00:00 |  | 000117730-01 | Arthur | Valentine | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06212017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622032 | I472 | Ventricular tachycardia | ICD10 | 06282017 | 06212017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06132017 | 2017-06-13T09:39:57+00:00 | 254060687163 | 000114881-01 | Walter | Hurst | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06122017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613019 | A419, L0390 | Cellulitis, unspecified | ICD10 | 06282017 | 06122017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 06262017 | 2017-06-26T10:33:26+00:00 | 256728497174 | 000026597-01 | JAMES | DEFAZIO | HMP OF OHIO PC | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06232017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626029 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 06282017 | 06232017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06202017 | 2017-06-20T09:13:56+00:00 |  | 000086996-01 | John | Chapman | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620070 | E860, K5660 | Unspecified intestinal obstruction | ICD10 | 06282017 | 06192017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06272017 | 2017-06-27T11:46:56+00:00 |  | 000009442-01 | JAMES | GATES | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | TRINITY HEALTH | Reports | EIS | Inpatient | 06262017 | 06272017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627054 | M4802 | Spinal stenosis, cervical region | ICD10 | 06282017 | 06262017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06192017 | 2017-06-19T11:23:53+00:00 | 251106707168 | 000043637-01 | WENDLE | SMITH | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06172017 | 06222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619063 | J159, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06282017 | 06172017 | 06222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06262017 | 2017-06-26T10:45:07+00:00 | 250451847176 | 000068817-01 | ROGER | GREENAWALD | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06252017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626041 | K831, K859 | Acute pancreatitis, unspecified | ICD10 | 06282017 | 06252017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06222017 | 2017-06-22T08:24:51+00:00 |  | 000071379-01 | Carol | Carey | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622023 | I2692 | Saddle embolus of pulmonary artery w/o acute cor pulmonale | ICD10 | 06282017 | 06212017 | 06242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06212017 | 2017-06-21T10:24:34+00:00 |  | 000048497-01 | DOLORES | STUMBO | HMP OF OHIO PC | 931483 | MOHAMMAD Y | SALEH | 1760794903 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06282017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 06202017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621042 | L03818 | Cellulitis of other sites | ICD10 | 06282017 | 06202017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06272017 | 2017-06-27T12:36:56+00:00 |  | 000077017-01 | Carolyn | Logsdon | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL REHAB | 923738 | 1912258898 | LICKING MEMORIAL HOSPITAL REHAB | 1912258898 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL REHAB | 06282017 | Denied | MediGold Essential Care | Fax | Not Medically Necessary | Inpatient | 06282017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170627068 | I639, I69351 | Hemiplga following cerebral infrc aff right dominant side | ICD10 | 06282017 | 06282017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06232017 | 2017-06-23T09:18:42+00:00 | 251566597173 | 000115914-01 | Patty | Davis | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06222017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623004 | L89890 | Pressure ulcer of other site, unstageable | ICD10 | 06282017 | 06222017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05172017 | 2017-05-17T11:06:54+00:00 |  | 000051265-01 | ELKE | LESTER | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517073 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06282017 | 06272017 | 06282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06192017 | 2017-06-19T15:27:45+00:00 |  | 000002335-01 | ERNEST | FEARING | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619124 | E871, I509, N189, R339 | Retention of urine, unspecified | ICD10 | 06282017 | 06162017 | 06252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06162017 | 2017-06-16T09:32:58+00:00 | 178125247166 | 000079887-01 | Earl | Parrish | HMP OF OHIO PC | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06152017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616016 | K8590 | ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION, UNSP | ICD10 | 06282017 | 06152017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06152017 | 2017-06-15T09:26:41+00:00 |  | 000088808-01 | Carol | Giauque | NEPHROLOGY CNSLT SE OH | 922144 | JEFFREY L | AUSTEN | 1669483566 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06282017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615031 | N186 | End stage renal disease | ICD10 | 06282017 | 06142017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T11:21:58+00:00 |  | 000068626-01 | LARRY | BLANTON | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 06272017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613043 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 06282017 | 06212017 | 06272017 | 50545 | LAPARO RADICAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 06212017 | 2017-06-21T14:00:02+00:00 | 175321207172 | 000108228-01 | Robert | Hayes | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06212017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621046 | Z950 | Presence of cardiac pacemaker | ICD10 | 06282017 | 06212017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06062017 | 2017-06-06T14:37:38+00:00 |  | 000010994-01 | CAROLYN | BAILEY | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606073 | G9619 | Other disorders of meninges, not elsewhere classified | ICD10 | 06282017 | 06072017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 06272017 | 2017-06-27T09:48:50+00:00 |  | 000067305-01 | JAMES | COOPER | S DAYTON ACUTE CARE CNSL | 927463 | PRIYANKA | EDARA | 1932413630 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 06282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06262017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627064 | M4852XA | Collapsed vertebra, NEC, cervical region, init | ICD10 | 06282017 | 06262017 | 06262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06262017 | 2017-06-26T10:20:32+00:00 | 250151087176 | 000030445-01 | THOMAS | BURNS JR | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06252017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626018 | C3490, I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 06282017 | 06252017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06092017 | 2017-06-09T08:05:52+00:00 |  | 000093979-01 | Joseph | Griesenbrock | WACCAMAW COMMUNITY HSP | 902642 |  | WACCAMAW COMMUNITY HOSPITAL 1500 | 1972503910 | WACCAMAW COMMUNITY HSP | 905475 | 1972503910 | WACCAMAW COMMUNITY HOSPITAL | 1972503910 | Inpatient | IP | Concurrent Review | CONC |  | WACCAMAW COMMUNITY HOSPITAL | 06282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06082017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609034 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 06282017 | 06082017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042017 | 2017-05-04T14:58:24+00:00 |  | 000003390-01 | CECILIA | GUZZO | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505002 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06282017 | 06262017 | 06282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06232017 | 2017-06-23T08:33:53+00:00 |  | 000086307-01 | Florene | Love | SOUND INPATIENT PHYS OF | 930101 | MICHAEL J | CROTTY | 1215199559 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 06282017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06222017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623026 | I509 | Heart failure, unspecified | ICD10 | 06282017 | 06222017 | 06242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T08:59:27+00:00 |  | 000087724-01 | Edgar | Eldridge | STEVEN R LUNZ MD INC | 921394 | STEVEN R | LUNZ | 1710981089 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06282017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612098 | J810, N3000, R4182 | Altered mental status, unspecified | ICD10 | 06282017 | 06092017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06222017 | 2017-06-22T11:26:18+00:00 |  | 000066670-01 | PAUL | WAUGH | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06212017 | 06232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622044 | A419, L0390 | Cellulitis, unspecified | ICD10 | 06282017 | 06212017 | 06232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T11:16:38+00:00 | 253013787175 | 000062150-01 | MARY | SCHMIDT | EMERGENCY SERVICES INC | 939532 | MARC R | HERDMAN | 1891773453 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06242017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626053 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 06282017 | 06242017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06282017 | 2017-06-28T08:58:03+00:00 |  | 000081577-01 | Jerzy | Grelik | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628003 | R911 | Solitary pulmonary nodule | ICD10 | 06282017 | 06262017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T12:13:51+00:00 |  | 000028621-01 | BETTY | BLANKENSHIP | NORTH CENTRAL OHIO HEALT | 905685 | RASHID | PERVEZ | 1528144177 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619127 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 06282017 | 06162017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06262017 | 2017-06-26T10:44:29+00:00 | 251399977175 | 000028952-01 | REBECCA | BANNER | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06242017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626039 | R109 | Unspecified abdominal pain | ICD10 | 06282017 | 06242017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06282017 | 2017-06-28T10:15:02+00:00 | 251608327178 | 000012982-01 | KEITH | DEMENT | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06272017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628021 | T829XXA | Unsp comp of cardiac and vascular prosth dev/grft, init | ICD10 | 06282017 | 06272017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06232017 | 2017-06-23T10:23:46+00:00 | 262612817173 | 000091271-01 | Stephen | Means | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06222017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623024 | C61 | Malignant neoplasm of prostate | ICD10 | 06282017 | 06222017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06132017 | 2017-06-13T05:50:38+00:00 |  | 000050253-01 | JOHN | TURNER | INTERNAL MED CARE INC | 932963 | KEVIN | VOLT | 1124319629 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06282017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 06122017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613016 | A419 | Sepsis, unspecified organism | ICD10 | 06282017 | 06122017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06192017 | 2017-06-19T08:45:49+00:00 |  | 000015587-01 | HELEN | DEAL | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06182017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619009 | M549, R531 | Weakness | ICD10 | 06282017 | 06182017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06282017 | 2017-06-28T09:35:13+00:00 | 026444317-7150 | 000113086-01 | MICHAEL | LUNSFORD | COPC CENTRAL OHIO PRIMAR | 905988 | RANDOLPH O | SCHULTZ | 1215991518 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 06262017 | 06272017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628010 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 06282017 | 06262017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06232017 | 2017-06-23T10:00:38+00:00 | 250125007173 | 000039059-01 | JAMES | BURKHART | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06222017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623017 | I472 | Ventricular tachycardia | ICD10 | 06282017 | 06222017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06162017 | 2017-06-16T08:59:05+00:00 |  | 000032479-01 | JOSEPH | PAGLEY | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616018 | Z96611 | Presence of right artificial shoulder joint | ICD10 | 06282017 | 06262017 | 06272017 | 23474, 23335 | SHOULDER PROSTHESIS REMOVAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06282017 | 2017-06-28T10:13:34+00:00 | 025698484-7153 | 000033023-01 | James | Russell Jr | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 06262017 | 06272017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628022 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 06282017 | 06262017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06082017 | 2017-06-08T09:59:24+00:00 |  | 000024830-01 | MARGARET | GRUBAUGH | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06162017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608035 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 06282017 | 06162017 | 06272017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 12 | CPT | C4 |  |  |  | 11.0 |
| 06262017 | 2017-06-26T09:22:34+00:00 |  | 000053909-01 | RICHARD | TURNER | ELECTROPHYSIOLOGY | 908450 | STEVEN J | KALBFLEISCH | 1326043779 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06252017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626112 | I471, I472 | Ventricular tachycardia | ICD10 | 06282017 | 06252017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06262017 | 2017-06-26T10:48:18+00:00 | 250551647176 | 000019031-01 | FRANCES | HARLEY | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06252017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626043 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 06282017 | 06252017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06092017 | 2017-06-09T09:36:57+00:00 |  | 000115013-01 | Roger | Spangler | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06282017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06152017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609044 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 06282017 | 06152017 | 06162017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06192017 | 2017-06-19T09:43:36+00:00 |  | 000037212-01 | ERIC | WHITE | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06162017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619028 | M25519, M542 | Cervicalgia | ICD10 | 06282017 | 06162017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 05222017 | 2017-05-22T11:06:33+00:00 | 259111877142 | 000078807-01 | Darrell | Morrison | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522086 | M24551, M24552 | Contracture, left hip | ICD10 | 06282017 | 06262017 | 06282017 | 27005 | TNOTMY ILIOPSOAS, OPEN | CPT | 2 | 2 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06082017 | 2017-06-08T15:11:23+00:00 |  | 000105369-01 | Harold | Farris | OHIO VEIN & VASCULAR INC | 932474 | BRIAN J | SANTIN | 1083803951 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 06282017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06262017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608073 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 06282017 | 06262017 | 06272017 | 34802, 36200, 75952, 76937 | US GUIDE, VASCULAR ACCESS | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06192017 | 2017-06-19T09:09:53+00:00 |  | 000081431-01 | Carolyn | Howell | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06282017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06172017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619014 | R0602 | Shortness of breath | ICD10 | 06282017 | 06172017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
