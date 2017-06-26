Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-21_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-21_URGEMERG
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
| 04122017 | 2017-04-12T09:55:44+00:00 |  | 000096580-01 | Jose | Volpe | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04102017 | 05042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170412024 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 06212017 | 04102017 | 05042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 05222017 | 2017-05-22T08:42:49+00:00 |  | 000007296-01 | ROBERT | MILLER | BRUCE L AUERBACH MD LLC | 902501 |  | BRUCE L AUERBACH MD LLC | 1770787723 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | EMR | ACO -Cardiology | Inpatient | 05212017 | 05232017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522010 | R079 | Chest pain, unspecified | ICD10 | 06212017 | 05212017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T14:09:55+00:00 |  | 000051871-01 | Paul | Collins | APOGEE MED GRP OHIO INC | 943521 | BERTHA S | VALDIVIESO | 1356571236 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05212017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522104 | D649, I2510, L03119, R6520, R748, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 06212017 | 05212017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 25.0 |
| 05302017 | 2017-05-30T10:14:56+00:00 |  | 000043515-01 | PATRICIA | EISENMAN | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05272017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530042 | I469 | Cardiac arrest, cause unspecified | ICD10 | 06212017 | 05272017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 05302017 | 2017-05-30T20:05:17+00:00 |  | 000015912-01 | PHYLLIS | WEISEL | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05312017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531012 | F0281, F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 06212017 | 05312017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 06052017 | 2017-06-05T09:03:49+00:00 |  | 000095352-01 | ANN | NICKLEY | MERCY HEALTH PHYSICIANS | 933427 | JAMES A | EPPLEY | 1033108006 | MERCY HOSPITAL CLERMONT | 950399 | 1013312511 | MERCY HEALTH CLERMONT HOSPITAL PSYCH | 1013312511 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MERCY HEALTH CLERMONT HOSPITAL PSYCH | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06042017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605036 | F319 | Bipolar disorder, unspecified | ICD10 | 06212017 | 06042017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06052017 | 2017-06-05T09:31:56+00:00 |  | 000021651-01 | ELEANOR | WALTERS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06042017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605066 | Z9181 | History of falling | ICD10 | 06212017 | 06042017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06062017 | 2017-06-06T10:59:00+00:00 |  | 000074247-01 | Dale | Knight | HHCSI INPATIENT | 939811 | DAVID | WILSON | 1992722581 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06212017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06052017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606050 | A419, E878, H1030, J209, W19XXXA | Unspecified fall, initial encounter | ICD10 | 06212017 | 06052017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06072017 | 2017-06-07T13:22:24+00:00 |  | 000104897-01 | JAMES | SMITH | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06152017 | 06202017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607056 | D49512 | NEOPLASM OF UNSPECIFIED BEHAVIOR OF LEFT KIDNEY | ICD10 | 06212017 | 06152017 | 06202017 | 50543 | LAPARO PARTIAL NEPHRECTOMY | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 06082017 | 2017-06-08T10:58:05+00:00 |  | 000003408-01 | RUTH | ANDERSON | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608046 | I8290, J449, N19 | Unspecified kidney failure | ICD10 | 06212017 | 06072017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06082017 | 2017-06-08T16:17:42+00:00 |  | 000033686-01 | GENTRY | STEPP | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609015 | J17, M6281, R6520 | Severe sepsis without septic shock | ICD10 | 06212017 | 06082017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06092017 | 2017-06-09T09:23:43+00:00 |  | 000070626-01 | John | Albaugh | COPC CENTRAL OHIO PRIMAR | 948414 | ERIC W | HARD | 1881031540 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609032 | I469, J9601 | Acute respiratory failure with hypoxia | ICD10 | 06212017 | 06082017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06092017 | 2017-06-09T16:36:39+00:00 |  | 000070170-01 | Luana | Frank | APOGEE MED GRP OHIO INC | 941919 | VEERABHADRA V | RAMESH METTA | 1376822395 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06092017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612007 | E876 | Hypokalemia | ICD10 | 06212017 | 06092017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 06122017 | 2017-06-12T09:26:30+00:00 |  | 000069899-01 | Russell | Karlen III | NORTH CENTRAL OHIO HEALT | 905685 | RASHID | PERVEZ | 1528144177 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612014 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 06212017 | 06082017 | 06182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06122017 | 2017-06-12T10:47:23+00:00 | 255469387162 | 000022214-01 | Janet | Schultz | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06112017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612048 | J441, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 06212017 | 06112017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06112017 | 2017-06-11T23:28:48+00:00 |  | 000105261-01 | Ernest | Thompson | PICKAWAY HEALTH SERVICES | 929496 | ROBERT G | KLOOS | 1912950197 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06092017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612064 | Z1211 | Encounter for screening for malignant neoplasm of colon | ICD10 | 06212017 | 06092017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06122017 | 2017-06-12T07:40:00+00:00 |  | 000018384-01 | ALICE | BRADBURY | HMP OF FRANKLIN CTY LTD | 901162 | RANDY L | MILLS | 1033259932 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06102017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612073 | J9601, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 06212017 | 06102017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T07:57:56+00:00 |  | 000067033-01 | SAMUEL | WILLIAMS JR | HMP OF PICKAWAY COUNTY L | 914637 | EMMANUEL | CHUKWUNYERE | 1821235540 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06102017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612074 | R42 | Dizziness and giddiness | ICD10 | 06212017 | 06102017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T12:35:11+00:00 |  | 000078523-01 | Shirley | Hicks | GENESIS MEDICAL GRP LLC | 917891 | JAN E | ELSTON | 1871520189 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 06202017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612080 | K5732, Z86010 | Personal history of colonic polyps | ICD10 | 06212017 | 06142017 | 06202017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 3.0 |
| 06122017 | 2017-06-12T15:23:24+00:00 |  | 000034938-01 | ALICE | FINNEY | OSU SURGERY LLC | 919913 | AHMET | KILIC | 1124153218 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06112017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612122 | I7100 | Dissection of unspecified site of aorta | ICD10 | 06212017 | 06112017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T16:04:39+00:00 |  | 000057679-01 | JAMES | PAGE | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06092017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613029 | J948, L0291, L0390 | Cellulitis, unspecified | ICD10 | 06212017 | 06092017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06132017 | 2017-06-13T11:19:00+00:00 |  | 000093046-01 | Thomas | Gardner | INTL MED CNSLT OF COLS I | 911285 | THOMAS E | WANKO | 1407854144 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613035 | R42 | Dizziness and giddiness | ICD10 | 06212017 | 06122017 | 06172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06132017 | 2017-06-13T13:00:35+00:00 |  | 000028263-01 | ROBERT | HUPP | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613050 | I2510, R079, R748 | Abnormal levels of other serum enzymes | ICD10 | 06212017 | 06132017 | 06172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06132017 | 2017-06-13T12:52:42+00:00 |  | 000077772-01 | Theresa | Tiberi | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06122017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613053 | R1110, R197 | Diarrhea, unspecified | ICD10 | 06212017 | 06122017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06132017 | 2017-06-13T12:55:32+00:00 |  | 000052306-01 | JOHN | WESTLAKE | COMMUNITY HSPIST LLC | 936308 | DAVID J | DUNBAR | 1295712032 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613054 | R55, R9431, Z8673 | Prsnl hx of TIA (TIA), and cereb infrc w/o resid deficits | ICD10 | 06212017 | 06132017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06132017 | 2017-06-13T15:33:28+00:00 |  | 000083349-01 | John | Hendershot | APOGEE MED GRP OHIO INC | 943521 | BERTHA S | VALDIVIESO | 1356571236 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06122017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613071 | I509, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 06212017 | 06122017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06142017 | 2017-06-14T09:04:40+00:00 |  | 000075743-01 | Bertie | Hash | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06132017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614017 | J189, N189, N390 | Urinary tract infection, site not specified | ICD10 | 06212017 | 06132017 | 06192017 | J1890 | INJECTION, CEPHALOTHIN SODIUM, UP TO 1 GRAM | HCPCS | 0 | 1 |  | 7 | HCPCS | HC |  |  |  | 4.0 |
| 06152017 | 2017-06-15T09:23:42+00:00 | 265164067165 | 000015182-01 | EUGENE | WHITE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06152017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615013 | A419 | Sepsis, unspecified organism | ICD10 | 06212017 | 06142017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06152017 | 2017-06-15T08:44:36+00:00 |  | 000112253-01 | Louis | Lamar Jr | OSU INTERNAL MED LLC | 910383 | RAMI | KAHWASH | 1053515718 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615022 | R079 | Chest pain, unspecified | ICD10 | 06212017 | 06142017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06152017 | 2017-06-15T08:35:58+00:00 |  | 000099144-01 | Linda | Bourland | HMP OF OHIO PC | 944625 | SHIVANI | BHATIA | 1558645366 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06212017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615023 | R0602 | Shortness of breath | ICD10 | 06212017 | 06142017 | 06182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06152017 | 2017-06-15T10:31:30+00:00 |  | 000076204-01 | Lawrence | Ruder | LANCASTER SURGICAL ASSOC | 936974 | SCOTT O | JOHNSON | 1528058971 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06132017 | 06192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615042 | R109 | Unspecified abdominal pain | ICD10 | 06212017 | 06132017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06152017 | 2017-06-15T11:12:08+00:00 |  | 000112855-01 | Richard | Dearwester | COPC CENTRAL OHIO PRIMAR | 908371 | JOHN | GREEN | 1518949106 | GRADY MEMORIAL HOSPITAL | 936495 | 1235174327 | GRADY MEMORIAL HOSPITAL | 1235174327 | Inpatient | IP | Concurrent Review | CONC |  | GRADY MEMORIAL HOSPITAL | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615048 | E875 | Hyperkalemia | ICD10 | 06212017 | 06142017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06152017 | 2017-06-15T11:35:33+00:00 |  | 000093886-01 | Joyce | Egnot | SELBY GENERAL HOSPITAL | 921896 | KELLI A | CAWLEY | 1023113727 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06212017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615053 | C20, R109 | Unspecified abdominal pain | ICD10 | 06212017 | 06142017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06152017 | 2017-06-15T15:03:27+00:00 | 251294207166 | 000019563-01 | DORA | ZWEYDORFF | PR CARE LLC | 939535 | WILLIAM SAXBY | ROTHE III | 1801874235 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06152017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615072 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 06212017 | 06152017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06152017 | 2017-06-15T15:12:25+00:00 |  | 000100948-01 | Kenneth | Brown | PARS NEUROSURG ASSOC INC | 924062 | SEYED ABDI | GHODSI | 1205803814 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06212017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06132017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170615075 | G894, I160, T782XXA | Anaphylactic shock, unspecified, initial encounter | ICD10 | 06212017 | 06132017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06162017 | 2017-06-16T09:51:33+00:00 | 260972127166 | 000049834-01 | CAROL | THOMPSON | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06152017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616023 | T8459XA | Infect/inflm reaction due to oth internal joint prosth, init | ICD10 | 06212017 | 06152017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06192017 | 2017-06-19T08:21:44+00:00 |  | 000069810-01 | Betty | Affolter | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06172017 | 06212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619003 | R319 | Hematuria, unspecified | ICD10 | 06212017 | 06172017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T09:13:38+00:00 |  | 000077137-01 | Dorothy | Miller | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06162017 | 06202017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619016 | J189 | Pneumonia, unspecified organism | ICD10 | 06212017 | 06162017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06192017 | 2017-06-19T10:20:54+00:00 | 025784110-7169 | 000012728-01 | DORCAS | SWANGER | COPC CENTRAL OHIO PRIMAR | 936173 | KELLY L | CONKLIN | 1861475428 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06182017 | 06202017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619043 | J189 | Pneumonia, unspecified organism | ICD10 | 06212017 | 06182017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06182017 | 2017-06-18T15:35:51+00:00 |  | 000054257-01 | Marguerite | Shelton | OHIOHEALTH PHYS GRP | 946385 | KESHAV | DESHPANDE | 1285958611 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06172017 | 06182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619065 | S02402A | Zygomatic fracture, unsp, init encntr for closed fracture | ICD10 | 06212017 | 06172017 | 06192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06192017 | 2017-06-19T08:33:02+00:00 |  | 000091069-01 | John | Young | OSU INTERNAL MED LLC | 946783 | NICOLE O | WILLIAMS | 1295998979 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 06212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06182017 | 06202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619094 | R109 | Unspecified abdominal pain | ICD10 | 06212017 | 06182017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06202017 | 2017-06-20T07:15:00+00:00 |  | 000097898-01 | Victor | Edwards | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06212017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 06192017 | 06202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620003 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 06212017 | 06192017 | 06202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06202017 | 2017-06-20T13:08:03+00:00 |  | 000080333-01 | Tonya | Tallent | UNIVERSITY OF CINCINNATI | 924635 | DAVID A | NORTON | 1932246915 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 944170 | 1689618423 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 1689618423 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY OF CINCINNATI MEDICAL CEN | 06212017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06202017 | 06212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620084 | A419, J80, J9601, K7201, R6521 | Severe sepsis with septic shock | ICD10 | 06212017 | 06202017 | 06212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
