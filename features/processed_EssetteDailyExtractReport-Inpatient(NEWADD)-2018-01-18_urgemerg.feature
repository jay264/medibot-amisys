Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-18_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-18_URGEMERG
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
| 01092018 | 2018-01-09T13:12:45+00:00 |  | 000032559-01 | LARRY | MILACEK | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109109 | I739 | Peripheral vascular disease, unspecified | ICD10 | 01182018 | 01112018 | 01162018 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 12262017 | 2017-12-26T16:09:22+00:00 |  | 000046984-01 | GLENN | PLYBON | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227008 | I25810 | Atherosclerosis of CABG w/o angina pectoris | ICD10 | 01182018 | 12282017 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01092018 | 2018-01-09T06:27:15+00:00 |  | 000056122-01 | GEORGE | MESSINGER | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109035 | J440 | Chronic obstructive pulmon disease w acute lower resp infct | ICD10 | 01182018 | 01082018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01162018 | 2018-01-16T09:40:13+00:00 |  | 000086710-01 | Carl | Wilmot | LABONE OF OHIO INC | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | LABONE OF OHIO INC | 936446 | 1134165970 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01132018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116028 | T8130XA, T84012A | Broken internal right knee prosthesis, initial encounter | ICD10 | 01182018 | 01132018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01092018 | 2018-01-09T12:14:54+00:00 |  | 000048784-01 | ROY | WELCH | MOUNT CARMEL HLTH PRVDRS | 942145 | NATHANIEL A | AMOR | 1922235498 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01102018 | 01112018 | Expedited |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109087 | M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 01182018 | 01102018 | 01112018 | 22633, 22851, 22840, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01162018 | 2018-01-16T11:02:50+00:00 |  | 000012121-01 | GEORGE | BRAID | OHIOHEALTH PHYS GRP | 933619 | KIMBERLY M | MORTON | 1558656819 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116040 | I468, J989 | Respiratory disorder, unspecified | ICD10 | 01182018 | 01152018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01022018 | 2018-01-02T10:23:01+00:00 |  | 000102427-01 | Jackie | Prosser | METRO PSYCHIATRY INC | 911689 | MARK E | BLAIR | 1194755504 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12312017 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102078 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 01182018 | 12312017 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01032018 | 2018-01-03T09:36:53+00:00 |  | 000086139-01 | John | Randolph | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 01182018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103072 | J189 | Pneumonia, unspecified organism | ICD10 | 01182018 | 01032018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01122018 | 2018-01-12T13:58:43+00:00 |  | 000109099-01 | Carl | Pearson | ALLIANCE PHYSICIANS INC | 910918 | MICHAEL C | WELKER | 1942211305 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 01182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112080 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 01182018 | 01112018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01142018 | 2018-01-14T11:55:46+00:00 |  | 000094507-01 | Beverly | Johnson | HOSPITALIST MEDICINE PHY | 948369 | YASHASVINI | YASHASVINI | 1740613058 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01132018 | 01152018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115012 | J159, K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 01182018 | 01132018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01152018 | 2018-01-15T07:24:17+00:00 |  | 000073557-01 | Thomas | Holmes | MERCY HEALTH PHYSICIANS | 921387 | JOHN J | LEISGANG | 1407802754 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 01182018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115026 | R0902 | Hypoxemia | ICD10 | 01182018 | 01122018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T14:54:41+00:00 |  | 000111765-01 | Mark | Williams | ALLIANCE PHYSICIANS INC | 943272 | REBECCA M | TUTTLE | 1568674554 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01062018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109045 | K5660, R109 | Unspecified abdominal pain | ICD10 | 01182018 | 01062018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12262017 | 2017-12-26T13:05:12+00:00 |  | 000111765-01 | Mark | Williams | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12222017 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226154 | R109 | Unspecified abdominal pain | ICD10 | 01182018 | 12222017 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 01122018 | 2018-01-12T11:58:15+00:00 |  | 000016672-01 | KENNETH | DEVORE | OSU SURGERY LLC | 924711 | DAVID C | EVANS | 1851517031 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112046 | W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 01182018 | 01112018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01052018 | 2018-01-05T11:00:00+00:00 |  | 000093333-01 | Anna | Kreutz | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Phone | Inpatient | Inpatient | 01062018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105037 | C9510 | Chronic leukemia of unsp cell type not achieve remission | ICD10 | 01182018 | 01062018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01182018 | 2018-01-18T09:13:24+00:00 |  | 000072495-01 | Marilyn | Eppstein | CEN OH PRIMARY CARE SPEC | 925749 | RENEE M | SCHWADERER | 1750512778 | DUBLIN METHODIST HOSP | 905908 | 1801937008 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01142018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118032 | J111, J209, R0602 | Shortness of breath | ICD10 | 01182018 | 01142018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01152018 | 2018-01-15T11:50:42+00:00 |  | 000027817-01 | RITA | IACOBELLIS | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115099 | I509 | Heart failure, unspecified | ICD10 | 01182018 | 01122018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12292017 | 2017-12-29T11:38:57+00:00 |  | 000089533-01 | Joanne | Lester | HAQUE, MAX M | 904471 | MAX M | HAQUE | 1700884111 | HOCKING VALLEY COMMUNITY HOSPITAL | 945237 | 1033263835 | HOCKING VALLEY COMMUNITY HOSPITAL | 1033263835 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12272017 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229059 | F339 | Major depressive disorder, recurrent, unspecified | ICD10 | 01182018 | 12272017 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01112018 | 2018-01-11T10:35:38+00:00 |  | 000077181-01 | Vivian | Schroeder | OHIOHEALTH PHYS GRP | 918222 | BENJAMIN C | TAYLOR | 1659595866 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111044 | S52542A | Smith's fracture of left radius, init for clos fx | ICD10 | 01182018 | 01102018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01122018 | 2018-01-12T12:26:18+00:00 |  | 000095045-01 | Larry | Parrett | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112065 | A419, I4891, L03115, W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 01182018 | 01102018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12142017 | 2017-12-14T09:52:32+00:00 |  | 000062742-01 | Janice | Plymire | OAK HILL HOSPITAL | 934715 |  | OAK HILL HOSPITAL | 0 | OAK HILL HOSPITAL | 934715 | 0 | OAK HILL HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | OAK HILL HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12142017 | 12152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214027 | R079 | Chest pain, unspecified | ICD10 | 01182018 | 12142017 | 12152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01092018 | 2018-01-09T13:38:52+00:00 |  | 000075995-01 | Kenneth | Ruprecht | KNOX COMMUNITY HOSP GRP | 904518 | DAVID A | KITTOE | 1730149154 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01082018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109117 | J189 | Pneumonia, unspecified organism | ICD10 | 01182018 | 01082018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01032018 | 2018-01-03T08:11:17+00:00 |  | 000031103-01 | RUTH | FISHER | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12312017 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103065 | K632, N390 | Urinary tract infection, site not specified | ICD10 | 01182018 | 12312017 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01122018 | 2018-01-12T13:14:47+00:00 |  | 000029484-01 | DENZIL | COLLIER | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112071 | J09X1, J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 01182018 | 01112018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01092018 | 2018-01-09T10:20:02+00:00 |  | 000111648-01 | CHARLES | SHEPHERD | LICKING MEM HLTH PROF | 917807 | HASSAN | RAJJOUB | 1811060999 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01082018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109075 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 01182018 | 01082018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12222017 | 2017-12-22T16:02:10+00:00 |  | 000115758-01 | JOYCE | ANTILL | OSU HLTH SYS ORTHO ONC P | 924119 | ELIZABETH | YU | 1699896688 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01182018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 01042018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226004 | S32001D | Stable burst fx unsp lum vertebra, subs for fx w routn heal | ICD10 | 01182018 | 01042018 | 01172018 | 20670, 22610, 22612, 22614, 63087 | VRT CRPCTMY THRCOL AP;THR/LMBR SNG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 14, 14, 14, 14, 14 | CPT | C4 |  |  |  | 1.0 |
| 01042018 | 2018-01-04T15:03:52+00:00 |  | 000038168-01 | MONA | BOGGS | OSU HLTH SYSTEM NEUROSUR | 917661 | JAMES B | ELDER | 1427221803 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104110 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 01182018 | 01032018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T07:46:15+00:00 |  | 000076808-01 | Elmer | Blankenship | MED STAFF SERVICES LLC | 907315 | FARID | BOUNIF | 1053470518 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 01182018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104022 | J189, J810 | Acute pulmonary edema | ICD10 | 01182018 | 01032018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01082018 | 2018-01-08T15:04:50+00:00 |  | 000100445-01 | June | Faust | NEUROSCIENCE CENTER | 944006 | ARCHANA P | HINDUJA | 1336313865 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01072018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109001 | I639 | Cerebral infarction, unspecified | ICD10 | 01182018 | 01072018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01102018 | 2018-01-10T07:04:00+00:00 |  | 000057219-01 | JANET | WISE | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110012 | I509 | Heart failure, unspecified | ICD10 | 01182018 | 01092018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01042018 | 2018-01-04T09:34:58+00:00 |  | 000098257-01 | GEORGE | HERB | MEDICINE INPATIENT GROUP | 927693 | SIVANI S | PATHMARAJAH | 1336257666 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 01182018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104031 | R030 | Elevated blood-pressure reading, w/o diagnosis of htn | ICD10 | 01182018 | 01032018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01042018 | 2018-01-04T13:39:07+00:00 |  | 000070017-01 | Garold | Sheetz | ALLIANCE PHYSICIANS INC | 947302 | MIGUEL M | GAETA | 1336306141 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104092 | I471 | Supraventricular tachycardia | ICD10 | 01182018 | 01032018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01032018 | 2018-01-03T09:26:10+00:00 |  | 000099204-01 | Patricia | Cottone | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01162018 | 01172018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103047 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01182018 | 01162018 | 01172018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01112018 | 2018-01-11T16:22:51+00:00 |  | 000052913-01 | CHARLES | ULRICH | MOUNT CARMEL HLTH SYS | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111089 | L03116, M62272 | Nontraumatic ischemic infarction of muscle, left ank/ft | ICD10 | 01182018 | 01102018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01152018 | 2018-01-15T08:38:52+00:00 |  | 000005543-01 | NANCY | WHITACRE | SOUND INPATIENT PHYS OF | 935011 | JAY M | WALLIN | 1528090768 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01182018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 01142018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115068 | S7292XA | Unsp fracture of left femur, init encntr for closed fracture | ICD10 | 01182018 | 01142018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01032018 | 2018-01-03T09:52:32+00:00 |  | 000057504-01 | HAROLD | WINDBIGLER | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01162018 | 01172018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103073 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01182018 | 01162018 | 01172018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01092018 | 2018-01-09T10:54:18+00:00 |  | 000101004-01 | Charles | George | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01182018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01082018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109077 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 01182018 | 01082018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01072018 | 2018-01-07T14:39:09+00:00 |  | 000036717-01 | JEANNETTE | LECRONE | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 01122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108036 | M71051, R945 | Abnormal results of liver function studies | ICD10 | 01182018 | 01052018 | 01122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01092018 | 2018-01-09T17:43:16+00:00 |  | 000033181-01 | DIANA | BOBO | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110010 | S06360A | Traum hemor cereb, w/o loss of consciousness, init | ICD10 | 01182018 | 01042018 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01102018 | 2018-01-10T08:37:19+00:00 |  | 000050645-01 | ANNA MAE | ELLIOTT | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110017 | M6281 | Muscle weakness (generalized) | ICD10 | 01182018 | 01092018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01122018 | 2018-01-12T08:30:29+00:00 |  | 000082902-01 | Betty | Crabtree | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112020 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 01182018 | 01092018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01122018 | 2018-01-12T15:15:50+00:00 |  | 000038665-01 | PATSY | MCKENZIE | MOUNT CARMEL HLTH PRVDRS | 947622 | WILLIAM R | WALKER | 1427390905 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 03192018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112092 | J189, R0902 | Hypoxemia | ICD10 | 01182018 | 01122018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11202017 | 2017-11-20T15:11:58+00:00 |  | 000071941-01 | Lowell | Adams | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 171212145467.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120117 | I214, I499, R42 | Dizziness and giddiness | ICD10 | 01182018 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01082018 | 2018-01-08T10:20:42+00:00 | 250519328006 | 000033983-01 | CATHRYN | HENSON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 01062018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108042 | K5660 | Unspecified intestinal obstruction | ICD10 | 01182018 | 01052018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01082018 | 2018-01-08T10:30:53+00:00 | 261016298005 | 000010355-01 | FRANCES | SHIELDS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 01052018 | 01112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108043 | I5022, J181, M549 | Dorsalgia, unspecified | ICD10 | 01182018 | 01052018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01102018 | 2018-01-10T09:11:32+00:00 |  | 000040160-01 | THERESA | PARK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01182018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 01092018 | 01112018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110025 | R079 | Chest pain, unspecified | ICD10 | 01182018 | 01092018 | 01112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01102018 | 2018-01-10T11:43:37+00:00 |  | 000100689-01 | Doris | Brock | HOSPITALIST MEDICINE PHY | 906496 | VALERIE A | ALIU | 1073692042 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 01182018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110051 | M6282, N289, R509, R6883, R7302, R7989, T796XXA, W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 01182018 | 01092018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
