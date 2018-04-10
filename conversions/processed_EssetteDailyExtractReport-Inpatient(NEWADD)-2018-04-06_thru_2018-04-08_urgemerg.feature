Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-06_thru_2018-04-08_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-06_thru_2018-04-08_URGEMERG
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
| 01152018 | 2018-01-15T07:00:21+00:00 |  | 000086016-01 | Eunice | Crawford | HOSPITAL MEDICINE SERVIC | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01122018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115023 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 04062018 | 01122018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03092018 | 2018-03-09T15:10:18+00:00 |  | 000120386-01 | Carol | Roberts | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04022018 | 04052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309068 | C482 | Malignant neoplasm of peritoneum, unspecified | ICD10 | 04062018 | 04022018 | 04052018 | 58953, 49255 | OMENTECY, EPIPLOECY, RES OMENTUM | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 03232018 | 2018-03-23T10:57:32+00:00 |  | 000037702-01 | ROSE | WOLFE | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04042018 | 04052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323026 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 04062018 | 04042018 | 04052018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03262018 | 2018-03-26T16:30:02+00:00 |  | 000023696-01 | BETTY | KOON | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04042018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327008 | I340, Z98890 | OTHER SPECIFIED POSTPROCEDURAL STATES | ICD10 | 04062018 | 04042018 | 04052018 | 33418 | REPAIR TCAT MITRAL VALVE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03142018 | 2018-03-14T10:37:48+00:00 |  | 000094150-01 | Guy | Swisher | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04062018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03142018 | 03152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314032 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04062018 | 03142018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03202018 | 2018-03-20T16:22:12+00:00 |  | 000081229-01 | JOHN | MILLER | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04062018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04032018 | 04052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321022 | C480 | Malignant neoplasm of retroperitoneum | ICD10 | 04062018 | 04032018 | 04052018 | 44625 | CLSR ENTEROSTOMY C RSCTN & ANAST. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03232018 | 2018-03-23T10:42:36+00:00 |  | 000003211-01 | Billy | Waller | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04042018 | 04052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323020 | M1611, T84498A | Mech compl of internal orth devices, implnt and grafts, init | ICD10 | 04062018 | 04042018 | 04052018 | 27134 | REVSN TOT HIP ARTHPLSTY/BOTH COMNTS | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03262018 | 2018-03-26T09:43:44+00:00 |  | 000076428-01 | Geraldine | Burnworth | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03242018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180330164231.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326081 | J181, N390, R509 | Fever, unspecified | ICD10 | 04062018 | 03242018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03272018 | 2018-03-27T16:24:00+00:00 |  | 000009802-01 | PHYLLIS | CLAY | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328053 | D6489, I4891, I509, I9788 | Oth intraoperative complications of the circ sys, NEC | ICD10 | 04062018 | 03262018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03272018 | 2018-03-27T16:12:54+00:00 |  | 000051593-01 | ANDREW | JONES | OSU INTERNAL MED LLC | 928684 | BHAVANA | BHATNAGAR | 1154598498 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04062018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 03292018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328062 | C9100 | Acute lymphoblastic leukemia not having achieved remission | ICD10 | 04062018 | 03292018 | 04052018 | 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 03282018 | 2018-03-28T16:07:52+00:00 |  | 000042947-01 | JOANNE | LAMBERT | CENTRAL OHIO SURG ASSOC | 917979 | CHRISTOPHER | ZOCHOWSKI | 1487868014 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03272018 | 03282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328082 | J9589, L987 | EXCESSIVE AND REDUNDANT SKIN AND SUBCUTANEOUS TISSUE | ICD10 | 04062018 | 03272018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03292018 | 2018-03-29T11:42:30+00:00 |  | 000023700-01 | CLARENCE | MCLAUGHLIN | HOSPITALIST MEDICINE PHY | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329075 | I270, I509, J449, J90 | Pleural effusion, not elsewhere classified | ICD10 | 04062018 | 03282018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03302018 | 2018-03-30T12:24:20+00:00 |  | 000015002-01 | JOYCE | STEVERS | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04042018 | 04052018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330044 | M7070 | Other bursitis of hip, unspecified hip | ICD10 | 04062018 | 04042018 | 04052018 | 27005 | TNOTMY ILIOPSOAS, OPEN | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04032018 | 2018-04-03T11:04:29+00:00 |  | 000016679-01 | GEORGE | MAYES | HOSPITALIST MEDICINE PHY | 911535 | RAVI | BELLALA | 1649483801 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04012018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403081 | I4891, J181 | Lobar pneumonia, unspecified organism | ICD10 | 04062018 | 04012018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04032018 | 2018-04-03T12:22:48+00:00 |  | 000091054-01 | Darrell | Ross | SOUND INPATIENT PHYS OF | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403092 | K859 | Acute pancreatitis, unspecified | ICD10 | 04062018 | 04022018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04032018 | 2018-04-03T15:56:49+00:00 |  | 000081978-01 | Joseph | Nachman | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 04012018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403095 | F1010, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04062018 | 04012018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01092018 | 2018-01-09T15:23:44+00:00 |  | 000094280-01 | Dorothy | Howard | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04062018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04022018 | 04052018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110019 | T84093A | Mech compl of internal left knee prosthesis, init encntr | ICD10 | 04062018 | 04022018 | 04052018 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03202018 | 2018-03-20T11:54:02+00:00 |  | 000089490-01 | Janet | Hogue | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04022018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320082 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04062018 | 04022018 | 04042018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03262018 | 2018-03-26T12:00:45+00:00 |  | 000119524-01 | Rita | Williams | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04062018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03262018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327017 | I509, J189, J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 04062018 | 03262018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03292018 | 2018-03-29T10:53:43+00:00 |  | 000100950-01 | Michael | Hook | OSU SURGERY LLC | 920262 | ALAN E | HARZMAN | 1497964084 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03292018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329073 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 04062018 | 03292018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03312018 | 2018-03-31T13:58:42+00:00 |  | 000003661-01 | CHARLES | ORR | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402027 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 04062018 | 03312018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04032018 | 2018-04-03T08:48:11+00:00 |  | 000121473-01 | DONALD | HARPER | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04062018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04022018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403065 | J159 | Unspecified bacterial pneumonia | ICD10 | 04062018 | 04022018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04032018 | 2018-04-03T10:32:59+00:00 |  | 000065518-01 | ROBERT | OLSSON | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 04022018 | 04052018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403073 | I214, R791 | Abnormal coagulation profile | ICD10 | 04062018 | 04022018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04032018 | 2018-04-03T11:11:49+00:00 |  | 000072015-01 | Richard | Hood | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04062018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04022018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180403080 | J159 | Unspecified bacterial pneumonia | ICD10 | 04062018 | 04022018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04042018 | 2018-04-04T13:43:48+00:00 |  | 000099122-01 | Thomas | Reef | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04062018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 04032018 | 04052018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404072 | J159, R4182 | Altered mental status, unspecified | ICD10 | 04062018 | 04032018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04042018 | 2018-04-04T16:26:29+00:00 |  | 000108067-01 | Georgetta | Cattran | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405006 | J90, R079 | Chest pain, unspecified | ICD10 | 04062018 | 03312018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04042018 | 2018-04-04T17:05:34+00:00 |  | 000109285-01 | Betty | King | MOUNT CARMEL EAST PHYS | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04032018 | 04042018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405012 | Z90710 | Acquired absence of both cervix and uterus | ICD10 | 04062018 | 04032018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04052018 | 2018-04-05T15:15:35+00:00 |  | 000023713-01 | CAROLYN | EMMERT | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04062018 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180405065 | T07 | Unspecified multiple injuries | ICD10 | 04062018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04062018 | 2018-04-06T09:05:38+00:00 |  | 000072046-01 | Sherry | Brown | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL EAST HOSPITAL | 04062018 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 04242018 | 05242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180406004 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04062018 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 31 | CPT | C4 |  |  | No child records to display. |  |
