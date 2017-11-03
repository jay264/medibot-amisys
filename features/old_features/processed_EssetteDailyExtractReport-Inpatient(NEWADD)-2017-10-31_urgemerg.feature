Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-31_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-10-31_URGEMERG
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
| 10172017 | 2017-10-17T09:17:11+00:00 | 252562427289 | 000041142-01 | BEVERLY | YOUNKIN | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10162017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017005 | I472 | Ventricular tachycardia | ICD10 | 10312017 | 10162017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 10302017 | 2017-10-30T10:27:41+00:00 | 257079147302 | 000045699-01 | JOANN | MCGREGOR | CEP AMERICA - OHIO LLC | 934846 | KEITH R | SMITH | 1730128919 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10292017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030043 | R0602 | Shortness of breath | ICD10 | 10312017 | 10292017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10272017 | 2017-10-27T09:32:29+00:00 | 260816597300 | 000073053-01 | Judy | Lee | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 10262017 | 10302017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027019 | I4891, I639 | Cerebral infarction, unspecified | ICD10 | 10312017 | 10262017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T08:29:20+00:00 |  | 000044434-01 | Patricia | Jennings | NORTHSIDE HOSPITAL CHEROKEE | 911827 |  | NORTHSIDE HOSPITAL CHEROKEE | 1225050396 | NORTHSIDE HOSPITAL CHEROKEE | 911827 | 1225050396 | NORTHSIDE HOSPITAL CHEROKEE | 1225050396 | Inpatient | IP | Concurrent Review | CONC |  | NORTHSIDE HOSPITAL CHEROKEE | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08032017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023010 | M79639, R110, R1111, R51, R6884 | Jaw pain | ICD10 | 10312017 | 08032017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10252017 | 2017-10-25T09:28:14+00:00 | 250437777297 | 000051412-01 | GLENDA | GARRISON | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10242017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025017 | A491, J9600, R197 | Diarrhea, unspecified | ICD10 | 10312017 | 10242017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10272017 | 2017-10-27T09:16:06+00:00 | 254554107299 | 000019104-01 | HELENE | GOLDMEIER | COPC CENTRAL OHIO PRIMAR | 910704 | JENNIFER A | STURGILL | 1386803328 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10272017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027010 | C3490, E871, E875 | Hyperkalemia | ICD10 | 10312017 | 10272017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10162017 | 2017-10-16T09:54:47+00:00 | 250816377287 | 000005236-01 | JAMES | MORGAN | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10142017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016046 | L03818 | Cellulitis of other sites | ICD10 | 10312017 | 10142017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 10232017 | 2017-10-23T11:20:32+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY HOSPITAL | 936399 |  | UNIVERSITY HOSPITAL | 1033154026 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 10312017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 10202017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023125 | J189 | Pneumonia, unspecified organism | ICD10 | 10312017 | 10202017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10202017 | 2017-10-20T22:00:28+00:00 |  | 000111390-01 | Sherry | Mills | RESILIENCY & WELLNESS CO | 946613 | DELANEY | SMITH | 1942324728 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 10312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10202017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023002 | F315 | Bipolar disord, crnt epsd depress, severe, w psych features | ICD10 | 10312017 | 10202017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10252017 | 2017-10-25T08:55:40+00:00 |  | 000100964-01 | Otis | Smith | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 10312017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10252017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025027 | J189, R0902, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 10312017 | 10252017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06072017 | 2017-06-07T13:04:28+00:00 | 026065774-7157 | 000003542-01 | Patricia | Driscoll | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Inpatient | IP | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06062017 | 06082017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170609109429.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607050 | R079 | Chest pain, unspecified | ICD10 | 10312017 | 06062017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10272017 | 2017-10-27T16:00:34+00:00 | 025362755-7292 | 000033384-01 | BARBARA | STOVER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 10192017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027060 | L0390 | Cellulitis, unspecified | ICD10 | 10312017 | 10192017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10232017 | 2017-10-23T09:55:53+00:00 |  | 000084606-01 | Ethel | Grimm | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10202017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023097 | N19 | Unspecified kidney failure | ICD10 | 10312017 | 10202017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10262017 | 2017-10-26T08:43:11+00:00 |  | 000111065-01 | Joseph | Sawyer | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 10312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10252017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026025 | A419, J939 | Pneumothorax, unspecified | ICD10 | 10312017 | 10252017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T10:57:07+00:00 |  | 000081098-01 | Roberta | Link | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 10312017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10272017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030054 | E860, E871, F10129, F1910, I615, R740, R911, S0083XA, S06300A, W19XXXA, Y92099 | Unsp place in oth non-institutional residence as place | ICD10 | 10312017 | 10272017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T10:29:59+00:00 |  | 000115195-01 | JOANNE | LAUER | SOUND KENWOOD HSPISTS OF | 943053 | JEFFREY T | HAUSFELD | 1023374220 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 10312017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10222017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023119 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 10312017 | 10222017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T14:40:56+00:00 |  | 000039169-01 | HAZEL | MATTHEWS | DELRAY MEDICAL CENTER | 905690 |  | DELRAY MEDICAL CENTER | 1326078288 | DELRAY MEDICAL CENTER | 905690 | 1326078288 | DELRAY MEDICAL CENTER | 1326078288 | Inpatient | IP | Concurrent Review | CONC |  | DELRAY MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10232017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024059 | I480 | Paroxysmal atrial fibrillation | ICD10 | 10312017 | 10232017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10302017 | 2017-10-30T09:29:46+00:00 | 251985897302 | 000003047-01 | FREDA | LINDSEY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 10292017 | 10312017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030016 | I4891 | Unspecified atrial fibrillation | ICD10 | 10312017 | 10292017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T09:45:08+00:00 | 251401277301 | 000114524-01 | Diana | Palmer | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 10272017 | 10312017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030025 | R0600 | Dyspnea, unspecified | ICD10 | 10312017 | 10272017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10202017 | 2017-10-20T10:57:01+00:00 |  | 000000240-01 | BARBARA | SHIVENER | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020049 | S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 10312017 | 10192017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T13:02:50+00:00 |  | 000023332-01 | KENNETH | CRAGO | COMMUNITY HSPIST LLC | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10222017 | 10242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023128 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 10312017 | 10222017 | 10242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10182017 | 2017-10-18T15:38:27+00:00 |  | 000023525-01 | MARIAN | MILLER | COPC CENTRAL OHIO PRIMAR | 905869 | VENKATESH | CHIRRAVURI | 1073562666 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10182017 | 10252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019002 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 10312017 | 10182017 | 10252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10252017 | 2017-10-25T12:00:13+00:00 |  | 000037935-01 | ROBERT | TOMASTIK | OH ORTHO CTR OF EXCELLEN | 910151 | JAMES C | LATSHAW | 1548239858 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10242017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025048 | R55 | Syncope and collapse | ICD10 | 10312017 | 10242017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10252017 | 2017-10-25T12:29:55+00:00 |  | 000003068-01 | RUTH | JANISCH | OHIOHEALTH PHYS GRP | 909054 | FATIMA I | CHAWDRY | 1790890010 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10252017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025052 | I639 | Cerebral infarction, unspecified | ICD10 | 10312017 | 10252017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T11:08:38+00:00 | 252856327294 | 000038811-01 | RICHARD | ROLWING | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10212017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023076 | K567, K5900, N390 | Urinary tract infection, site not specified | ICD10 | 10312017 | 10212017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10302017 | 2017-10-30T12:59:55+00:00 |  | 000098540-01 | Marie | Abmayr | MIAMI VALLEY HSPISTS GRP | 933953 | JUAN C | ROJAS-GOMEZ | 1578839304 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 10312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10282017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030125 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 10312017 | 10282017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10242017 | 2017-10-24T09:09:58+00:00 |  | 000009054-01 | BOBBY | TUTTLE | S DAYTON ACUTE CARE CNSL | 922839 | KARLO A | RUFO | 1194956581 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10232017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024075 | R0602, R748 | Abnormal levels of other serum enzymes | ICD10 | 10312017 | 10232017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10122017 | 2017-10-12T17:08:08+00:00 |  | 000075162-01 | Bonnie | Rinehart | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 10312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10112017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013022 | I472 | Ventricular tachycardia | ICD10 | 10312017 | 10112017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 10262017 | 2017-10-26T15:31:01+00:00 | 025501609-7300 | 000003491-01 | GERTRUDE | BOISSEAU | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10262017 | 10312017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027001 | S42232A | 3-part fracture of surgical neck of left humerus, init | ICD10 | 10312017 | 10262017 | 10312017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  | No child records to display. |  |
| 10302017 | 2017-10-30T10:31:18+00:00 | 257197037301 | 000031321-01 | WILLIAM | REHL | GENESIS MEDICAL GRP LLC | 924382 | DAWIT | WUBISHET | 1083971311 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10282017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030045 | I10 | Essential (primary) hypertension | ICD10 | 10312017 | 10282017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10272017 | 2017-10-27T12:06:42+00:00 |  | 000086537-01 | Dollie | Coburn | PICKAWAY HEALTH SERVICES | 945990 | JASON D | SHOEMAKER | 1497053540 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10252017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027049 | K353 | Acute appendicitis with localized peritonitis | ICD10 | 10312017 | 10252017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10242017 | 2017-10-24T16:06:03+00:00 |  | 000006586-01 | CAROL | STEPP | OHIOHEALTH PHYS GRP | 917476 | NICHOLAS E | MAKSIM | 1497968655 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10232017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025002 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 10312017 | 10232017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T14:53:46+00:00 | 017614939-7290 | 000116944-01 | Reva | Sims | MOUNT CARMEL HLTH PRVDRS | 923371 | NAOMI H | CHEN | 1619154739 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Essential Care | EMR | EIS | Inpatient | 10302017 | 10312017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031086 | N63 | Unspecified lump in breast | ICD10 | 10312017 | 10302017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10262017 | 2017-10-26T09:55:24+00:00 | 259864727298 | 000000907-01 | KENNETH | HALL | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10252017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026034 | I509 | Heart failure, unspecified | ICD10 | 10312017 | 10252017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10192017 | 2017-10-19T09:23:57+00:00 | 262851017291 | 000011630-01 | ROSE | SWAGLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10182017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019035 | R197 | Diarrhea, unspecified | ICD10 | 10312017 | 10182017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 10252017 | 2017-10-25T08:08:12+00:00 |  | 000105542-01 | Clara | Delawder | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 10312017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 10242017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025018 | N390 | Urinary tract infection, site not specified | ICD10 | 10312017 | 10242017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10242017 | 2017-10-24T12:15:04+00:00 |  | 000110956-01 | Philip | Desalvo | GENESIS MEDICAL GRP LLC | 912779 | EDUARDO | JORGE | 1689675134 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 10312017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10202017 | 10312017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024068 | I2510, I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 10312017 | 10202017 | 10312017 | 33533, 33518, 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 12, 12, 12 | CPT | C4 |  |  |  | 1.0 |
| 10232017 | 2017-10-23T09:45:45+00:00 | 252609327295 | 000058285-01 | JUDITH | COFFIELD | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10222017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023031 | J159 | Unspecified bacterial pneumonia | ICD10 | 10312017 | 10222017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10302017 | 2017-10-30T12:24:42+00:00 |  | 000103864-01 | ESTHER | MEADORS | HDH PROFESSIONAL SERV CO | 908708 | RAMESH | SHIVANI | 1477545390 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 10312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10272017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030068 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 10312017 | 10272017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10232017 | 2017-10-23T17:04:45+00:00 |  | 000110954-01 | Ruth | Mault | S DAYTON ACUTE CARE CNSL | 928230 | CARLOS A | JORDAN | 1972786630 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 10312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10222017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024032 | R262, R531 | Weakness | ICD10 | 10312017 | 10222017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10232017 | 2017-10-23T14:28:01+00:00 |  | 000082562-01 | EDWARD | SCAGGS | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10222017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023140 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 10312017 | 10222017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10162017 | 2017-10-16T09:43:09+00:00 |  | 000091896-01 | Fred | Thomas | MIAMI VALLEY HSPISTS GRP | 925015 | TITILAYO A | OLUWABUSI | 1912293077 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10162017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016106 | R0902 | Hypoxemia | ICD10 | 10312017 | 10162017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09262017 | 2017-09-26T15:29:05+00:00 |  | 000042130-01 | ROSALIND | LEIGHTY | S DAYTON ACUTE CARE CNSL | 909229 | ASMA | RIAZ | 1154313922 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927011 | R296 | Repeated falls | ICD10 | 10312017 | 09182017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 47.0 |
| 10262017 | 2017-10-26T09:46:34+00:00 | 252126527298 | 000008458-01 | WANDA | NICHOLS | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 10312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10252017 | 10312017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026030 | I509 | Heart failure, unspecified | ICD10 | 10312017 | 10252017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
