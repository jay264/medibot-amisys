Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-01_thru_2017-09-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-01_thru_2017-09-04_URGEMERG
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
| 08152017 | 2017-08-15T11:50:03+00:00 |  | 000062509-01 | FRANK | TANZILLO | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08302017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815043 | C4022 | Malignant neoplasm of long bones of left lower limb | ICD10 | 09012017 | 08302017 | 08312017 | 27506 | FX FEMUR-SHAFT-OPEN REDUCTION | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09012017 | 2017-09-01T13:46:15+00:00 |  | 000076959-01 | Jack | Townsley | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY WEST HOSPITAL | 09012017 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170901050 | G92, J9601, N189, N390 | Urinary tract infection, site not specified | ICD10 | 09012017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08292017 | 2017-08-29T09:45:25+00:00 |  | 000050396-01 | MARILYN | MILLS | OHIOHEALTH PHYS GRP | 905892 | ANTHONY T | CHAPEKIS | 1558366906 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829029 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 09012017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T13:34:33+00:00 |  | 000083957-01 | Jerry | Thompson | MIDWEST HOSPITALISTS INC | 929666 | GALINA | KRAYTERMAN | 1235253378 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 09012017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08202017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823028 | R4182 | Altered mental status, unspecified | ICD10 | 09012017 | 08202017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08032017 | 2017-08-03T08:09:36+00:00 |  | 000079210-01 | Barbara | Kuhns | MED ASSOCS OF CAMBRIDGE | 922026 | MARK | GOGGIN | 1518962612 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 09012017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803031 | N390 | Urinary tract infection, site not specified | ICD10 | 09012017 | 08022017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09012017 | 2017-09-01T16:10:05+00:00 |  | 000081308-01 | Kathy | Shaw | OHIO PLASTIC SURGERY SPE | 935510 | WALTER L | BERNACKI | 1871664714 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Southeast OH Classic Preferred | EMR | EIS | Inpatient | 08312017 | 09012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901066 | L987 | EXCESSIVE AND REDUNDANT SKIN AND SUBCUTANEOUS TISSUE | ICD10 | 09012017 | 08312017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08252017 | 2017-08-25T11:12:03+00:00 |  | 000033586-01 | RICHARD | STAHR | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825079 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 09012017 | 08302017 | 09012017 | 33363 | REPLACE AORTIC VALVE OPEN | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08302017 | 2017-08-30T10:26:52+00:00 |  | 000048780-01 | A | MILLER | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08312017 | 09012017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830038 | M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 09012017 | 08312017 | 09012017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08202017 | 2017-08-20T10:16:18+00:00 |  | 000052241-01 | WILLIAM | GINNERY JR | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08192017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820016 | K5900 | Constipation, unspecified | ICD10 | 09012017 | 08192017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08222017 | 2017-08-22T10:54:23+00:00 |  | 000080221-01 | Carol | Frerick | TRIHEALTH H LLC | 931916 | JASON M | PARKER | 1396983268 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 09012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822092 | R4701 | Aphasia | ICD10 | 09012017 | 08212017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08082017 | 2017-08-08T11:36:47+00:00 |  | 000029216-01 | LORRAINE | STEPHENS | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08072017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808099 | F319 | Bipolar disorder, unspecified | ICD10 | 09012017 | 08072017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 08212017 | 2017-08-21T09:03:03+00:00 |  | 000049380-01 | GARY | MCNEELY | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 08192017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821005 | R4182 | Altered mental status, unspecified | ICD10 | 09042017 | 08192017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 08172017 | 2017-08-17T16:44:00+00:00 |  | 000012974-01 | MARY | GALENTINE | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 08172017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817059 | R4182 | Altered mental status, unspecified | ICD10 | 09042017 | 08172017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 08302017 | 2017-08-30T11:46:25+00:00 |  | 000030240-01 | SHERRILL | CASTLE | THE CHRIST HOSPITAL EDUC | 944446 | LOREN | MILLIGAN | 1467728956 | BETHESDA MEMORIAL HOSPITAL INC | 916807 | 1417952748 | BETHESDA MEMORIAL HOSPITAL INC | 1417952748 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA MEMORIAL HOSPITAL INC | 09012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830064 | I639 | Cerebral infarction, unspecified | ICD10 | 09012017 | 08282017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08172017 | 2017-08-17T03:36:40+00:00 |  | 000051552-01 | THOMAS | MADDEN | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817021 | F333 | Major depressv disorder, recurrent, severe w psych symptoms | ICD10 | 09012017 | 08172017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 08292017 | 2017-08-29T09:46:36+00:00 | 254226137240 | 000000008-01 | HELEN | GENOOZIS | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829014 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 09012017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08292017 | 2017-08-29T10:35:44+00:00 |  | 000115753-01 | Odette | Snyder | FAIRFIELD HLTHCARE PROFS | 918203 | AVNEET S | HIRA | 1750570669 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09012017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829079 | F411 | Generalized anxiety disorder | ICD10 | 09012017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06292017 | 2017-06-29T14:10:42+00:00 | 025113841-7180 | 000093504-01 | Nancy | Tabor | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629067 | T84010A | Broken internal right hip prosthesis, initial encounter | ICD10 | 09012017 | 08292017 | 08312017 | 27137 | REVSN TOT HIP ARTHPLSTY ACTBLR COMP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08302017 | 2017-08-30T09:27:21+00:00 | 250535537241 | 000021709-01 | HELEN | HERBERT | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830014 | D649, S22009A, S2241XA | Multiple fractures of ribs, right side, init for clos fx | ICD10 | 09012017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T15:17:11+00:00 |  | 000099738-01 | Helen | Sonneborn | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08242017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826015 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 09012017 | 08242017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08282017 | 2017-08-28T14:28:43+00:00 |  | 000073143-01 | Geraldine | Forrest | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829046 | I509 | Heart failure, unspecified | ICD10 | 09012017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08222017 | 2017-08-22T14:08:09+00:00 |  | 000106047-01 | Lyda | Burd | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08242017 | 08282017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822091 | K4030 | Unil inguinal hernia, w obst, w/o gangr, not spcf as recur | ICD10 | 09012017 | 08242017 | 08282017 | 49507 | REPAIR INITIAL INGUINAL HERNIA, AGE 5 YEARS OR OVER; | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 06012017 | 2017-06-01T11:08:55+00:00 |  | 000065875-01 | JOHN | TRIMBLE | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 912043 | 1043233984 | KETTERING MEDICAL CTR REHABILITATION | 1952324899 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | KETTERING MEDICAL CTR REHABILITATION | 09012017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 06022017 | 06262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170601041 | I639 | Cerebral infarction, unspecified | ICD10 | 09012017 | 06022017 | 06252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08282017 | 2017-08-28T08:31:51+00:00 |  | 000087436-01 | Bonieta | Jarrell | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08252017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828046 | L089, M7989, N3000, R0600, R233 | Spontaneous ecchymoses | ICD10 | 09012017 | 08252017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07112017 | 2017-07-11T13:04:09+00:00 | 025660080-7191 | 000017478-01 | JOAN | SAVOIA | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170711059 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09012017 | 08282017 | 08312017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 07192017 | 2017-07-19T16:19:18+00:00 |  | 000076192-01 | Don | Skillman | AMITA R PATEL MD INC | 902651 | AMARJEET S | BIRDI | 1023046190 | HAVEN BEHAVIORAL SRVS OF | 927026 | 1831460229 | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 1831460229 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 09012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07182017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720004 | F3113 | Bipolar disord, crnt epsd manic w/o psych features, severe | ICD10 | 09012017 | 07182017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 44.0 |
| 09012017 | 2017-09-01T09:37:50+00:00 |  | 000106853-01 | Michael | Maxwell | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08312017 | 09012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901016 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 09042017 | 08312017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08302017 | 2017-08-30T07:27:27+00:00 | 017938152-7242 | 000086079-01 | Jane | Oakleaf | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08312017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830004 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09012017 | 08312017 | 09012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08252017 | 2017-08-25T15:28:32+00:00 |  | 000077869-01 | Anna | Todd | TRIHEALTH H LLC | 932552 | MICHAEL C | LAUGLE | 1174893655 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 09012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08242017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826016 | G9340 | Encephalopathy, unspecified | ICD10 | 09012017 | 08242017 | 08262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T09:43:22+00:00 | 255955597239 | 000072434-01 | LaDonna | Strait | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08272017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828027 | I639 | Cerebral infarction, unspecified | ICD10 | 09012017 | 08272017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08232017 | 2017-08-23T12:54:07+00:00 | 258450067234 | 000021465-01 | MARIE | CRANFORD | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08232017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823024 | I509 | Heart failure, unspecified | ICD10 | 09012017 | 08232017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08242017 | 2017-08-24T14:33:57+00:00 |  | 000030143-01 | LARRY | BISHOP | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824088 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 09042017 | 08282017 | 09012017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 08302017 | 2017-08-30T09:34:18+00:00 | 250666547241 | 000096455-01 | William | Lucas | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08292017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830015 | I639 | Cerebral infarction, unspecified | ICD10 | 09012017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07202017 | 2017-07-20T09:47:35+00:00 | 025067931-7202 | 000076651-01 | Sharon | Litton | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08292017 | 09032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720031 | M4806 | Spinal stenosis, lumbar region | ICD10 | 09042017 | 08292017 | 09032017 | 22612, 20937, 22840, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 6, 6, 6, 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 08282017 | 2017-08-28T10:20:03+00:00 | 264598627239 | 000046124-01 | BETTY | EDMUNDS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08272017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828042 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 09012017 | 08272017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09012017 | 2017-09-01T10:49:19+00:00 |  | 000044201-01 | FRANCES | HOVATTER | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Pre-Service | PRE |  | BERGER HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 09112017 | 10112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170901033 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 09012017 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
| 08142017 | 2017-08-14T12:22:11+00:00 | 265808327224 | 000118323-01 | Joseph | Klimonek | SOUND PHYSICIANS OF OHI0 | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09012017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08122017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814064 | E872 | Acidosis | ICD10 | 09012017 | 08122017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08082017 | 2017-08-08T09:00:16+00:00 |  | 000078714-01 | Katherine | Casterline | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Southeast OH Classic Preferred | Fax | EIS | Inpatient | 09012017 | 09032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808044 | J986 | Disorders of diaphragm | ICD10 | 09042017 | 09012017 | 09032017 | 39545, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 0, 0 | 1, 1 | ,  | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 08182017 | 2017-08-18T12:56:11+00:00 |  | 000100080-01 | Dennis | Neumann | APOGEE MED GRP OHIO INC | 947807 | AMBER L | RICHADSON | 1063850089 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08172017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821026 | J9600, J9610, R0902 | Hypoxemia | ICD10 | 09012017 | 08172017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 09012017 | 2017-09-01T09:34:50+00:00 |  | 000075749-01 | John | Schmitz | CEN OH UROLOGY GRP INC | 937316 | E BRADLEY | PEWITT | 1104873744 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08312017 | 09012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901014 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 09042017 | 08312017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09022017 | 2017-09-02T11:39:27+00:00 |  | 000040394-01 | ESTHER | COPE | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09012017 | 09032017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170904005 | J159 | Unspecified bacterial pneumonia | ICD10 | 09042017 | 09012017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08292017 | 2017-08-29T13:27:06+00:00 |  | 000095572-01 | James | Perry Sr | CLERMONT INTERNISTS ASSO | 921351 | PARAMESWARAN | HARIHARAN | 1720084460 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 09012017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08282017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829067 | D696, D709, I509, I959, J189, J90, N179, Z85118 | Personal history of malignant neoplasm of bronchus and lung | ICD10 | 09012017 | 08282017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08222017 | 2017-08-22T09:14:13+00:00 | 255087617233 | 000106016-01 | Michelle | Damon | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09042017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08212017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822016 | R0602 | Shortness of breath | ICD10 | 09042017 | 08212017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08312017 | 2017-08-31T13:51:25+00:00 | 017917797-7234 | 000096056-01 | William | Westfall | PREMIER UROLOGY CORP | 930560 | ADAM J | CLEMENS | 1477798049 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 08292017 | 08312017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831055 | N200 | Calculus of kidney | ICD10 | 09012017 | 08292017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08252017 | 2017-08-25T10:10:24+00:00 |  | 000046329-01 | DAVID | SWENSON | HOSP SVC MED GRP OF MARY | 931850 | ARIEL | BIGGS | 1316239916 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 09012017 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 08242017 | 08282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825046 | R748 | Abnormal levels of other serum enzymes | ICD10 | 09012017 | 08242017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08312017 | 2017-08-31T15:16:10+00:00 |  | 000037842-01 | PATRICIA | RUSS | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09012017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09012017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170831068 | I480, I639 | Cerebral infarction, unspecified | ICD10 | 09012017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08252017 | 2017-08-25T16:04:29+00:00 |  | 000098187-01 | John | Turner | PULMONARY MED OF DAYTON | 951877 | JAMES B | GLEASON | 1982995395 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09012017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08242017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170826017 | I471, R0602 | Shortness of breath | ICD10 | 09012017 | 08242017 | 08312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
