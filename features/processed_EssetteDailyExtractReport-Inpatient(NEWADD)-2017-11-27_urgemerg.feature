Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-27_URGEMERG
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
| 11152017 | 2017-11-15T16:38:29+00:00 |  | 000043895-01 | RICHARD | BROWN | HAQUE, MAX M | 904471 | MAX M | HAQUE | 1700884111 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 11262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11142017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116042 | F39, R45850 | Homicidal ideations | ICD10 | 11262017 | 11142017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11092017 | 2017-11-09T14:35:44+00:00 |  | 000066807-01 | DONALD | KING | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 11262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110015 | F29, F329 | Major depressive disorder, single episode, unspecified | ICD10 | 11262017 | 11082017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11132017 | 2017-11-13T15:45:15+00:00 |  | 000109447-01 | Faith | Michaels | SURG ASSOC OF GREENE COU | 903547 | CHRISTOPHER K | MADISON | 1326015504 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 11262017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11122017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114087 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 11262017 | 11122017 | 11172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10252017 | 2017-10-25T12:48:22+00:00 |  | 000114924-01 | Nancy | Hedrick | KNOX COMMUNITY HSP PHYS | 928353 | JARRETT B | HELMING | 1891995072 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11072017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025071 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11262017 | 11072017 | 11162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 10 | CPT | C4 |  |  |  | 9.0 |
| 11132017 | 2017-11-13T18:08:25+00:00 |  | 000098623-01 | Charlene | Smith | KETTERING MEDICAL CENTER SYCAMORE | 905903 |  | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11112017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114095 | R000, R0600 | Dyspnea, unspecified | ICD10 | 11272017 | 11112017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11222017 | 2017-11-22T16:15:59+00:00 |  | 000043506-01 | CAROLYN | EDSTROM | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122085 | S82201D | Unsp fx shaft of right tibia, subs for clos fx w routn heal | ICD10 | 11272017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11152017 | 2017-11-15T08:56:27+00:00 | 255296897318 | 000033627-01 | DUANE | BARNES | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11142017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115007 | I82401 | Acute embolism and thombos unsp deep veins of r low extrem | ICD10 | 11272017 | 11142017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 11242017 | 2017-11-24T07:31:07+00:00 |  | 000062898-01 | PAMELA | SKEESE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11232017 | 11262017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127001 | J189 | Pneumonia, unspecified organism | ICD10 | 11272017 | 11232017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11212017 | 2017-11-21T15:50:10+00:00 | 257070237325 | 000038520-01 | JACK | SMITH | SOUND PHYSICIANS OF OHI0 | 944089 | SHANTI | SUBBARAO | 1487910295 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11212017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121082 | R109 | Unspecified abdominal pain | ICD10 | 11272017 | 11212017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11222017 | 2017-11-22T10:49:13+00:00 | 256768097325 | 000034905-01 | BARBARA | FREEMAN | SOUND PHYSICIANS OF OHI0 | 948369 | YASHASVINI | YASHASVINI | 1740613058 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11212017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122047 | R197 | Diarrhea, unspecified | ICD10 | 11272017 | 11212017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11082017 | 2017-11-08T09:36:52+00:00 |  | 000053245-01 | ELIZABETH | KIRKPATRICK | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11102017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108028 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 11272017 | 11102017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 11192017 | 2017-11-19T11:11:47+00:00 |  | 000099536-01 | Lonnie | Fannin | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11172017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120021 | J189, J9692, R531, R7989, T50904A, Z859 | Personal history of malignant neoplasm, unspecified | ICD10 | 11272017 | 11172017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11232017 | 2017-11-23T07:26:38+00:00 |  | 000070465-01 | Helen | Lively | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 11222017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171123005 | S329XXA | Fracture of unsp parts of lumbosacral spine and pelvis, init | ICD10 | 11272017 | 11222017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11202017 | 2017-11-20T12:46:43+00:00 | 025417850-7324 | 000056296-01 | PAULA | SHERMAN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11272017 | Approved | MediGold Essential Care | EMR | Secondary Only | Inpatient | 11202017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120065 | G309 | Alzheimer's disease, unspecified | ICD10 | 11272017 | 11202017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11212017 | 2017-11-21T18:35:05+00:00 | 025858352-7325 | 000016955-01 | SHIRLEY | MUSSETTER | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 11212017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121085 | K7460 | Unspecified cirrhosis of liver | ICD10 | 11272017 | 11212017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11212017 | 2017-11-21T11:13:02+00:00 |  | 000078129-01 | William | Foraker | BLANCHARD VALLEY HSP 150 | 914043 | YASER | HAMWI | 1114049475 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121053 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 11272017 | 11202017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11212017 | 2017-11-21T08:29:39+00:00 |  | 000105739-01 | Jackie | Birkhimer | GENESIS HLTHCARE SYSTEM | 936421 |  | GENESIS HEALTHCARE SYSTEM | 1598868655 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121018 | I4892 | Unspecified atrial flutter | ICD10 | 11272017 | 11202017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10252017 | 2017-10-25T16:04:16+00:00 |  | 000112631-01 | Theodritte | Dickerson | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10242017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026040 | R531 | Weakness | ICD10 | 11272017 | 10242017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10272017 | 2017-10-27T16:20:50+00:00 |  | 000027519-01 | RONALD | GIESECK | ORTHO TRAUMA SRVS LTD | 911031 | JOAQUIN | CASTANEDA | 1801932447 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10262017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030006 | Z7901 | Long term (current) use of anticoagulants | ICD10 | 11272017 | 10262017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11212017 | 2017-11-21T18:32:20+00:00 |  | 000074670-01 | Richard | Grant | SOMC MED CARE FOUNDATION | 923188 | SARA C | ROCHESTER | 1144247172 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122063 | T1491 | Suicide attempt | ICD10 | 11272017 | 11202017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T12:02:59+00:00 |  | 000086537-01 | Dollie | Coburn | OHIOHEALTH PHYS GRP | 936201 | RICHARD R | COSTIN | 1699789388 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031082 | R58 | Hemorrhage, not elsewhere classified | ICD10 | 11272017 | 10302017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11202017 | 2017-11-20T10:03:19+00:00 |  | 000102145-01 | Betsy | Rupe | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11192017 | 11252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120091 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11272017 | 11192017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11142017 | 2017-11-14T09:34:53+00:00 | 263498197317 | 000087949-01 | Marlin | Reese | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11132017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114021 | R079 | Chest pain, unspecified | ICD10 | 11272017 | 11132017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 11202017 | 2017-11-20T10:03:18+00:00 |  | 000079396-01 | Sharon | Teal | CAMDEN CLARK PHYS CORPOR | 931289 | JUSTIN M | VARGHESE | 1003136367 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11192017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171120090 | N390 | Urinary tract infection, site not specified | ICD10 | 11272017 | 11192017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11032017 | 2017-11-03T12:17:02+00:00 |  | 000032452-01 | RODERICK | GLENN | COMMUNITY HSPIST LLC | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103079 | E875 | Hyperkalemia | ICD10 | 11272017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11082017 | 2017-11-08T15:34:52+00:00 |  | 000097271-01 | Paul | Brown | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109006 | T1490XA | T1490XA | ICD10 | 11272017 | 11082017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11072017 | 2017-11-07T14:52:43+00:00 |  | 000098521-01 | Melinda | Sparkman | ADENA MEDICAL GROUP LLC | 910639 | SUNG H | YI | 1265642961 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107112 | E8352 | Hypercalcemia | ICD10 | 11272017 | 11062017 | 11092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T12:17:59+00:00 |  | 000111065-01 | Joseph | Sawyer | COPC CENTRAL OHIO PRIMAR | 925749 | RENEE M | SCHWADERER | 1750512778 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10282017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030061 | J939 | Pneumothorax, unspecified | ICD10 | 11272017 | 10282017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11092017 | 2017-11-09T11:05:43+00:00 |  | 000076438-01 | Larry | Trigg | DELPHI INTENSIVISTS CNSL | 939540 | LUCIA | CHOWDHURY | 1851346647 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109061 | E875 | Hyperkalemia | ICD10 | 11272017 | 11082017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11162017 | 2017-11-16T09:01:15+00:00 |  | 000085744-01 | Patsy | Denman | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116053 | I4891 | Unspecified atrial fibrillation | ICD10 | 11272017 | 11152017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11062017 | 2017-11-06T16:44:40+00:00 |  | 000030722-01 | Lena | Dillon | ADENA MEDICAL GROUP LLC | 902458 | WILBUR E | SEVER III | 1780603282 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11152017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107003 | C187, C221 | Intrahepatic bile duct carcinoma | ICD10 | 11272017 | 11152017 | 11212017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 11022017 | 2017-11-02T14:47:29+00:00 |  | 000097739-01 | Ruth | Davis | MERCY HEALTH PHYSICIANS | 921019 | MARK | POYNTER | 1659358109 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 11272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11072017 | 11222017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102053 | C189, K56699 | K56699 | ICD10 | 11272017 | 11072017 | 11222017 | 44140 | COLECTOMY, PARTIAL, C ANASTOMOSIS | CPT | 1 | 1 | Approved | 16 | CPT | C4 |  |  |  | 1.0 |
| 11052017 | 2017-11-05T13:38:37+00:00 |  | 000073550-01 | Leota | Shook | OHIOHEALTH PHYS GRP | 936233 | NICHOLAS J | DAVAKIS | 1730120205 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106057 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11272017 | 11022017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11162017 | 2017-11-16T12:23:11+00:00 |  | 000066116-01 | JANET | FLEISHER | OH ORTHO CTR OF EXCELLEN | 906388 | BRIAN J | TSCHOLL | 1558560292 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11152017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116066 | L0291 | Cutaneous abscess, unspecified | ICD10 | 11272017 | 11152017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11212017 | 2017-11-21T11:36:10+00:00 |  | 000007018-01 | EUGENE | MACE | SOUND PHYSICIANS OF OHI0 | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171121056 | M6281, N390 | Urinary tract infection, site not specified | ICD10 | 11272017 | 11202017 | 11242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09272017 | 2017-09-27T10:38:27+00:00 |  | 000000705-01 | Gloria | Ross | HDH PROFESSIONAL SERV CO | 908708 | RAMESH | SHIVANI | 1477545390 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09272017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927044 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 11272017 | 09272017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 11102017 | 2017-11-10T14:59:28+00:00 |  | 000089587-01 | Lois | Masters | OHIOHEALTH PHYS GRP | 946385 | KESHAV | DESHPANDE | 1285958611 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11102017 | 11202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110072 | S0990XA, S12101A, S52609A, S82843A | Displaced bimalleolar fracture of unsp lower leg, init | ICD10 | 11272017 | 11102017 | 11202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11132017 | 2017-11-13T14:23:50+00:00 |  | 000018244-01 | SUE | STEVENSON | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11122017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114066 | N200 | Calculus of kidney | ICD10 | 11272017 | 11122017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11172017 | 2017-11-17T09:33:16+00:00 |  | 000082562-01 | EDWARD | SCAGGS | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11202017 | 11212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117046 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 11272017 | 11202017 | 11212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11172017 | 2017-11-17T15:02:10+00:00 |  | 000047403-01 | PHYLLIS | GRUBB | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11162017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171117081 | S72011A | Unsp intracapsular fracture of right femur, init for clos fx | ICD10 | 11272017 | 11162017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11142017 | 2017-11-14T10:08:58+00:00 |  | 000114032-01 | Roy | Bradley | OSU GENERAL INTL MED LLC | 942452 | JARED M | MOORE | 1821259771 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11272017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 11132017 | 11222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115010 | I82409 | Acute embolism and thombos unsp deep vn unsp lower extremity | ICD10 | 11272017 | 11132017 | 11222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11092017 | 2017-11-09T11:13:33+00:00 |  | 000113609-01 | Michael | Smallwood | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109044 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 11272017 | 11082017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11272017 | 2017-11-27T15:07:57+00:00 | 025480030-7326 | 000002849-01 | MICHAEL | JONES | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | EMR | ACO - CHF | Inpatient | 11222017 | 11272017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127124 | I509 | Heart failure, unspecified | ICD10 | 11272017 | 11222017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11272017 | 2017-11-27T10:17:10+00:00 | 250951137327 | 000004057-01 | BERNARD | ROYSTER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11232017 | 11272017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171127051 | J159 | Unspecified bacterial pneumonia | ICD10 | 11272017 | 11232017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T10:06:23+00:00 |  | 000086463-01 | Doris | Agan | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11142017 | 11262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113036 | I639 | Cerebral infarction, unspecified | ICD10 | 11272017 | 11142017 | 11262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 11092017 | 2017-11-09T08:57:50+00:00 |  | 000027321-01 | NOEL | HARRIS | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11272017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11102017 | 11232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171109049 | I7410 | Embolism and thrombosis of unspecified parts of aorta | ICD10 | 11272017 | 11102017 | 11232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 11252017 | 2017-11-25T12:25:57+00:00 |  | 000099370-01 | Frederick | Miller | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11242017 | 11272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171125006 | K8000 | Calculus of gallbladder w acute cholecyst w/o obstruction | ICD10 | 11272017 | 11242017 | 11272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
