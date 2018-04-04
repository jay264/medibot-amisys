Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-30_thru_2018-04-01_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-30_thru_2018-04-01_URGEMERG
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
| 03242018 | 2018-03-24T15:49:43+00:00 |  | 000002598-01 | EVA | CRAVEY | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03232018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326020 | I5020, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03302018 | 03232018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03072018 | 2018-03-07T12:31:04+00:00 |  | 000121743-01 | Deloris | Filippi | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03282018 | 03292018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307049 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03302018 | 03282018 | 03292018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03142018 | 2018-03-14T14:01:50+00:00 |  | 000087728-01 | Phyllis | Duncan | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03202018 | 03232018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314060 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03302018 | 03202018 | 03232018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03192018 | 2018-03-19T14:55:00+00:00 |  | 000069437-01 | KAREN | ROUSH | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03282018 | 03292018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320033 | M1611, M25551 | Pain in right hip | ICD10 | 03302018 | 03282018 | 03292018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03082018 | 2018-03-08T10:36:12+00:00 |  | 000090882-01 | Patsy | Frederick | UNIVERSITY OF CINCINNATI | 933053 | JOHN D | WYRICK | 1972553774 | UNIVERSITY HOSPITAL | 936399 | 1033154026 | UNIVERSITY HOSPITAL | 1033154026 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY HOSPITAL | 03302018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308002 | S7221XK, Z8739, T148XXA | T148XXA | ICD10 | 03302018 | 03152018 | 03172018 | 27472 | REP NON/MALUNION FEMUR HD/NK C GRFT | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03232018 | 2018-03-23T09:00:12+00:00 |  | 000098026-01 | Gary | Lustgarten | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 03222018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323006 | M549 | Dorsalgia, unspecified | ICD10 | 03302018 | 03222018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03232018 | 2018-03-23T09:06:20+00:00 |  | 000062430-01 | Sheila | Bailey | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 03222018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323007 | E860, I951, R55 | Syncope and collapse | ICD10 | 03302018 | 03222018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03282018 | 2018-03-28T09:52:51+00:00 |  | 000044627-01 | DOUGLAS | DIERSING | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03282018 | 03292018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329004 | M4322 | Fusion of spine, cervical region | ICD10 | 03302018 | 03282018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T13:25:09+00:00 |  | 000105367-01 | Kyle | Martin | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03302018 | Approved | MediGold Southeast OH Essential Care | Fax | EIS | Inpatient | 03282018 | 03292018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329038 | M4806 | Spinal stenosis, lumbar region | ICD10 | 03302018 | 03282018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T17:33:18+00:00 |  | 000073367-01 | Anita | Turner | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03302018 | Approved | Flexible Choice PPO | Fax | EIS | Inpatient | 02142018 | 02152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209005 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03302018 | 02142018 | 02152018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03142018 | 2018-03-14T14:29:24+00:00 |  | 000086175-01 | Emily | Meyer | KNOX COMMUNITY HOSPITAL | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03142018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314069 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03302018 | 03142018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03142018 | 2018-03-14T16:23:29+00:00 |  | 000112712-01 | Shirley | Stacey | RIVERSIDE TRAUMA SURGEON | 907861 | EDWARD P | DOMINGUEZ | 1467400697 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03132018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314076 | K7290 | Hepatic failure, unspecified without coma | ICD10 | 03302018 | 03132018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03152018 | 2018-03-15T12:13:11+00:00 |  | 000079031-01 | Mary | Ingram | ORLANDO HEALTH INC | 934620 |  | DR P PHILLIPS HOSPITAL | 1184709057 | ORLANDO HEALTH INC | 934620 | 1184709057 | DR P PHILLIPS HOSPITAL | 1184709057 | Inpatient | IP | Concurrent Review | CONC |  | DR P PHILLIPS HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315038 | J129, N19 | Unspecified kidney failure | ICD10 | 03302018 | 03122018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03162018 | 2018-03-16T12:04:24+00:00 |  | 000087704-01 | Victoria | Havens Ingles | ALLIANCE PHYSICIANS INC | 914727 | GURPAL S | AHLUWALIA | 1740314954 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03222018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316040 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03302018 | 03202018 | 03222018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03192018 | 2018-03-19T08:46:52+00:00 |  | 000089999-01 | Charles | Straley | MARIETTA HLTH CARE PHYS | 928796 | KERRY A | LECKY | 1396952651 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03162018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319063 | E860 | Dehydration | ICD10 | 03302018 | 03162018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03222018 | 2018-03-22T09:16:31+00:00 |  | 000023102-01 | GEORGIA | DAVENPORT | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322019 | L02211 | Cutaneous abscess of abdominal wall | ICD10 | 03302018 | 03212018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03252018 | 2018-03-25T15:15:25+00:00 |  | 000029099-01 | Priscilla | Cox | CENTRAL OH HSPISTS INC | 942120 | JOHN M | GUIDO | 1912263922 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03232018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326023 | R4701 | Aphasia | ICD10 | 03302018 | 03232018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T07:15:12+00:00 |  | 000109821-01 | John | Seither | HOSPITALIST MEDICINE PHY | 948123 | AHMED N | HADID | 1205268505 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326052 | I509, R000, R0600 | Dyspnea, unspecified | ICD10 | 03302018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02202018 | 2018-02-20T12:40:54+00:00 |  | 000042203-01 | BETTY | RIDDLE | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03272018 | 03312018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221006 | M4316, M48062 | M48062 | ICD10 | 04012018 | 03272018 | 03312018 | 22612, 20937, 22840, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 03012018 | 2018-03-01T13:57:29+00:00 |  | 000066428-01 | Venita | Howard | ALLIANCE PHYSICIANS INC | 911768 | BRIAN W | ONDULICK | 1336129485 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02222018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301052 | R109 | Unspecified abdominal pain | ICD10 | 03302018 | 02222018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 33.0 |
| 03062018 | 2018-03-06T13:36:44+00:00 |  | 000111630-01 | JEROME | SMITH | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03062018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306071 | M1612, Z96642 | Presence of left artificial hip joint | ICD10 | 03302018 | 03062018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03132018 | 2018-03-13T10:24:57+00:00 |  | 000091696-01 | Vicki | Vigiris | MERCY HEALTH PHYSICIANS | 920951 | BRION P | MORAN | 1174528970 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03272018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313057 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03302018 | 03272018 | 03282018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03142018 | 2018-03-14T17:10:52+00:00 |  | 000029489-01 | MICHAEL | STIFFLER | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04012018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03282018 | 03302018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315001 | S43422A | Sprain of left rotator cuff capsule, initial encounter | ICD10 | 04012018 | 03282018 | 03302018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03212018 | 2018-03-21T10:04:26+00:00 |  | 000104301-01 | Cecelia | Thatcher | WORST DAY EVER LLC | 935511 | DAVID R | GIAMMAR | 1154307858 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03262018 | 03312018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321015 | K5732, N823 | Fistula of vagina to large intestine | ICD10 | 04012018 | 03262018 | 03312018 | 44207, 45378 | COLONOSCOPY PAST SPL FLEX-DIAG. | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 03202018 | 2018-03-20T13:38:27+00:00 |  | 000118398-01 | Ilham | Ailabouni | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03272018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321024 | C480 | Malignant neoplasm of retroperitoneum | ICD10 | 04012018 | 03272018 | 03312018 | 49203 | EXC ABD TUM 5 CM OR LESS,29.93,29.93 | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 03212018 | 2018-03-21T11:22:15+00:00 |  | 000039588-01 | SHIRLEY | CALLISON | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENT | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321031 | Z96651 | Presence of right artificial knee joint | ICD10 | 03302018 | 03202018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03222018 | 2018-03-22T10:43:24+00:00 |  | 000101453-01 | Lynda | Stough | COLON & RECTAL SURG INC | 942590 | ELLEN H | BAILEY | 1184867756 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03232018 | 03312018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322023 | K5732, N823 | Fistula of vagina to large intestine | ICD10 | 04012018 | 03232018 | 03312018 | 44213, 44207 | L COLECTOMY/COLOPROCTOSTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 9, 9 | CPT | C4 |  |  |  | 8.0 |
| 03232018 | 2018-03-23T10:48:01+00:00 |  | 000070632-01 | Joseph | Lipich | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03222018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323038 | L03115 | Cellulitis of right lower limb | ICD10 | 03302018 | 03222018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T09:52:25+00:00 |  | 000084085-01 | Marvennia | Kull | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03242018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326089 | L0390 | Cellulitis, unspecified | ICD10 | 03302018 | 03242018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T09:53:39+00:00 |  | 000020087-01 | ROBERT | HESS | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03252018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326090 | R000 | Tachycardia, unspecified | ICD10 | 03302018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T09:56:33+00:00 |  | 000120377-01 | David | Ellis | HIGHLAND DISTRICT HSP PR | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Inpatient | IP | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 03302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03232018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326091 | E872, R739 | Hyperglycemia, unspecified | ICD10 | 03302018 | 03232018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03272018 | 2018-03-27T09:27:49+00:00 |  | 000071542-01 | Vergie | Simpkins | HOSPITALIST MEDICINE PHY | 914611 | SOWMYA | VARRE | 1871753673 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03262018 | 03302018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327074 | J189, J441, R0902 | Hypoxemia | ICD10 | 04012018 | 03262018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03282018 | 2018-03-28T10:53:00+00:00 |  | 000094641-01 | Linda | Wardell | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328045 | K859 | Acute pancreatitis, unspecified | ICD10 | 03302018 | 03262018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03282018 | 2018-03-28T10:55:34+00:00 |  | 000099335-01 | John | Skripac | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03262018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328046 | C3490, D849, E8342, E860, K529, K567, R197 | Diarrhea, unspecified | ICD10 | 04012018 | 03262018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03282018 | 2018-03-28T11:07:18+00:00 |  | 000073975-01 | Gregory | Waller | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328049 | N179, R109, R112, R197 | Diarrhea, unspecified | ICD10 | 03302018 | 03262018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03272018 | 2018-03-27T13:03:16+00:00 |  | 000092787-01 | Arthur | Olgin | SOUND INPATIENT PHYS OF | 913492 | MOHAMED H | HAMZA | 1720060940 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03262018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328060 | J159, N179, N390, R0902, R509 | Fever, unspecified | ICD10 | 04012018 | 03262018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03282018 | 2018-03-28T13:22:03+00:00 |  | 000109304-01 | Meredith | Farmer | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328084 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 04012018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03292018 | 2018-03-29T09:51:12+00:00 |  | 000071981-01 | Sandra | Schobelock | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03272018 | 03302018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329023 | J159 | Unspecified bacterial pneumonia | ICD10 | 04012018 | 03272018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T13:28:03+00:00 |  | 000024531-01 | MARY | GILLIAM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04012018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 03272018 | 03302018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329025 | I4891 | Unspecified atrial fibrillation | ICD10 | 04012018 | 03272018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T17:32:35+00:00 |  | 000070583-01 | Earl | Benner Jr | SOUND INPATIENT PHYS OF | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03272018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329047 | D62, D649, R310, R319, R58 | Hemorrhage, not elsewhere classified | ICD10 | 04012018 | 03272018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03292018 | 2018-03-29T09:49:53+00:00 |  | 000073452-01 | Darrell | Carter | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04012018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329050 | G959, M4712, M48062 | M48062 | ICD10 | 04012018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03292018 | 2018-03-29T11:35:21+00:00 |  | 000084770-01 | Paul | Richardson | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329074 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03302018 | 03282018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T15:11:46+00:00 |  | 000042203-01 | BETTY | RIDDLE | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03302018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03302018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180330068 | M48061 | M48061 | ICD10 | 03302018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
