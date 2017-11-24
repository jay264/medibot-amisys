Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-22_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-22_URGEMERG
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
| 11142017 | 2017-11-14T09:24:53+00:00 |  | 000090403-01 | Nancy | Voelkl | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11212017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114098 | E871, R791 | Abnormal coagulation profile | ICD10 | 11212017 | 11132017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T11:15:53+00:00 | 259043067317 | 000002044-01 | MELVIN | SCHELL | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11212017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11122017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113045 | M549 | Dorsalgia, unspecified | ICD10 | 11212017 | 11122017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11162017 | 2017-11-16T11:26:41+00:00 |  | 000105646-01 | James | Ruble | UNIVERSITY OF CINCINNATI | 942894 | IMRAN | ARIF | 1154380970 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116058 | R0600 | Dyspnea, unspecified | ICD10 | 11222017 | 11152017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11202017 | 2017-11-20T06:54:17+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 948578 | HAREEPRASAD R | VONGOORU | 1407045693 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 11222017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120041 | R197 | Diarrhea, unspecified | ICD10 | 11222017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11142017 | 2017-11-14T09:53:48+00:00 |  | 000024925-01 | MARILYN | HOCKMAN | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11112017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114103 | J189, R0902 | Hypoxemia | ICD10 | 11222017 | 11112017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11212017 | 2017-11-21T07:42:23+00:00 |  | 000088560-01 | Carol | Ramsey | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11192017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121011 | R6889 | Other general symptoms and signs | ICD10 | 11222017 | 11192017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11172017 | 2017-11-17T16:28:06+00:00 | 025067518-7321 | 000001616-01 | PATRICIA | LEDFORD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 11172017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117086 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11222017 | 11172017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11222017 | 2017-11-22T09:14:08+00:00 | 026614547-7290 | 000084285-01 | Joy | Bachus | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | MOUNT CARMEL HLTH PRVDRS | 904976 | 1134154750 | WILLIAM R ZERICK | 1568469609 | Inpatient | IP | Concurrent Review | CONC | WILLIAM R | ZERICK | 11222017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11202017 | 11212017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122012 | M5136 | Other intervertebral disc degeneration, lumbar region | ICD10 | 11222017 | 11202017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11162017 | 2017-11-16T11:16:09+00:00 |  | 000102277-01 | JODI | PATTERSON | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 11222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116062 | R110 | Nausea | ICD10 | 11222017 | 11152017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T14:58:14+00:00 |  | 000110694-01 | Margaret | Good | ADENA HEALTH SYSTEMS | 939543 | DANIEL J | IANNI | 1295816288 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11142017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102014 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 11222017 | 11142017 | 11172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11162017 | 2017-11-16T12:51:01+00:00 |  | 000097567-01 | Paula | White | TRIHEALTH G LLC | 950686 | THOMAS | GETREU | 1649513185 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 11222017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116075 | R739, S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 11222017 | 11142017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11212017 | 2017-11-21T10:11:39+00:00 |  | 000092516-01 | Doris | Applin | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11182017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121063 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 11222017 | 11182017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11212017 | 2017-11-21T10:04:45+00:00 |  | 000069945-01 | Cindy | Shaffer | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11172017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121062 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11222017 | 11172017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11192017 | 2017-11-19T11:05:55+00:00 |  | 000088156-01 | Helen | Haskins | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11182017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120020 | N3001, R443, R930 | Abnormal findings on dx imaging of skull and head, NEC | ICD10 | 11222017 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11092017 | 2017-11-09T09:35:57+00:00 |  | 000110065-01 | WILLIAM | SICKE | ALLIANCE PHYSICIANS INC | 913588 | ARAM M | DONIGIAN | 1033120621 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109055 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11222017 | 11202017 | 11212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11202017 | 2017-11-20T11:07:00+00:00 |  | 000105915-01 | Paul | Harstine | CNP OPERATING CO LLC | 913181 | JEROLD A | MEYER | 1821093881 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 11222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11192017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120100 | I4891, J189, N390, R6520 | Severe sepsis without septic shock | ICD10 | 11222017 | 11192017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11142017 | 2017-11-14T15:39:43+00:00 |  | 000026269-01 | Bertha | Goldfarb | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115054 | R0902 | Hypoxemia | ICD10 | 11222017 | 11132017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11162017 | 2017-11-16T11:28:47+00:00 |  | 000063538-01 | Sandra | Callahan | FAIRFIELD HLTHCARE PROFS | 947951 | JOSHUA R | THOMAS | 1366769879 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116051 | I472, K5900, R0609, R5383 | Other fatigue | ICD10 | 11222017 | 11162017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T13:03:21+00:00 |  | 000115630-01 | Jeffery | Wright | RIVER VALLEY ORTHOS & SP | 909075 | DAVID M | VAZIRI | 1144211137 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113079 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 11222017 | 11152017 | 11162017 | 27235 | PIN IN SITU, IMPCTD FX PROX FEMUR | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11152017 | 2017-11-15T14:44:13+00:00 |  | 000062229-01 | KAY | DENNIS | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116023 | I2699, I2720 | I2720 | ICD10 | 11222017 | 11142017 | 11182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11162017 | 2017-11-16T13:13:27+00:00 |  | 000108329-01 | CAROL | KENNEDY | MAD RIVER INTERNAL MED | 908503 | GREGG S | FULMER | 1396781944 | MARY RUTAN HOSPITAL | 936493 | 1548254931 | MARY RUTAN HOSPITAL | 1548254931 | Inpatient | IP | Concurrent Review | CONC |  | MARY RUTAN HOSPITAL | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116076 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11222017 | 11152017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11022017 | 2017-11-02T07:46:58+00:00 |  | 000014484-01 | CHARLES | BOWERSOCK | FAIRFIELD INTERNAL MED | 937245 | CHRISTOPHER S | NICKISON | 1962481465 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102003 | R042 | Hemoptysis | ICD10 | 11222017 | 11012017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 11202017 | 2017-11-20T07:48:39+00:00 |  | 000081323-01 | Ruth | Cashdollar | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11182017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120045 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11222017 | 11182017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11162017 | 2017-11-16T10:00:30+00:00 |  | 000100104-01 | Ruth | Brinkel | S A GABRIEL DO INC | 912194 | ANDREW H | GABRIEL | 1205990033 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11172017 | 11202017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116021 | D374 | Neoplasm of uncertain behavior of colon | ICD10 | 11222017 | 11172017 | 11202017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11202017 | 2017-11-20T11:16:12+00:00 | 262178987323 | 000018569-01 | Charles | Dodge | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11222017 | Approved | MediGold Essential Care | Reports | ACO - Atrial Fib | Inpatient | 11192017 | 11222017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120056 | I4891 | Unspecified atrial fibrillation | ICD10 | 11222017 | 11192017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11202017 | 2017-11-20T14:57:56+00:00 | 025861003-7317 | 000070260-01 | Sandra | McInturf | ACUTE CARE SURGEONS LLC | 936235 | MARK | DAVANZO | 1689618118 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11212017 | 11222017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120116 | C50411 | Malig neoplm of upper-outer quadrant of right female breast | ICD10 | 11222017 | 11212017 | 11222017 | 19303, 38900 | IO MAP OF SENT LYMPH NODE | CPT | 2, 1 | 2, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11152017 | 2017-11-15T09:53:00+00:00 | 250948067319 | 000009747-01 | SANDRA | ROSSIO | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11152017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115021 | I509, J209, J90 | Pleural effusion, not elsewhere classified | ICD10 | 11222017 | 11152017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11202017 | 2017-11-20T15:22:41+00:00 |  | 000035137-01 | JOSEPH | HELBER | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Pre-Service | PRE |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 11222017 | Denied | MediGold Classic Preferred | Fax | Services Continued at Higher Level (LTACH) | Inpatient | 11222017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171121039 | J9600, L02419 | Cutaneous abscess of limb, unspecified | ICD10 | 11222017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11212017 | 2017-11-21T10:17:27+00:00 |  | 000111675-01 | Donna | Shaffer | 201 MEDICINE INC | 945993 | JASON W | BERTRAM | 1689974644 | 201 MEDICINE INC | 945993 | 1891803169 | JASON W BERTRAM | 1689974644 | Inpatient | IP | Concurrent Review | CONC | JASON W | BERTRAM | 11222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11212017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121041 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11222017 | 11212017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11152017 | 2017-11-15T15:06:39+00:00 |  | 000092361-01 | Mary | Haggard | APOGEE MED GRP OHIO INC | 945887 | HIDETAKA | KITAZONO | 1033316104 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11152017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116026 | R509 | Fever, unspecified | ICD10 | 11222017 | 11152017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11142017 | 2017-11-14T14:43:06+00:00 |  | 000103311-01 | Daryl | Sheeley | APOGEE MED GRP OHIO INC | 945887 | HIDETAKA | KITAZONO | 1033316104 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115046 | J90, R000, R0600, R079, R0902 | Hypoxemia | ICD10 | 11222017 | 11132017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11152017 | 2017-11-15T15:14:02+00:00 |  | 000112132-01 | TOMMY | NEWLAND | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116034 | J810, J9601, R0603 | R0603 | ICD10 | 11222017 | 11142017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11162017 | 2017-11-16T15:15:02+00:00 | 025893957-7297 | 000034728-01 | JAMES | VITITOE | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11222017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11212017 | 12222017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117025 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 11222017 | 11212017 | 11222017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  |  | 1.0 |
| 11172017 | 2017-11-17T14:00:25+00:00 |  | 000024186-01 | DONALD | SANDER | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 11222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117071 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11222017 | 11162017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11092017 | 2017-11-09T14:46:23+00:00 |  | 000030041-01 | BETTY | DAVIS | MOUNT CARMEL HLTH PRVDRS | 910451 | MICHAEL G | MONCMAN | 1114927571 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11212017 | 11222017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109077 | M48062 | M48062 | ICD10 | 11222017 | 11212017 | 11222017 | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11192017 | 2017-11-19T20:48:55+00:00 |  | 000070021-01 | Marion | Mcdade | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 11192017 | 11222017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171119008 | I4891, N410 | Acute prostatitis | ICD10 | 11222017 | 11192017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11172017 | 2017-11-17T11:48:17+00:00 |  | 000029283-01 | LADONNA | DOLL | MOUNT CARMEL HLTH PRVDRS | 935747 | RENEE | CAPUTO | 1558367862 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11222017 | Approved | TRINITY HEALTH | Fax | EIS | Inpatient | 11202017 | 11222017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117040 | N393, N813 | Complete uterovaginal prolapse | ICD10 | 11222017 | 11202017 | 11222017 | 57280, 57288 | SLING OPERATION FOR STRESS INCONT | CPT | 1, 1 | 1, 1 | Approved, Approved | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 11202017 | 2017-11-20T10:03:41+00:00 |  | 000111845-01 | Mary | Curtis | 24 ON PHYSICIANS PC | 935143 | JAMES J | HOMSY | 1871641647 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11222017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11172017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120094 | R079 | Chest pain, unspecified | ICD10 | 11222017 | 11172017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11202017 | 2017-11-20T10:58:23+00:00 |  | 000079647-01 | Cynthia | Roof | MUSKINGUM VALLEY HLTH CT | 945633 | MICHELLE | GARBER | 1235596669 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 11222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11192017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120077 | R112, R42 | Dizziness and giddiness | ICD10 | 11222017 | 11192017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10132017 | 2017-10-13T14:21:45+00:00 |  | 000030283-01 | MARTHA | GREGORY | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11212017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016086 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11222017 | 11212017 | 11222017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11192017 | 2017-11-19T14:54:08+00:00 |  | 000091496-01 | Bobbie | Thomas | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11222017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 11182017 | 11222017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171119002 | R0602 | Shortness of breath | ICD10 | 11222017 | 11182017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
