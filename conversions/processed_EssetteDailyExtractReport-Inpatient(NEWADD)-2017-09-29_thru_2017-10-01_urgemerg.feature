Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-29_thru_2017-10-01_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-29_thru_2017-10-01_URGEMERG
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
| 09252017 | 2017-09-25T09:01:28+00:00 | 253755377267 | 000004550-01 | DELPHINE | BROBST | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09242017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925006 | F419 | Anxiety disorder, unspecified | ICD10 | 09292017 | 09252017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09142017 | 2017-09-14T23:15:36+00:00 |  | 000074555-01 | Irma | Stewart | OH HSP FOR PSYCHIATRY | 911060 | JAMES C | JOHNSON | 1972535094 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 09292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915042 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 09292017 | 09152017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09252017 | 2017-09-25T09:24:34+00:00 |  | 000100897-01 | Patricia | Moore | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 09292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09232017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925061 | K529, Z8619 | Personal history of other infectious and parasitic diseases | ICD10 | 09292017 | 09232017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09182017 | 2017-09-18T10:39:42+00:00 | 259522147259 | 000114674-01 | Donna | Holley | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09162017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918038 | D6489 | Other specified anemias | ICD10 | 09292017 | 09162017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 09192017 | 2017-09-19T10:47:05+00:00 |  | 000106701-01 | Janice | Conkle | OHIOHEALTH PHYS GRP | 909715 | GEFFREY B | BLOSSOM | 1891794988 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09182017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920043 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 09292017 | 09182017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09282017 | 2017-09-28T08:44:37+00:00 |  | 000116403-01 | Margaret | Callahan | SOUND PHYSICIANS OF OHI0 | 909480 | JINHONG | XING | 1841464369 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 09292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09272017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928022 | I509 | Heart failure, unspecified | ICD10 | 09292017 | 09272017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T12:44:43+00:00 |  | 000085235-01 | Patricia | Roberts | PRIME HEALTHCARE FOUNDAT | 950913 |  | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 09292017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925090 | J189 | Pneumonia, unspecified organism | ICD10 | 09292017 | 09252017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09212017 | 2017-09-21T08:37:58+00:00 |  | 000059303-01 | Cecilia | Krause | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09202017 | 09242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921040 | R0602 | Shortness of breath | ICD10 | 09292017 | 09202017 | 09242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09242017 | 2017-09-24T12:21:51+00:00 |  | 000073773-01 | Ann | Lint | COPC CENTRAL OHIO PRIMAR | 915650 | ADAM A | RUSH | 1649457250 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09222017 | 09232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925008 | I639 | Cerebral infarction, unspecified | ICD10 | 09292017 | 09222017 | 09242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09292017 | 2017-09-29T14:57:26+00:00 |  | 000071092-01 | Kelly | Dodrill | OHIO ENT & ALLERGY PHYSI | 934941 | EVAN J | TOBIN | 1588636989 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09282017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929049 | D110 | Benign neoplasm of parotid gland | ICD10 | 09292017 | 09282017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09262017 | 2017-09-26T09:02:36+00:00 | 025650379-7269 | 000081348-01 | Tammy | Houston | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09292017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926010 | K8080 | Other cholelithiasis without obstruction | ICD10 | 09292017 | 09262017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09142017 | 2017-09-14T10:29:47+00:00 | 251121387256 | 000026678-01 | WALTER | SUMMERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09132017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914041 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 09292017 | 09132017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 09202017 | 2017-09-20T11:32:15+00:00 |  | 000078942-01 | Rita | Dunn | BUTLER COUNTY MENTAL HLT | 932392 | RAKESSHKUMAR | KANERIA | 1740347566 | BLUERIDGE VISTA HEALTH A | 949112 | 1053784454 | BLUERIDGE VISTA HEALTH AND WELLNESS | 1053784454 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | BLUERIDGE VISTA HEALTH AND WELLNESS | 09292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920069 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 09292017 | 09192017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09222017 | 2017-09-22T14:33:42+00:00 |  | 000077222-01 | Ruth | Wagner | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09212017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922052 | S72001A, W1789XA | Other fall from one level to another, initial encounter | ICD10 | 09292017 | 09212017 | 09272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09182017 | 2017-09-18T11:11:48+00:00 |  | 000115025-01 | JEAN | STROMAN | HOSP SVC MED GRP OF CLAR | 911457 | SIAMAK | GHANBARI ROSTA | 1588801757 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919028 | J45901, R0902 | Hypoxemia | ICD10 | 09292017 | 09152017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09202017 | 2017-09-20T08:24:22+00:00 |  | 000055770-01 | CHARLES | LOUDERMILK | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09282017 | 09292017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920011 | C61 | Malignant neoplasm of prostate | ICD10 | 09292017 | 09282017 | 09292017 | 55866, 38571 | LAPAROSCOPY, LYMPHADENECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09142017 | 2017-09-14T14:03:10+00:00 |  | 000107568-01 | JAMES | BOLAND | MERCY HEALTH PHYSICIANS | 920951 | BRION P | MORAN | 1174528970 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09292017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915093 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09292017 | 09262017 | 09282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 08302017 | 2017-08-30T11:08:11+00:00 |  | 000023960-01 | JOHANNES | FABER | OSU HLTH SYS ORTHO ONC P | 936691 | ANDREW H | GLASSMAN | 1629177274 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830050 | S73004S | Unspecified dislocation of right hip, sequela | ICD10 | 09292017 | 09252017 | 09292017 | 27134 | REVSN TOT HIP ARTHPLSTY/BOTH COMNTS | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 09272017 | 2017-09-27T13:08:51+00:00 |  | 000089159-01 | Nancy | Meyer | ALLIANCE PHYSICIANS INC | 906931 | HARVEY S | HAHN | 1811971039 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927057 | R001, R42 | Dizziness and giddiness | ICD10 | 09292017 | 09262017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09252017 | 2017-09-25T13:01:05+00:00 |  | 000073501-01 | Bessie | Prater | PRIME HEALTHCARE FOUNDAT | 950913 |  | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 09292017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 09242017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925091 | I2699, R079 | Chest pain, unspecified | ICD10 | 09292017 | 09242017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09272017 | 2017-09-27T08:21:19+00:00 |  | 000105569-01 | Ronald | Flannery | MERCY HEALTH PHYSICIANS | 902070 | C DOUGLAS | PORTER | 1720087463 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09292017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 09292017 | 09302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170927035 | G9340, I639 | Cerebral infarction, unspecified | ICD10 | 09292017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09282017 | 2017-09-28T09:20:14+00:00 | 259399247270 | 000016212-01 | THOMAS | ROETTKER | MIAMI VALLEY HSPISTS GRP | 916447 | SEREF | BORNOVALI | 1508862244 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 09272017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928013 | I509 | Heart failure, unspecified | ICD10 | 09292017 | 09272017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09252017 | 2017-09-25T07:51:43+00:00 |  | 000119104-01 | William | Scaggs | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09222017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925017 | J939 | Pneumothorax, unspecified | ICD10 | 09292017 | 09222017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08282017 | 2017-08-28T14:57:31+00:00 |  | 000093988-01 | Shirley | Thornton | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828123 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09292017 | 09252017 | 09282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09262017 | 2017-09-26T10:40:25+00:00 | 026203236-7268 | 000028644-01 | MARY | SWARTZ | SOUND PHYSICIANS OF OHI0 | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 09252017 | 09252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926035 | I63512 | Cereb infrc d/t unsp occls or stenos of left mid cereb art | ICD10 | 09292017 | 09252017 | 09252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09252017 | 2017-09-25T09:59:05+00:00 | 252548877265 | 000044298-01 | BARBARA | WORKMAN | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09222017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925040 | S22000A | Wedge compression fracture of unsp thoracic vertebra, init | ICD10 | 09292017 | 09222017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08282017 | 2017-08-28T11:15:59+00:00 |  | 000110019-01 | Brenda | Pardue | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09252017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828087 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09292017 | 09252017 | 09282017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09062017 | 2017-09-06T13:11:32+00:00 |  | 000109503-01 | Elvira H | Brunn | RECONSTRUCTIVE ORTHOS & | 924273 | MATTHEW A | LANGENDERFER | 1194731398 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09292017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09202017 | 09242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908009 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 09292017 | 09202017 | 09252017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 5.0 |
| 09252017 | 2017-09-25T14:05:56+00:00 |  | 000110250-01 | Betty | Romine | COMMUNITY HSPIST LLC | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09232017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925103 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 09292017 | 09232017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09272017 | 2017-09-27T14:36:30+00:00 |  | 000072893-01 | Barry | Weber | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09262017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927067 | R0602, R748 | Abnormal levels of other serum enzymes | ICD10 | 09292017 | 09262017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09152017 | 2017-09-15T10:42:30+00:00 | 017941654-7244 | 000088393-01 | Larry | Huffman | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09292017 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 09272017 | 09282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915070 | M4802 | Spinal stenosis, cervical region | ICD10 | 09292017 | 09272017 | 09282017 | 22551, 22552, 22853, 20930, 20936 | AUTOGRAFT FOR SPINE SURGERY ONLY (INCLUDES HARVESTING THE | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09212017 | 2017-09-21T08:42:30+00:00 |  | 000044070-01 | PAUL | WRIGHT | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09202017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170921041 | R1310 | Dysphagia, unspecified | ICD10 | 09292017 | 09202017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09272017 | 2017-09-27T14:50:55+00:00 |  | 000102492-01 | Patricia | Kyrlach | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09292017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09272017 | 09272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927069 | E876, I959, K529, K567, R1110, R197, R55, T68XXXA | Hypothermia, initial encounter | ICD10 | 09292017 | 09272017 | 09282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09062017 | 2017-09-06T11:24:44+00:00 |  | 000053058-01 | SHIRLEY | PARSLEY | COLON & RECTAL SURG INC | 934919 | CHARLES W | TAYLOR III | 1861492969 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 09262017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908006 | K623 | Rectal prolapse | ICD10 | 09292017 | 09262017 | 09292017 | 45130 | EXC RECTAL PROCIDENT PERINEAL APPR | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09252017 | 2017-09-25T15:26:06+00:00 |  | 000027153-01 | PATRICIA | JOHNSTON | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09232017 | 09262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925117 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 09292017 | 09232017 | 09262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07192017 | 2017-07-19T11:24:00+00:00 | 026276677-7265 | 000049580-01 | CHARLES | DUNFEE | ORTHO & NEURO CONSULTS I | 942983 | RYAN M | PALMER | 1912134487 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09292017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 09282017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719051 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09292017 | 09282017 | 09292017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09262017 | 2017-09-26T09:37:47+00:00 |  | 000071356-01 | Charles | Padrutt | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09252017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926022 | I959, N19, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 09292017 | 09252017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09292017 | 2017-09-29T13:55:48+00:00 |  | 000071178-01 | Marcella | Wells | MOUNT CARMEL HLTH PRVDRS | 935536 | DOUGLAS D | MASSICK | 1881666287 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09292017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09282017 | 09292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170929041 | E042 | Nontoxic multinodular goiter | ICD10 | 09292017 | 09282017 | 09292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
