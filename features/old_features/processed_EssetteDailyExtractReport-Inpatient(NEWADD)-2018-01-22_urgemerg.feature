Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-22_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-22_URGEMERG
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
| 01122018 | 2018-01-12T11:58:40+00:00 |  | 000061059-01 | WANDA | EWELL | OHIOHEALTH PHYS GRP | 944179 | MAX H | SAENZ | 1093009987 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112048 | R531 | Weakness | ICD10 | 01222018 | 01122018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01112018 | 2018-01-11T10:38:45+00:00 |  | 000095613-01 | Sammie | Cooper Jr | 24 ON PHYSICIANS PC | 905869 | VENKATESH | CHIRRAVURI | 1073562666 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01112018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111045 | R531 | Weakness | ICD10 | 01222018 | 01112018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01092018 | 2018-01-09T08:43:05+00:00 |  | 000003153-01 | MARGARET | ERVIN | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109040 | K921 | Melena | ICD10 | 01222018 | 01082018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01102018 | 2018-01-10T09:11:32+00:00 |  | 000055867-01 | ROY | ROSS JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110026 | I639 | Cerebral infarction, unspecified | ICD10 | 01222018 | 01092018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01102018 | 2018-01-10T13:44:01+00:00 |  | 000089705-01 | Jack | Reynard Jr | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01092018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110079 | I501, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 01222018 | 01092018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01072018 | 2018-01-07T11:50:20+00:00 |  | 000096058-01 | Robert | Rice | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108009 | N390, R42 | Dizziness and giddiness | ICD10 | 01222018 | 01032018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01102018 | 2018-01-10T17:09:35+00:00 |  | 000110520-01 | RONALD | JONES | MERCY HEALTH PHYSICIANS | 902874 | STEPHEN J | OEHLERS | 1609866490 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111003 | J189, J9601, R748 | Abnormal levels of other serum enzymes | ICD10 | 01222018 | 01102018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01112018 | 2018-01-11T07:17:02+00:00 |  | 000085969-01 | Brynton | Gibson | APOGEE MED GRP OHIO INC | 952313 | VALERIE M | DRABINA DOMBRO | 1982982955 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111007 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 01222018 | 01102018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01122018 | 2018-01-12T14:11:59+00:00 |  | 000111185-01 | Ellen | Griffith | RAUF, ABDUR | 935999 | ABDUR | RAUF | 1548268527 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180112082 | E162 | Hypoglycemia, unspecified | ICD10 | 01222018 | 01112018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01162018 | 2018-01-16T11:04:11+00:00 |  | 000053371-01 | NANCY | HALEY | MERCY HEALTH PHYSICIANS | 902845 | MARVIN M | NARCELLES | 1871583666 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116042 | I509, N390, R079, W06XXXA | Fall from bed, initial encounter | ICD10 | 01222018 | 01152018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01162018 | 2018-01-16T11:12:51+00:00 |  | 000086093-01 | Merrill | Mellott Jr | AAMIR KHAN MD INC | 908411 |  | AAMIR KHAN MD INC | 1265621296 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01152018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116055 | E8770, J90, R0609 | Other forms of dyspnea | ICD10 | 01222018 | 01152018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01182018 | 2018-01-18T15:36:03+00:00 |  | 000073696-01 | Jane | Mcgrew | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 01222018 | Approved | MediGold Classic Preferred | Mail | Inpatient | Inpatient | 09252017 | 10042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119072 | K922, 5789 | 5789.0 | ICD10 | 01222018 | 09252017 | 10042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11282017 | 2017-11-28T15:22:51+00:00 |  | 000077189-01 | Daniel | Collins | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01162018 | 01172018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171130021 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 01222018 | 01162018 | 01172018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12282017 | 2017-12-28T09:52:02+00:00 |  | 000009477-01 | KATHLEEN | NOICE | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12252017 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228042 | R4020 | Unspecified coma | ICD10 | 01222018 | 12252017 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01092018 | 2018-01-09T08:39:49+00:00 |  | 000056081-01 | MARGERY | SPEAKMAN | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109041 | A4189, N390 | Urinary tract infection, site not specified | ICD10 | 01222018 | 01082018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01092018 | 2018-01-09T15:41:56+00:00 |  | 000070087-01 | Dorothy | Skeens | HOSPITALIST MEDICINE PHY | 922163 | ADEDOYIN O | ADETORO | 1215260930 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109144 | J101 | Flu due to oth ident influenza virus w oth resp manifest | ICD10 | 01222018 | 01082018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01102018 | 2018-01-10T11:57:59+00:00 |  | 000024550-01 | BRYAN | LAYNE | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110053 | J189 | Pneumonia, unspecified organism | ICD10 | 01232018 | 01092018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01142018 | 2018-01-14T14:49:23+00:00 |  | 000064501-01 | JANET | HUFFER | SOUND INPATIENT PHYS OF | 904883 | NILESH V | VARMA | 1558303545 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115015 | I639 | Cerebral infarction, unspecified | ICD10 | 01222018 | 01122018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01142018 | 2018-01-14T17:15:17+00:00 |  | 000015297-01 | JUDITH | TERRY | HOSPITALIST MEDICINE PHY | 948369 | YASHASVINI | YASHASVINI | 1740613058 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01132018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115016 | E8809, J441, R0902 | Hypoxemia | ICD10 | 01222018 | 01132018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01152018 | 2018-01-15T09:31:01+00:00 |  | 000038514-01 | JUDITH | CLOKEY | SOUND INPATIENT PHYS OF | 904883 | NILESH V | VARMA | 1558303545 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01132018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115054 | I272, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01222018 | 01132018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01152018 | 2018-01-15T09:43:08+00:00 |  | 000020879-01 | MARGARETTEM | MCDANIEL | SOUND INPATIENT PHYS | 915600 |  | SOUND INPATIENT PHYSICIANS | 1639311996 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01132018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115065 | A419, N390 | Urinary tract infection, site not specified | ICD10 | 01222018 | 01132018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01172018 | 2018-01-17T11:30:35+00:00 |  | 000051189-01 | WANDA | HUNT | LICKING MEM INPATIENT ME | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01162018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117040 | R001 | Bradycardia, unspecified | ICD10 | 01222018 | 01162018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01222018 | 2018-01-22T09:29:32+00:00 |  | 000064594-01 | JOHN | STRETTON JR | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01222018 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 12222017 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122020 | K3184 | Gastroparesis | ICD10 | 01222018 | 12222017 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 11222017 | 2017-11-22T13:06:36+00:00 |  | 000111409-01 | John | Mason Jr | ALLIANCE PHYSICIANS INC | 951469 | AQUEEL H | PABANEY | 1275763591 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122064 | M4186 | Other forms of scoliosis, lumbar region | ICD10 | 01222018 | 01152018 | 01192018 | 22612, 22614, 63047, 63048, 22842, 22853, 61783 | SCAN PROC SPINAL | CPT | 1, 5, 1, 4, 1, 1, 1 | 1, 5, 1, 4, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 01022018 | 2018-01-02T09:57:42+00:00 | 250369718001 | 000056200-01 | DAVID | FLOWERS | CENTRAL OHIO SURG ASSOC | 906771 | KRISTINE D | SLAM | 1396917274 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 01012018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102015 | K631 | Perforation of intestine (nontraumatic) | ICD10 | 01222018 | 01012018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 01022018 | 2018-01-02T14:53:33+00:00 |  | 000039121-01 | Harry | Bales | 24 ON PHYSICIANS PC | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01012018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103048 | I249, I509, J90 | Pleural effusion, not elsewhere classified | ICD10 | 01222018 | 01012018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01032018 | 2018-01-03T11:00:48+00:00 |  | 000071671-01 | Donna | Hilderbran | ALLIANCE PHYSICIANS INC | 901876 | RICHARD H | BYERS JR | 1417956269 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103085 | I509, J90, N186, R0600 | Dyspnea, unspecified | ICD10 | 01222018 | 01022018 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01032018 | 2018-01-03T13:38:29+00:00 |  | 000071097-01 | Lonnie | Bateman Jr | ALLIANCE PHYSICIANS INC | 900988 | PETER M | PAVLINA | 1881692341 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12192017 | 01142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103098 | I519 | Heart disease, unspecified | ICD10 | 01222018 | 12192017 | 01142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 26.0 |
| 01032018 | 2018-01-03T13:44:57+00:00 |  | 000112247-01 | Barbara | Reilly | KIM S HAMELBERG MD DBA T | 938531 |  | KIM S HAMELBERG MD DBA THE SURGEONS | 1710069711 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01172018 | 01182018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103101 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 01222018 | 01172018 | 01182018 | 49653 | LAP VENT/ABD HERN PROC COMP | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 01042018 | 2018-01-04T14:38:18+00:00 |  | 000078984-01 | Gaye | Ferguson | S DAYTON ACUTE CARE CNSL | 901325 | SHAILENDRA | SAWH | 1518952605 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104103 | I959 | Hypotension, unspecified | ICD10 | 01222018 | 01032018 | 01072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01102018 | 2018-01-10T09:11:32+00:00 |  | 000015495-01 | Robert | Cobel | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01092018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110021 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 01222018 | 01092018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01142018 | 2018-01-14T13:45:54+00:00 |  | 000029052-01 | ROBERT | BANCROFT | HOSPITALIST MEDICINE PHY | 939956 | AMY | WANG | 1992949150 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 01122018 | 01162018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115013 | I509 | Heart failure, unspecified | ICD10 | 01222018 | 01122018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01152018 | 2018-01-15T16:50:50+00:00 |  | 000096901-01 | Linda | Oharra | FAIRFIELD HLTHCARE PROFS | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01222018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01132018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116005 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 01222018 | 01132018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01172018 | 2018-01-17T13:15:35+00:00 |  | 000072617-01 | Larry | Riley | SURG ASSOC OF SPRINGFIEL | 948051 | CRYSTAL F | TOTTEN | 1740415736 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 01222018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01162018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117051 | K352 | Acute appendicitis with generalized peritonitis | ICD10 | 01222018 | 01162018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01182018 | 2018-01-18T12:40:48+00:00 |  | 000069562-01 | SANDRA | SLONAKER | MOUNT CARMEL HLTH PRVDRS | 935396 | MARK A | WHITE | 1649279837 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01222018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01172018 | 01182018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118060 | M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 01222018 | 01172018 | 01182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01192018 | 2018-01-19T15:23:10+00:00 |  | 000090450-01 | Miriam | Clements | STEPHEN D HEISE MD & ASS | 947414 | DONALD | STAGGS | 1538425731 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MERCY HOSPITAL FAIRFIELD | 01222018 | Denied | MediGold Southwest OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 01222018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180119086 | M6281, N390 | Urinary tract infection, site not specified | ICD10 | 01222018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
