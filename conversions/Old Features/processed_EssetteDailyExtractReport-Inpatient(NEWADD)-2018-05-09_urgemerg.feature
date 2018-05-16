Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-09_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-09_URGEMERG
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
| 04102018 | 2018-04-10T11:13:10+00:00 |  | 000072247-01 | David | Roof | MALLIK, GUNWANT S | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05042018 | 05082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410063 | M4726, M961, M48062 | M48062 | ICD10 | 05092018 | 05042018 | 05082018 | 22558, 22853, 22830, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 04262018 | 2018-04-26T10:09:06+00:00 |  | 000071583-01 | Carole | Roberts | ORTHOPEDIC ONE INC | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05072018 | 05082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426028 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 05092018 | 05072018 | 05082018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04272018 | 2018-04-27T14:58:23+00:00 |  | 000081866-01 | Patricia | Burgess | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04282018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427056 | N23, R319 | Hematuria, unspecified | ICD10 | 05092018 | 04282018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04302018 | 2018-04-30T15:58:43+00:00 |  | 000040678-01 | REGINA | TURNER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04292018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430083 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05092018 | 04292018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05022018 | 2018-05-02T17:30:16+00:00 |  | 000069388-01 | MICKEY | CHALFAN | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05022018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503010 | A419 | Sepsis, unspecified organism | ICD10 | 05092018 | 05022018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05032018 | 2018-05-03T14:16:12+00:00 |  | 000080321-01 | Thomas | Tappan | SOUND INPATIENT PHYS OF | 906123 | BEVERLY J | YAMOUR | 1376512624 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05022018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503055 | R410 | Disorientation, unspecified | ICD10 | 05092018 | 05022018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05042018 | 2018-05-04T10:24:10+00:00 |  | 000059969-01 | CORINNE | FERRIS SCHMITZ | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504017 | I4891 | Unspecified atrial fibrillation | ICD10 | 05092018 | 05032018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05062018 | 2018-05-06T10:22:49+00:00 |  | 000035748-01 | CHARLES | SCHUMACHER | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507049 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 05092018 | 05052018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05072018 | 2018-05-07T11:38:03+00:00 |  | 000030057-01 | BETTY | WASEM | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05092018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 05062018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508003 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 05092018 | 05062018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T16:37:53+00:00 |  | 000045001-01 | MARJORIE | HAMMER | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05072018 | 05082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508014 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 05092018 | 05072018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03082018 | 2018-03-08T10:32:47+00:00 |  | 000008451-01 | WALTER | BISHOP | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308007 | M4726, M4727, M4806, M4807 | Spinal stenosis, lumbosacral region | ICD10 | 05092018 | 05032018 | 05092018 | 22558, 22853, 22858, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 3, 2, 1, 1 | 1, 3, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved | 7, 7, 7, 7, 7 | CPT | C4 |  |  |  | 4.0 |
| 04242018 | 2018-04-24T17:01:04+00:00 |  | 000070129-01 | Rita | Brooks | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 05092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04252018 | 05092018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425001 | C179, D735, I639 | Cerebral infarction, unspecified | ICD10 | 05092018 | 04252018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 05042018 | 2018-05-04T09:55:45+00:00 |  | 000027122-01 | GERALD | BURKART | LICKING MEM INPATIENT ME | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504012 | J189 | Pneumonia, unspecified organism | ICD10 | 05092018 | 05032018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05072018 | 2018-05-07T12:25:37+00:00 |  | 000032616-01 | ELMER | REED | BERGER HEALTH PARTNERS | 936590 | DONALD A | FOUTS | 1811972532 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507085 | I5023, I509 | Heart failure, unspecified | ICD10 | 05092018 | 05072018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T10:19:53+00:00 |  | 000015280-01 | ROBERT | TSCHAKERT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05062018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507089 | L089 | Local infection of the skin and subcutaneous tissue, unsp | ICD10 | 05092018 | 05062018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05072018 | 2018-05-07T16:39:26+00:00 |  | 000032392-01 | ESTHER | SMITH | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508037 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 05092018 | 05042018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04182018 | 2018-04-18T16:18:33+00:00 |  | 000031407-01 | PAUL | ROWLEY | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419005 | J9601, K8050, K830 | Cholangitis | ICD10 | 05092018 | 04192018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 04302018 | 2018-04-30T08:54:33+00:00 |  | 000085544-01 | Shirley | Laney | ARUNDHATI SHARMA | 953515 | ARUNDHATI | SHARMA | 1790103026 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05092018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04282018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430024 | N200, R112, R42 | Dizziness and giddiness | ICD10 | 05092018 | 04282018 | 05042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05012018 | 2018-05-01T10:54:09+00:00 |  | 000099249-01 | Alice | Bertram | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05092018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501073 | F0391, J189, N390 | Urinary tract infection, site not specified | ICD10 | 05092018 | 04302018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05022018 | 2018-05-02T11:06:25+00:00 |  | 000089918-01 | Houston | Rogers | ALLIANCE PHYSICIANS INC | 948102 | CHRISTA | SIEBENBURGEN | 1114247251 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05012018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502033 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 05092018 | 05012018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05022018 | 2018-05-02T10:25:42+00:00 |  | 000115677-01 | Terrance | Martin | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502054 | I739, I97621 | POSTPROC HEMATOMA OF A CIRC SYS ORG FOL OTHER PROCEDURE | ICD10 | 05092018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05032018 | 2018-05-03T09:24:43+00:00 |  | 000063625-01 | SYDNEY | COOK | ORTHOPEDIC ONE INC | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05092018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05072018 | 05082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503007 | S42232D | 3-part fx surg neck of l humerus, subs for fx w routn heal | ICD10 | 05092018 | 05072018 | 05082018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05032018 | 2018-05-03T10:05:33+00:00 |  | 000097311-01 | Willa | Ramsey | MERCY HEALTH PHYSICIANS | 921752 | JAMES E | FITZPATRICK | 1063459246 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05092018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05022018 | 05062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503016 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 05092018 | 05022018 | 05062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T15:01:42+00:00 |  | 000117386-01 | Linda | Johnson | PULMONARY MED OF DAYTON | 912107 | GNANAM | THAMBIPILLAI | 1255346730 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05032018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507009 | N179, R079 | Chest pain, unspecified | ICD10 | 05092018 | 05032018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05052018 | 2018-05-05T08:21:26+00:00 |  | 000079991-01 | Virginia | Mcbride | APOGEE MED GRP OHIO INC | 952313 | VALERIE M | DRABINA DOMBRO | 1982982955 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507021 | D599 | Acquired hemolytic anemia, unspecified | ICD10 | 05092018 | 05042018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05072018 | 2018-05-07T07:40:15+00:00 |  | 000004550-01 | DELPHINE | BROBST | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05092018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507056 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 05092018 | 04302018 | 05072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05072018 | 2018-05-07T08:19:30+00:00 |  | 000099513-01 | Paul | Will Jr | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05092018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05062018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507080 | G250, G4489, K30, N1330, R109, Z98890, Z9049 | Acquired absence of other specified parts of digestive tract | ICD10 | 05092018 | 05062018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082018 | 2018-05-08T10:14:07+00:00 |  | 000073888-01 | Barbara | Spicer | FAIRFIELD HLTHCARE PROFS | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05092018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05062018 | 05092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508044 | K921 | Melena | ICD10 | 05092018 | 05062018 | 05092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05092018 | 2018-05-09T14:22:13+00:00 |  | 000110293-01 | Ila | Cox | FIRST SETTLEMENT ORTHOS | 924541 | GEORGE | TOKODI JR | 1215933700 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Pre-Service | PRE |  | SELBY GENERAL HOSPITAL | 05092018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Pending Admission | Inpatient | 05142018 | 06142018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180509063 | T8484XA | Pain due to internal orthopedic prosth dev/grft, init | ICD10 | 05092018 |  |  | 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  | No child records to display. |  |
