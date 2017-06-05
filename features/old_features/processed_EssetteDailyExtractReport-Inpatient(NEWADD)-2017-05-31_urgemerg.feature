Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-31_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-31_URGEMERG
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
| 05272017 | 2017-05-27T17:29:19+00:00 |  | 000025732-01 | VALDO | BEEDY | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05262017 | 05282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530010 | R079 | Chest pain, unspecified | ICD10 | 05312017 | 05262017 | 05282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05262017 | 2017-05-26T14:48:47+00:00 |  | 000024643-01 | DONALD | ANDERSEN | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05262017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526062 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 05312017 | 05262017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T14:02:19+00:00 |  | 000099011-01 | CONNIE | MCNANIE | MERCY HEALTH PHYSICIANS | 947497 | HERBERT M | BIEL | 1588699771 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05312017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05242017 | 05282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515137 | M4310 | Spondylolisthesis, site unspecified | ICD10 | 05312017 | 05252017 | 05302017 | 22612, 22614, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 04212017 | 2017-04-21T16:07:09+00:00 |  | 000013130-01 | BARBARA | HICKS | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192017 | 07242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424015 | I5023, R0689 | Other abnormalities of breathing | ICD10 | 05312017 | 04192017 | 04252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05042017 | 2017-05-04T11:51:11+00:00 |  | 000047556-01 | LESLIE | PARKER | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05252017 | 05302017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170504037 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 05312017 | 05252017 | 05302017 | 36245, 75953 | ABDOM ANEURYSM ENDOVAS RPR | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 04202017 | 2017-04-20T13:11:24+00:00 |  | 000076958-01 | Marjorie | Townsley | STEPHEN D HEISE MD & ASS | 923512 | STEPHEN D | HEIS | 1407859010 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05312017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04202017 | 04292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420058 | D333 | Benign neoplasm of cranial nerves | ICD10 | 05312017 | 04202017 | 04292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04192017 | 2017-04-19T13:39:49+00:00 |  | 000055345-01 | ERIC | CROKER | OSU INTERNAL MED LLC | 949059 | JISHU K | DAS | 1326276247 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192017 | 04202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080895.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419077 | C01, C7800, J189, R509 | Fever, unspecified | ICD10 | 05312017 | 04192017 | 04212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05302017 | 2017-05-30T11:41:37+00:00 | 252770487148 | 000041931-01 | BARBARA | ZOSEL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05282017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530106 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 05312017 | 05282017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04132017 | 2017-04-13T12:41:16+00:00 |  | 000088597-01 | L | Meek | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04122017 | 04172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417028 | R079, R4182 | Altered mental status, unspecified | ICD10 | 05312017 | 04122017 | 04182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05302017 | 2017-05-30T12:01:57+00:00 |  | 000018949-01 | Keith | Zaynor | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05312017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05262017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530115 | I519, R0789 | Other chest pain | ICD10 | 05312017 | 05262017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05302017 | 2017-05-30T08:19:10+00:00 |  | 000080713-01 | Helen | Simpson | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU INTERNAL MED LLC | 927196 | 1740231448 | SARAH TAPYRIK | 1326264136 | Inpatient | IP | Concurrent Review | CONC | SARAH | TAPYRIK | 05312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05262017 | 05292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530137 | I469 | Cardiac arrest, cause unspecified | ICD10 | 05312017 | 05262017 | 05292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02242017 | 2017-02-24T09:59:28+00:00 | FIN 0260632937055 | 000102323-01 | JUDY | SCHLEGLER | MOUNT CARMEL HEALTH SYS | 920534 |  | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | MOUNT CARMEL HEALTH SYS | 920534 | 1578648085 | MOUNT CARMEL MEDICAL CTR REHAB | 1578648085 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CTR REHAB | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02262017 | 02272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170224024 | I639, V57 | REHABILITATION PROCEDURE | ICD10 | 05312017 | 02262017 | 02272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05212017 | 2017-05-21T11:52:47+00:00 |  | 000091255-01 | William | Martin | NEUROSCIENCE CENTER | 919466 | CHAD M | MILLER | 1467477901 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05312017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05212017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522017 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05312017 | 05212017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T16:03:48+00:00 |  | 000015060-01 | JOHN | DUDA | HOSPITAL MEDICINE SERVIC | 949699 | IMRAN T | MINHAS | 1942288402 | HOCKING VALLEY COMMUNITY HOSPITAL | 945237 | 1033263835 | HOCKING VALLEY COMMUNITY HOSPITAL | 1033263835 | Inpatient | IP | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05192017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523004 | N390 | Urinary tract infection, site not specified | ICD10 | 05312017 | 05192017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05222017 | 2017-05-22T09:41:21+00:00 | 025013001-7141 | 000024655-01 | HELEN | BRADFORD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05212017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522031 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 05312017 | 05212017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05262017 | 2017-05-26T10:11:30+00:00 |  | 000087758-01 | Karen | Draggoo-Smith | ONCOLOGY HEMATOLOGY CARE | 927400 | DENE C | WRENN | 1104901065 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05312017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05252017 | 07282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526029 | C569 | Malignant neoplasm of unspecified ovary | ICD10 | 05312017 | 05252017 | 05292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04202017 | 2017-04-20T13:10:27+00:00 |  | 000088584-01 | Roger | Boles | SERN OHIO ER PHYS LLP | 906496 | VALERIE A | ALIU | 1073692042 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 05312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04182017 | 04202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170426080900.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420062 | I959, R531 | Weakness | ICD10 | 05312017 | 04182017 | 04212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T12:25:29+00:00 |  | 000079604-01 | Patricia | Gram | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523058 | R0600 | Dyspnea, unspecified | ICD10 | 05312017 | 05222017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05182017 | 2017-05-18T16:08:22+00:00 |  | 000010172-01 | GEORGE | STRODE | HOLY CROSS HOSPITAL | 906642 |  | HOLY CROSS HOSPITAL | 1194751958 | HOLY CROSS HOSPITAL | 906642 | 1194751958 | HOLY CROSS HOSPITAL | 1194751958 | Inpatient | IP | Concurrent Review | CONC |  | HOLY CROSS HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519001 | G9340, N390 | Urinary tract infection, site not specified | ICD10 | 05312017 | 05172017 | 05282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 03292017 | 2017-03-29T13:42:32+00:00 |  | 000056519-01 | BARBARA | ANDERSON | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292017 | 04092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170330052 | F17210, J449, N390 | Urinary tract infection, site not specified | ICD10 | 05312017 | 03292017 | 04102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04132017 | 2017-04-13T10:43:28+00:00 |  | 000104443-01 | CAROLYN | DOWNING | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04122017 | 04202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414044 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05312017 | 04122017 | 04212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05182017 | 2017-05-18T09:42:10+00:00 |  | 000111587-01 | Vickie | Eye | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05312017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05252017 | 05302017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518028 | C641 | Malignant neoplasm of right kidney, except renal pelvis | ICD10 | 05312017 | 05252017 | 05302017 | 50240 | NEPHPHRECTOMY, PARTIAL | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 05302017 | 2017-05-30T10:21:49+00:00 |  | 000028364-01 | JOE | CLARK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 05282017 | 05302017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530047 | S72011A | Unsp intracapsular fracture of right femur, init for clos fx | ICD10 | 05312017 | 05282017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05222017 | 2017-05-22T11:52:05+00:00 |  | 000076790-01 | Galen | Alexander | OSU INTERNAL MED LLC | 932316 | EMILY B | KAUFFMAN | 1033309596 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05312017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05212017 | 05312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522077 | K7581, N179 | Acute kidney failure, unspecified | ICD10 | 05312017 | 05212017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05152017 | 2017-05-15T10:33:41+00:00 |  | 000113866-01 | Victoria | Ellis | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 05312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05172017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515043 | R0600, R296 | Repeated falls | ICD10 | 05312017 | 05172017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 05222017 | 2017-05-22T09:06:37+00:00 |  | 000112052-01 | WILLIAM | ALLEN | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05312017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 05222017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522015 | M6281 | Muscle weakness (generalized) | ICD10 | 05312017 | 05222017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05302017 | 2017-05-30T14:52:04+00:00 |  | 000094665-01 | Michael | Rayburn | DAYTON LUNG & SLEEP MED | 918296 | FAHIM Z | KHAN | 1245527803 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 05312017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05262017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530191 | I469 | Cardiac arrest, cause unspecified | ICD10 | 05312017 | 05262017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05302017 | 2017-05-30T11:31:17+00:00 |  | 000040426-01 | Robert | Hunter | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05312017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05262017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530099 | R569 | Unspecified convulsions | ICD10 | 05312017 | 05262017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05152017 | 2017-05-15T14:09:40+00:00 |  | 000100012-01 | James | Scott | MY DOCTOR LLC | 921395 | DOUGLAS A | MAGENHEIM | 1871574780 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 05312017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05152017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515128 | A419 | Sepsis, unspecified organism | ICD10 | 05312017 | 05152017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05252017 | 2017-05-25T10:44:34+00:00 |  | 000087657-01 | Thelma | Schuh | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05242017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525031 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 05312017 | 05242017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05302017 | 2017-05-30T09:33:18+00:00 |  | 000094578-01 | Sherrie | Booker | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05262017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530024 | A047, A419 | Sepsis, unspecified organism | ICD10 | 05312017 | 05262017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05302017 | 2017-05-30T14:45:29+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY HOSPITAL | 945440 | DAVID S | FELDMAN | 1386688711 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 05312017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05262017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530207 | E8342, I5022, R509, R6510, Z941 | Heart transplant status | ICD10 | 05312017 | 05262017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04182017 | 2017-04-18T12:28:38+00:00 |  | 000112008-01 | Joyce | Kelly | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05232017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170418108 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05312017 | 05232017 | 05302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 05302017 | 2017-05-30T16:40:33+00:00 |  | 000085218-01 | Ronald | Talbot | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 05312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05252017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531005 | R1084, R1110 | Vomiting, unspecified | ICD10 | 05312017 | 05252017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05232017 | 2017-05-23T13:28:25+00:00 |  | 000040419-01 | MARIA | YOE | HDH PROFESSIONAL SERV CO | 908708 | RAMESH | SHIVANI | 1477545390 | HIGHLAND DISTRICT HOSPITAL PSYCH | 933332 | 1235205139 | HIGHLAND DISTRICT HOSPITAL PSYCH | 1235205139 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL PSYCH | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05232017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523068 | F0280 | Dementia in oth diseases classd elswhr w/o behavrl disturb | ICD10 | 05312017 | 05232017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04132017 | 2017-04-13T08:48:48+00:00 |  | 000036587-01 | WANDA JUNE | BRALLEY | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04122017 | 04182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414031 | I4892, R0602 | Shortness of breath | ICD10 | 05312017 | 04122017 | 04192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05302017 | 2017-05-30T09:11:35+00:00 |  | 000013013-01 | ALICE | BEOUGHER | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05262017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530013 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 05312017 | 05262017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05312017 | 2017-05-31T10:52:51+00:00 | 026045139-7142 | 000021445-01 | LILLIAN | STUMPH | AMERICAN HLTH NETWORK OF | 936374 | JAMES C | ENGLISH | 1417992785 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05312017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 05302017 | 05312017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531048 | K430 | Incisional hernia with obstruction, without gangrene | ICD10 | 05312017 | 05302017 | 05312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05192017 | 2017-05-19T13:09:28+00:00 |  | 000064275-01 | GUS | PAPPAS | HMP OF OHIO PC | 948369 | YASHASVINI | YASHASVINI | 1740613058 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05312017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05192017 | 05302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519058 | J159 | Unspecified bacterial pneumonia | ICD10 | 05312017 | 05192017 | 05302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 02132017 | 2017-02-13T10:25:44+00:00 |  | 000051699-01 | SANDRA | REINHARD | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05312017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170213112 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05312017 | 03202017 | 03232017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 3.0 |
| 03142017 | 2017-03-14T07:08:32+00:00 |  | 000078043-01 | Modie | Lee | NOCK, PETER T | 903807 | PETER T | NOCK | 1578561361 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05312017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03132017 | 03162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170316009 | I4891, I509, N289 | Disorder of kidney and ureter, unspecified | ICD10 | 05312017 | 03132017 | 03162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
