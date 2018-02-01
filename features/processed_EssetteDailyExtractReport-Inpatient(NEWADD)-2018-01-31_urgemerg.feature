Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-31_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-31_URGEMERG
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
| 01262018 | 2018-01-26T13:34:11+00:00 |  | 000078965-01 | Michael | Stanley Jr | OHIO PLASTIC SURGERY SPE | 935510 | WALTER L | BERNACKI | 1871664714 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126048 | L89324 | Pressure ulcer of left buttock, stage 4 | ICD10 | 01312018 | 01252018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01262018 | 2018-01-26T14:55:06+00:00 |  | 000040866-01 | BETTY | BRANHAM | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126063 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 01312018 | 01252018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01192018 | 2018-01-19T14:12:31+00:00 |  | 000062477-01 | ROSE | HEWITT | MOUNT CARMEL HLTH PRVDRS | 947622 | WILLIAM R | WALKER | 1427390905 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119062 | M62262 | Nontraumatic ischemic infarction of muscle, left lower leg | ICD10 | 01312018 | 01182018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01232018 | 2018-01-23T10:59:03+00:00 |  | 000100394-01 | JoAnn | Money | COMMUNITY HSPIST LLC | 947504 | KEITH A | ROSING | 1053722371 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 01312018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01222018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123035 | N179 | Acute kidney failure, unspecified | ICD10 | 01312018 | 01222018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01132018 | 2018-01-13T15:23:04+00:00 |  | 000067081-01 | FRANCIS | NOVAK | SOUND INPATIENT PHYS OF | 931112 | YOGEESH H | SHIVARAMAI-PRA | 1215285689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115035 | I4891 | Unspecified atrial fibrillation | ICD10 | 01312018 | 01122018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 01112018 | 2018-01-11T10:36:40+00:00 |  | 000053494-01 | Ruby | Rutherford | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111048 | K449, K8020 | Calculus of gallbladder w/o cholecystitis w/o obstruction | ICD10 | 01312018 | 01242018 | 01302018 | 39541, 47562 | LAPAROSCOPIC CHOLECYSTECTOMY | CPT | 0, 0 | 1, 1 | Auth Not Required, Auth Not Required | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 01242018 | 2018-01-24T11:30:38+00:00 |  | 000010167-01 | CHARLES | MYERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124040 | G939 | Disorder of brain, unspecified | ICD10 | 01312018 | 01232018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12282017 | 2017-12-28T12:00:39+00:00 |  | 000056752-01 | SHIRLEY | BAILEY | DUBLIN SPRINGS LLC | 931391 | SUJANA V | RAYANI | 1487862421 | COLUMBUS BEHAVIORAL HEAL | 951769 | 1477914943 | COLUMBUS BEHAVIORAL HEALTH LLC | 1477914943 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS BEHAVIORAL HEALTH LLC | 01312018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 12272017 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228048 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 01312018 | 12272017 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12292017 | 2017-12-29T11:10:27+00:00 |  | 000073030-01 | Cindy | Kikeli | ORTHO SPEC & SPORTS MED | 924918 | ALEKSANDAR | TANCEVSKI | 1194974824 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 01312018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229051 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01312018 | 01302018 | 01312018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01042018 | 2018-01-04T13:02:16+00:00 |  | 000075553-01 | Karen | Graham | NEUROSCIENCE CENTER | 919466 | CHAD M | MILLER | 1467477901 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 01032018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104095 | I639 | Cerebral infarction, unspecified | ICD10 | 01312018 | 01032018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01082018 | 2018-01-08T13:26:50+00:00 |  | 000087105-01 | Susan | Hartman-Nill | JOINT IMPLANT SURGEONS | 946748 | DAVID A | CRAWFORD | 1073711982 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01312018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01292018 | 01302018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108096 | M1611, M25551 | Pain in right hip | ICD10 | 01312018 | 01292018 | 01302018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01112018 | 2018-01-11T08:02:11+00:00 |  | 000081182-01 | Billie | Strader | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 01312018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01292018 | 01302018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111006 | M25512 | Pain in left shoulder | ICD10 | 01312018 | 01292018 | 01302018 | 23472, 23420, 23440, 23020, 23406 | TENOMYOTOMY, MULT., SAME INCISION | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01162018 | 2018-01-16T15:01:04+00:00 |  | 000108511-01 | John | Gallagher | OSU INTERNAL MED LLC | 949314 | MICHAEL J | HARDMAN | 1033557731 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01312018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01132018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116078 | R451 | Restlessness and agitation | ICD10 | 01312018 | 01132018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01182018 | 2018-01-18T17:41:35+00:00 |  | 000049954-01 | LOUIS | WILLIAMS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119007 | I5033, J189 | Pneumonia, unspecified organism | ICD10 | 01312018 | 01172018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01212018 | 2018-01-21T14:39:29+00:00 |  | 000018670-01 | ALMA | SCURLOCK | COPC CENTRAL OHIO PRIMAR | 915650 | ADAM A | RUSH | 1649457250 | DUBLIN METHODIST HOSP | 905908 | 1801937008 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 01192018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122036 | E875 | Hyperkalemia | ICD10 | 01312018 | 01192018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01232018 | 2018-01-23T11:46:11+00:00 |  | 000009747-01 | SANDRA | ROSSIO | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01212018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123052 | A419, J181 | Lobar pneumonia, unspecified organism | ICD10 | 01312018 | 01212018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01252018 | 2018-01-25T16:11:50+00:00 |  | 000083204-01 | Loretta | Banker | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126003 | R0600 | Dyspnea, unspecified | ICD10 | 01312018 | 01222018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01252018 | 2018-01-25T16:47:05+00:00 |  | 000051426-01 | KATHERINE | YANK | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126009 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 01312018 | 01242018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01262018 | 2018-01-26T08:40:32+00:00 |  | 000005393-01 | RONALD | ROBICHAUD | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01302018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126010 | I509, M25469 | Effusion, unspecified knee | ICD10 | 01312018 | 01252018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01252018 | 2018-01-25T17:24:54+00:00 |  | 000023074-01 | Shirley | Keefe | CENTRAL OHIO SURG ASSOC | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01302018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126012 | S82843A | Displaced bimalleolar fracture of unsp lower leg, init | ICD10 | 01312018 | 01242018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01272018 | 2018-01-27T14:55:02+00:00 |  | 000029453-01 | LARRY | WILSON | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129006 | D649, J159, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01312018 | 01262018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01182018 | 2018-01-18T10:28:02+00:00 |  | 000120757-01 | Charles | Adkins Jr | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01312018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01152018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118033 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 01312018 | 01152018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 01232018 | 2018-01-23T10:50:52+00:00 |  | 000005570-01 | DELORES | SMITH | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01222018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123036 | G40919, N390 | Urinary tract infection, site not specified | ICD10 | 01312018 | 01222018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01242018 | 2018-01-24T11:47:32+00:00 |  | 000114919-01 | Judith | Hill | ADENA MEDICAL GROUP LLC | 941935 | ROBERT K | MONTAZEMI | 1184692238 | BARNESVILLE HOSPITAL | 904409 | 1235135450 | BARNESVILLE HOSPITAL | 1235135450 | Inpatient | IP | Concurrent Review | CONC |  | BARNESVILLE HOSPITAL | 01312018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 01242018 | 01292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124043 | A419 | Sepsis, unspecified organism | ICD10 | 01312018 | 01242018 | 01292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01262018 | 2018-01-26T12:37:48+00:00 |  | 000053656-01 | MARTHA | ACKLEY | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126049 | R0602 | Shortness of breath | ICD10 | 01312018 | 01252018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01262018 | 2018-01-26T15:21:23+00:00 |  | 000068705-01 | BARBARA | RODENISER | LICKING MEM HLTH PROF | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126067 | E876, J189 | Pneumonia, unspecified organism | ICD10 | 01312018 | 01262018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T11:03:38+00:00 |  | 000106007-01 | William | Fausnaugh | GARY L GILLEN MD | 909982 |  | GARY L GILLEN MD | 1962601369 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 01312018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01262018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129064 | J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01312018 | 01262018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T09:48:14+00:00 |  | 000031171-01 | JANET | PFEIFER | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01282018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129091 | G459, I161 | HYPERTENSIVE EMERGENCY | ICD10 | 01312018 | 01282018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01292018 | 2018-01-29T13:01:11+00:00 |  | 000056891-01 | JAMES | DOWELL | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01312018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01262018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129100 | A419, I509, N390, R338 | Other retention of urine | ICD10 | 01312018 | 01262018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T14:17:55+00:00 |  | 000085153-01 | Sylvia | Urfer | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01312018 | Approved | MediGold Essential Care | Fax | ACO - Pulmonary | Inpatient | 01272018 | 01302018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129109 | J189, J9601 | Acute respiratory failure with hypoxia | ICD10 | 01312018 | 01272018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
