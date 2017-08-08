Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-04_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-04_URGEMERG
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
| 02202017 | 2017-02-20T18:26:36+00:00 |  | 000091727-01 | Joann | Glazier | SOUND PHYSICIANS OF OHI | 949490 | AMY R | HURST | 1326487885 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08042017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02182017 | 02232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170221118 | D649, R079, R55, S32049A | Unsp fracture of fourth lumbar vertebra, init for clos fx | ICD10 | 08042017 | 02182017 | 02232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05242017 | 2017-05-24T13:31:28+00:00 |  | 000106584-01 | Gary | Lamb | MIAMI VALLEY HSPISTS GRP | 922638 | YOUSIF S | SHAREEF | 1922235811 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05232017 | 06242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524048 | I82401, L03115 | Cellulitis of right lower limb | ICD10 | 08042017 | 05232017 | 06242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05312017 | 2017-05-31T10:21:29+00:00 |  | 000102777-01 | KATHRYN | HANDLEY | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531049 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08042017 | 07312017 | 08032017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06082017 | 2017-06-08T17:05:06+00:00 |  | 000106508-01 | Neale | Lemaster | OHIOHEALTH PHYS GRP | 926929 | NIRAV A | VORA | 1033254636 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08042017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 06072017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608075 | I639 | Cerebral infarction, unspecified | ICD10 | 08042017 | 06072017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T12:56:07+00:00 |  | 000038753-01 | MARY | MARSH | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609053 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08042017 | 07312017 | 08032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06282017 | 2017-06-28T17:37:07+00:00 | 026183655-7195 | 000082106-01 | Teresa | Morey | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629007 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08042017 | 08022017 | 08032017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07062017 | 2017-07-06T10:06:02+00:00 |  | 000117522-01 | Donna | Mattia | ALLIANCE PHYSICIANS INC | 920441 | KRISTA I | MIGLIORE | 1215114889 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 08042017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706031 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08042017 | 07312017 | 08032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 07072017 | 2017-07-07T10:21:50+00:00 |  | 000114438-01 | Linda | Johnson | MOUNT CARMEL HLTH PRVDRS | 901005 | ARTHUR N | COLE | 1891799698 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170707031 | M4806 | Spinal stenosis, lumbar region | ICD10 | 08042017 | 08032017 | 08042017 | 22612, 63047, 22842, 63048, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07132017 | 2017-07-13T14:29:46+00:00 |  | 000010736-01 | MAURICE | CORE | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07182017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713065 | I639 | Cerebral infarction, unspecified | ICD10 | 08042017 | 07182017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 07142017 | 2017-07-14T11:53:31+00:00 | 017785189-7195 | 000100423-01 | Mary | VanHorn | ORTHO & NEURO CONSULTS I | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08042017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714042 | M1712, M25562 | Pain in left knee | ICD10 | 08042017 | 08012017 | 08042017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 07172017 | 2017-07-17T06:36:35+00:00 |  | 000079918-01 | Terrence | Monroe | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08042017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170717006 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08042017 | 08012017 | 08032017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 07212017 | 2017-07-21T10:03:07+00:00 | 259451307201 | 000015307-01 | ROY | BELL | SOUND PHYSICIANS OF OHI | 943144 | PRANAV | WASTI | 1659634236 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07202017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721017 | N3001 | Acute cystitis with hematuria | ICD10 | 08042017 | 07202017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 07212017 | 2017-07-21T15:26:42+00:00 | 025253610-7205 | 000096969-01 | Wendell | Williamson | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07282017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721065 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 08042017 | 07282017 | 08042017 | 33430 | MITRAL VALVE REPLACEMENT-OPEN | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 07212017 | 2017-07-21T10:58:31+00:00 |  | 000003915-01 | MADELINE | ONEAL | OHIOHEALTH PHYS GRP | 910477 | MARK D | WELLS | 1215926597 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724004 | R55 | Syncope and collapse | ICD10 | 08042017 | 07202017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07242017 | 2017-07-24T10:06:57+00:00 | 255469387202 | 000022214-01 | Janet | Schultz | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08042017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07222017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724039 | R0600 | Dyspnea, unspecified | ICD10 | 08042017 | 07222017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 07232017 | 2017-07-23T17:35:02+00:00 |  | 000100464-01 | Cathy | Quillen | KELLER, MICHAEL W | 926103 | MICHAEL W | KELLER | 1952319105 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 08042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07212017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724057 | K632 | Fistula of intestine | ICD10 | 08042017 | 07212017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 07252017 | 2017-07-25T10:41:10+00:00 | 016448091-7158 | 000086691-01 | Mindie | Lanham | ORTHOPEDIC ONE INC | 936932 | CHRISTOPHER | HOLZAEPFEL | 1770695199 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725044 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08042017 | 08022017 | 08042017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07272017 | 2017-07-27T10:44:00+00:00 | 257644997210 | 000065474-01 | GARY | GLASS | SOUND PHYSICIANS OF OHI | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07262017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727034 | R222 | Localized swelling, mass and lump, trunk | ICD10 | 08042017 | 07262017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07272017 | 2017-07-27T11:19:27+00:00 | 016747340-7205 | 000116732-01 | ANTHONY | ZEGUNIS III | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08042017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 08032017 | 08042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727053 | M4316, M4806 | Spinal stenosis, lumbar region | ICD10 | 08042017 | 08032017 | 08042017 | 22612, 22614, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 07272017 | 2017-07-27T14:05:34+00:00 |  | 000047872-01 | SARA | MCLAUGHLIN | MOUNT CARMEL HLTH PRVDRS | 936245 | MARK T | DEFRANCISCO | 1588605729 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727062 | I771 | Stricture of artery | ICD10 | 08042017 | 07312017 | 08032017 | 35661 | BYPASS GR, NT VN, FEMORAL-FEMORAL | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 07312017 | 2017-07-31T09:23:20+00:00 | 250257637210 | 000086264-01 | Jerry | Carrier | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07292017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731014 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 08042017 | 07292017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07312017 | 2017-07-31T09:32:42+00:00 | 250813177211 | 000101647-01 | Deborah | Cox | EMERGENCY SERVICES INC | 935095 | PAUL | ZEEB | 1427036094 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07302017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731017 | M6281 | Muscle weakness (generalized) | ICD10 | 08042017 | 07302017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07302017 | 2017-07-30T15:30:47+00:00 |  | 000072998-01 | John | Carter | MOUNT CARMEL HLTH SYS | 913428 | COREY L | VANHOFF | 1245455617 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731052 | E782 | Mixed hyperlipidemia | ICD10 | 08042017 | 07292017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07312017 | 2017-07-31T13:19:05+00:00 | 250072937209 | 000046787-01 | NORMA | BAILEY | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07282017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731058 | I4891 | Unspecified atrial fibrillation | ICD10 | 08042017 | 07282017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07312017 | 2017-07-31T12:51:12+00:00 | 017607393-7195 | 000097450-01 | Donna | John | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08042017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731065 | M1611, M25551 | Pain in right hip | ICD10 | 08042017 | 08032017 | 08042017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07312017 | 2017-07-31T15:51:57+00:00 |  | 000062984-01 | TERRY | JESSE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Phone | Inpatient | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731101 | E249 | Cushing's syndrome, unspecified | ICD10 | 08042017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T08:12:46+00:00 |  | 000100451-01 | Eugene | Allen | OSU INTERNAL MED LLC | 923422 | JOSHUA J | WIDMAN | 1821222332 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07292017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731102 | C029, E119, I10, I2510, I959, W19XXXA, Z950 | Presence of cardiac pacemaker | ICD10 | 08042017 | 07292017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T09:08:06+00:00 |  | 000080598-01 | Rosa | Crowe | MERCY HEALTH PHYSICIANS | 921220 | JEFFREY R | WELSHHANS | 1851425938 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08042017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731104 | L03311, T814XXA, Z433 | Encounter for attention to colostomy | ICD10 | 08042017 | 07292017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07312017 | 2017-07-31T08:35:50+00:00 |  | 000098540-01 | Marie | Abmayr | CONOR P KLEWENO MD | 951661 | CONOR P | KLEWENO | 1760687347 | HARBORVIEW MEDICAL CENTE | 951662 | 1053359729 | HARBORVIEW MEDICAL CENTER | 1053359729 | Inpatient | IP | Concurrent Review | CONC |  | HARBORVIEW MEDICAL CENTER | 08042017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07272017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801010 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 08042017 | 07272017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08012017 | 2017-08-01T09:14:13+00:00 |  | 000009223-01 | DORIS | SMITH | GREENFIELD AREA MED CTR | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801017 | I4891 | Unspecified atrial fibrillation | ICD10 | 08042017 | 07292017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07312017 | 2017-07-31T10:07:14+00:00 |  | 000112115-01 | Nancy | Fisher | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801021 | K5669 | Other intestinal obstruction | ICD10 | 08042017 | 07312017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08012017 | 2017-08-01T09:39:44+00:00 |  | 000001789-01 | WALTER | VONAU | OSU INTERNAL MED LLC | 942829 | JASON P | EVANCHAN | 1245421924 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07282017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801029 | I959 | Hypotension, unspecified | ICD10 | 08042017 | 07282017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T15:55:25+00:00 |  | 000090612-01 | Margie | Marion | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07282017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801072 | J189, R0902 | Hypoxemia | ICD10 | 08042017 | 07282017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08012017 | 2017-08-01T12:30:04+00:00 |  | 000087660-01 | Larry | Schumacher | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07312017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801074 | R55 | Syncope and collapse | ICD10 | 08042017 | 08012017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08012017 | 2017-08-01T13:38:29+00:00 |  | 000054144-01 | DAVID | HARPER | OSU INTERNAL MED LLC | 930397 | ERIC J | ADKINS | 1528046232 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801096 | C9000, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08042017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T08:29:40+00:00 |  | 000004630-01 | DORIS | ELSWICK | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 08042017 | 10032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802003 | C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 08042017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08022017 | 2017-08-02T09:31:52+00:00 | 026209982-7213 | 000102169-01 | Charles | Cupp | SOUND PHYSICIANS OF OHI | 917205 | MONIKA P | JHAVERI | 1083802854 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08012017 | 08042017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802013 | M6281, R002 | Palpitations | ICD10 | 08042017 | 08012017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08022017 | 2017-08-02T09:39:43+00:00 | 025216859-7213 | 000116385-01 | KENNETH | PETERSON | SOUND PHYSICIANS OF OHI | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08042017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 08012017 | 08042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802017 | K839 | Disease of biliary tract, unspecified | ICD10 | 08042017 | 08012017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08022017 | 2017-08-02T07:36:02+00:00 |  | 000008861-01 | JAMES | BEBART | SOUND PHYSICIANS OF OHI | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07302017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802054 | F919, I4891 | Unspecified atrial fibrillation | ICD10 | 08042017 | 07302017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08022017 | 2017-08-02T11:15:06+00:00 |  | 000072212-01 | Patricia | Vanburen | DAYTON CHEST MEDICINE | 923217 | NAVEENA | SALLAPUDI | 1982709325 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802078 | E875 | Hyperkalemia | ICD10 | 08042017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T11:16:08+00:00 |  | 000005828-01 | VERONICA | VALENTINO | MOUNT CARMEL HLTH SYS | 947464 | KIRAN T | BIDARI | 1083847826 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08042017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802079 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08042017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08022017 | 2017-08-02T14:42:14+00:00 |  | 000107007-01 | Carl | Breth | MOUNT CARMEL HLTH PRVDRS | 949510 | MARK W | BYRGE | 1053307389 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 08032017 | 08042017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802083 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 08042017 | 08032017 | 08042017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08022017 | 2017-08-02T18:59:56+00:00 |  | 000116078-01 | JOSEPH | SANOK JR | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 08042017 | Denied | MediGold Essential Care | Fax | Not Medically Necessary | Inpatient | 08042017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170803002 | I5022, S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 08042017 | 08042017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08032017 | 2017-08-03T10:56:15+00:00 |  | 000114054-01 | Laura | Darnell | MOUNT CARMEL HLTH SYS | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08042017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 08022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803033 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 08042017 | 08022017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08042017 | 2017-08-04T08:46:31+00:00 |  | 000112684-01 | KAREN | FITZWATER | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08042017 | Approved | TRINITY HEALTH | Reports | EIS | Inpatient | 08022017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804006 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 08042017 | 08022017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
