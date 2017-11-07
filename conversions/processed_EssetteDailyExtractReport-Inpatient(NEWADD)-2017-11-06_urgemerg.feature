Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-06_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-06_URGEMERG
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
| 10192017 | 2017-10-19T16:06:56+00:00 | 025746510-7285 | 000049554-01 | David | Rapp | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11062017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 11032017 | 11042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020086 | M25511 | Pain in right shoulder | ICD10 | 11062017 | 11032017 | 11042017 | 23472, 23420, 23440, 23406 | TENOMYOTOMY, MULT., SAME INCISION | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 10112017 | 2017-10-11T08:28:57+00:00 | 025117876-7285 | 000043108-01 | LARRY | TRIMMER | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11062017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11032017 | 11042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011035 | M4316 | Spondylolisthesis, lumbar region | ICD10 | 11062017 | 11032017 | 11042017 | 22612, 22840, 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11022017 | 2017-11-02T14:46:45+00:00 |  | 000069388-01 | MICKEY | CHALFAN | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11012017 | 11032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102051 | M7041 | Prepatellar bursitis, right knee | ICD10 | 11062017 | 11012017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T08:56:49+00:00 | 265158327303 | 000042609-01 | KAY | ADKINS | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10302017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031013 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 11062017 | 10302017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10132017 | 2017-10-13T08:19:52+00:00 | 253985027286 | 000036428-01 | RONALD | GOODLING | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10132017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013005 | I509, J441, N179 | Acute kidney failure, unspecified | ICD10 | 11062017 | 10132017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 11032017 | 2017-11-03T10:57:54+00:00 | 253094717306 | 000056803-01 | EDWARD | JOHNSON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 11022017 | 11052017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103045 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 11062017 | 11022017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10172017 | 2017-10-17T09:12:34+00:00 | 026376556-7282 | 000030970-01 | GEORGE | BOICHAN | COLON & RECTAL SURG INC | 935327 | JASWANT | MADHAVAN | 1790785897 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018002 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 11062017 | 10312017 | 11032017 | 44205 | LAP COLECTOMY PART W/ILEUM | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10302017 | 2017-10-30T09:37:05+00:00 | 252019997301 | 000012975-01 | CAROL | MUSSELMAN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10282017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030019 | I509 | Heart failure, unspecified | ICD10 | 11062017 | 10282017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10262017 | 2017-10-26T10:42:35+00:00 | 255037337299 | 000060383-01 | DORIS | KAZEE | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10252017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026048 | T819XXA | Unspecified complication of procedure, initial encounter | ICD10 | 11062017 | 10252017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10302017 | 2017-10-30T10:01:02+00:00 |  | 000049915-01 | PHYLLIS | CAMPBELL | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031048 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11062017 | 11032017 | 11052017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10272017 | 2017-10-27T09:40:14+00:00 | 252411557300 | 000000325-01 | DAISY | SCHEERER | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 10272017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027025 | S32509A | Unsp fracture of unsp pubis, init encntr for closed fracture | ICD10 | 11062017 | 10272017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 11062017 | 2017-11-06T08:45:18+00:00 | 025245148-7305 | 000019375-01 | RICHARD | TRELEASE | ACUTE CARE SURGEONS LLC | 936806 | KIM S | HAMELBERG | 1881699759 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11022017 | 11032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106005 | K4020 | Bi inguinal hernia, w/o obst or gangrene, not spcf as recur | ICD10 | 11062017 | 11022017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10242017 | 2017-10-24T09:55:31+00:00 |  | 000047986-01 | SALLY | CHACEY | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024060 | C541 | Malignant neoplasm of endometrium | ICD10 | 11062017 | 11022017 | 11032017 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11012017 | 2017-11-01T09:08:49+00:00 | 258975767304 | 000093323-01 | Roger | Dickerson | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101009 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11062017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10102017 | 2017-10-10T10:50:54+00:00 |  | 000065094-01 | ALLAN | SHERMAN JR | ALLIANCE PHYSICIANS INC | 911165 | DANIEL J | DUNAWAY | 1669483152 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171010040 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11062017 | 11022017 | 11032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10112017 | 2017-10-11T13:13:43+00:00 |  | 000034694-01 | WILLIAM | FOSTER | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011069 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 11062017 | 11022017 | 11032017 | 34802, 34812, 34825, 34826 | ENDOVASC EXTEN PROSTH, ADDL | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 10302017 | 2017-10-30T10:43:44+00:00 |  | 000108654-01 | ROGER | SALTS | SOUND KENWOOD HSPISTS OF | 925439 | DAVID K | MCKEEN | 1902991912 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10292017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030079 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11062017 | 10292017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T09:30:51+00:00 |  | 000074071-01 | Ruth | Harper | MOUNT CARMEL HLTH PRVDRS | 935536 | DOUGLAS D | MASSICK | 1881666287 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Southeast OH Classic Preferred | EMR | EIS | Inpatient | 11022017 | 11032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106015 | E210 | Primary hyperparathyroidism | ICD10 | 11062017 | 11022017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09272017 | 2017-09-27T13:27:04+00:00 | 017962459-7263 | 000109025-01 | Donald | Thomas | ORTHOPEDIC ONE INC | 936932 | CHRISTOPHER | HOLZAEPFEL | 1770695199 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170928018 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11062017 | 11012017 | 11032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10232017 | 2017-10-23T14:17:24+00:00 |  | 000107029-01 | Allan | Moore | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023138 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11062017 | 11012017 | 11022017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10312017 | 2017-10-31T10:22:57+00:00 |  | 000051208-01 | DIANE | PRICE | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031035 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 11062017 | 10302017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11032017 | 2017-11-03T09:39:52+00:00 | 250497507306 | 000018170-01 | MARYANN | HEALY | MOUNT CARMEL HLTH PRVDRS | 936680 | JENNIFER A | GIERSCH | 1881631018 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11022017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103020 | L03818 | Cellulitis of other sites | ICD10 | 11062017 | 11022017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11022017 | 2017-11-02T15:32:06+00:00 |  | 000091661-01 | Mildred | Adkins | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102056 | J810, J90, M7989, N183, R0600 | Dyspnea, unspecified | ICD10 | 11062017 | 11022017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T14:11:28+00:00 |  | 000100035-01 | Mary | Tingley | FAM PHYS OF SPRINGFIELD | 907238 | MICHAEL S | MCKEE | 1124043625 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101052 | R109 | Unspecified abdominal pain | ICD10 | 11062017 | 10312017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11012017 | 2017-11-01T15:40:02+00:00 |  | 000100477-01 | James | Paul | COMMUNITY HSPIST LLC | 932655 | ABDULMAJID | ADAM | 1528362258 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101070 | N179, S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 11062017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10312017 | 2017-10-31T13:47:31+00:00 |  | 000115640-01 | Margaret | Barrow | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 11062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101021 | E8352 | Hypercalcemia | ICD10 | 11062017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T10:05:53+00:00 | 250586877303 | 000028829-01 | JOHN | JOHNSON | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10302017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031029 | D649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11062017 | 10302017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10162017 | 2017-10-16T07:58:00+00:00 | 016532544-7282 | 000077573-01 | Constance | Shaw | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11022017 | 11032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017006 | C541 | Malignant neoplasm of endometrium | ICD10 | 11062017 | 11022017 | 11032017 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11022017 | 2017-11-02T09:52:51+00:00 | 175263657305 | 000080711-01 | Lana | Mizer | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11012017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102021 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 11062017 | 11012017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10192017 | 2017-10-19T10:25:41+00:00 | 026573741-7292 | 000107050-01 | Nina | Neubauer | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019053 | I739 | Peripheral vascular disease, unspecified | ICD10 | 11062017 | 11012017 | 11032017 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10272017 | 2017-10-27T09:46:45+00:00 | 251079057299 | 000050285-01 | GWENDOLYN | SALYERS | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10262017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027030 | K5660 | Unspecified intestinal obstruction | ICD10 | 11062017 | 10262017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11012017 | 2017-11-01T09:23:12+00:00 | 257036327304 | 000116215-01 | GLEN | SIDWELL JR | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101012 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 11062017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T17:15:50+00:00 |  | 000020440-01 | ANTHONY | SPEZZALLI | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020070 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11062017 | 10312017 | 11032017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 10252017 | 2017-10-25T16:43:09+00:00 |  | 000115312-01 | HENRY | HATCHER JR | ALLIANCE PHYSICIANS INC | 904172 | DOUGLAS B | PAUL | 1851381362 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10242017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027039 | M6281, S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 11062017 | 10242017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 11062017 | 2017-11-06T11:38:56+00:00 |  | 000104310-01 | Roynald | Walters | CENTRAL OHIO SURG ASSOC | 932260 | IRINA C | ARP | 1558625780 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 11032017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106056 | K5669 | Other intestinal obstruction | ICD10 | 11062017 | 11032017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T09:43:26+00:00 | 267160787301 | 000045419-01 | EARL | WILLIAMS | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10292017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030023 | I509, J189, M6282, N179 | Acute kidney failure, unspecified | ICD10 | 11062017 | 10292017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10112017 | 2017-10-11T08:46:09+00:00 |  | 000092056-01 | Harold | Wuebben | DAYTON SURGEONS INC | 923165 | JULIE | GILKESON | 1558544270 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10142017 | 10192017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011030 | I714, Z98890, T82898A, Z8679 | Personal history of other diseases of the circulatory system | ICD10 | 11062017 | 10142017 | 10192017 | 35081, 75630 | AORTOG ABD & BIL-LOWER EXTR. SUP&IN | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 11032017 | 2017-11-03T06:59:46+00:00 |  | 000048989-01 | RICHARD | GRIMM | OSU INTERNAL MED LLC | 932883 | CRYSTAL M | KELLY | 1679899066 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103035 | R069, R1310, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 11062017 | 11022017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10122017 | 2017-10-12T10:24:09+00:00 |  | 000046226-01 | DEBRA | DRUMM | OSU SURGERY LLC | 912283 | JUAN A | CRESTANELLO | 1477505048 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10232017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016113 | I340, I351, I480 | Paroxysmal atrial fibrillation | ICD10 | 11062017 | 10232017 | 11042017 | 33416, 33430, 33405, 33863, 75565 | CARD MRI VEL FLW MAP ADD-ON | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 13, 13, 13, 13, 13 | CPT | C4 |  |  |  | 4.0 |
| 11032017 | 2017-11-03T09:51:01+00:00 |  | 000111089-01 | Donna | Hartman | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 11062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103025 | E875, I469 | Cardiac arrest, cause unspecified | ICD10 | 11062017 | 11012017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10312017 | 2017-10-31T12:29:29+00:00 |  | 000090547-01 | Evelyn | Childress | MUSKINGUM VALLEY HLTH CT | 923156 | GARY J | CARVER | 1982781563 | PRIME HEALTHCARE FOUNDAT | 950913 | 1013468172 | COSHOCTON REGIONAL MEDICAL CENTER | 1013468172 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON REGIONAL MEDICAL CENTER | 11062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031079 | R55 | Syncope and collapse | ICD10 | 11062017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11032017 | 2017-11-03T10:20:36+00:00 | 265110217306 | 000042634-01 | MARION | DEVENEY | CEN OH PRIMARY CARE SPEC | 935053 | IAN J | WILSON | 1760598239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103041 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 11062017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11032017 | 2017-11-03T09:32:48+00:00 | 180134457306 | 000002524-01 | JOHN | DYE | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103016 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 11062017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09012017 | 2017-09-01T17:06:48+00:00 | 017826821-7243 | 000089959-01 | John | Gleason | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905065 | M4806 | Spinal stenosis, lumbar region | ICD10 | 11062017 | 11032017 | 11062017 | 63047, 63048, 22633, 22634, 22853, 22842, 20936, 20930, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 3, 3, 1, 1, 1, 1 | 1, 1, 1, 3, 3, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 10252017 | 2017-10-25T09:58:42+00:00 |  | 000100077-01 | Virginia | Cushard | SOUND PHYSICIANS OF OHI0 | 947550 | ISAIAH | FRY | 1144658162 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 11062017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10242017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025037 | A419, K529, N390 | Urinary tract infection, site not specified | ICD10 | 11062017 | 10242017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T16:32:45+00:00 |  | 000088584-01 | Roger | Boles | S DAYTON ACUTE CARE CNSL | 932707 | VINAY K | LINGABATHULA | 1578812129 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 11062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10272017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031040 | R410 | Disorientation, unspecified | ICD10 | 11062017 | 10272017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 11022017 | 2017-11-02T09:48:45+00:00 | 258870087305 | 000060428-01 | ALBERT | KRAMER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11012017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102020 | N179 | Acute kidney failure, unspecified | ICD10 | 11062017 | 11012017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11032017 | 2017-11-03T08:46:15+00:00 | 252233867307 | 000030955-01 | ROBERT | REISCH | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11062017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11032017 | 11052017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103018 | A419 | Sepsis, unspecified organism | ICD10 | 11062017 | 11032017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
