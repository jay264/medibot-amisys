Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-20_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-20_URGEMERG
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
| 03122018 | 2018-03-12T14:46:09+00:00 |  | 000081405-01 | Gerald | Marti | KNOX COMMUNITY HOSP GRP | 913996 | LAURA B | MURNANE | 1578744124 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03192018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03112018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312083 | E871, R0602 | Shortness of breath | ICD10 | 03192018 | 03112018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02202018 | 2018-02-20T14:43:53+00:00 |  | 000035438-01 | DAVID | PHILLIPS | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03202018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03172018 | 03182018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221019 | M4806, M5416, M48062 | M48062 | ICD10 | 03202018 | 03172018 | 03182018 | 22612, 22614, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02282018 | 2018-02-28T16:40:44+00:00 |  | 000107210-01 | Milton | Hinkle | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03162018 | 03192018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301001 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03202018 | 03162018 | 03192018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03112018 | 2018-03-11T17:12:38+00:00 |  | 000002109-01 | CHESTER | GRIMM | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03102018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312045 | M6281, M6282 | Rhabdomyolysis | ICD10 | 03202018 | 03102018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03132018 | 2018-03-13T09:26:56+00:00 |  | 000081085-01 | Mary | Shaw | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313050 | R0600, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03202018 | 03122018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03132018 | 2018-03-13T11:13:02+00:00 |  | 000038554-01 | Robert | Braid | SOUND INPATIENT PHYS OF | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313062 | J189 | Pneumonia, unspecified organism | ICD10 | 03202018 | 03122018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03022018 | 2018-03-02T15:43:03+00:00 |  | 000086183-01 | Sam | Curtis | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 03202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03122018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302067 | M1990 | Unspecified osteoarthritis, unspecified site | ICD10 | 03202018 | 03122018 | 03182018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 2.0 |
| 03082018 | 2018-03-08T17:00:01+00:00 |  | 000096997-01 | DAVID | RODGERS | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03082018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309002 | J942, S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 03202018 | 03082018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03092018 | 2018-03-09T13:09:09+00:00 |  | 000012422-01 | MINA | GORBY | HOSPITAL MEDICINE SERVIC | 941188 | ABDAL R | ALHYARI | 1205051570 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03082018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309073 | I509 | Heart failure, unspecified | ICD10 | 03202018 | 03082018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03132018 | 2018-03-13T09:28:21+00:00 |  | 000088981-01 | Milford | Horton | LICKING MEM HLTH PROF | 932652 | ANNABA | MOHAMMAD | 1962481168 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313051 | D649, I129, J441, R0902, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 03202018 | 03122018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03132018 | 2018-03-13T12:01:02+00:00 |  | 000062734-01 | JON | NOE | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313065 | E162, L03818 | Cellulitis of other sites | ICD10 | 03202018 | 03132018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03142018 | 2018-03-14T09:57:12+00:00 |  | 000044046-01 | RICHARD | REYNOLDS | OSU INTERNAL MED LLC | 949196 | DEVICKA | OJHA | 1780927590 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314029 | Z952 | Presence of prosthetic heart valve | ICD10 | 03202018 | 03132018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03142018 | 2018-03-14T13:34:43+00:00 |  | 000040994-01 | Jane | Gischler | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03202018 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 03132018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314047 | D649 | Anemia, unspecified | ICD10 | 03202018 | 03132018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03142018 | 2018-03-14T12:54:42+00:00 |  | 000108665-01 | Bonnie | Stanforth | HOSPITAL MEDICINE SERVIC | 949699 | IMRAN T | MINHAS | 1942288402 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 03202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03132018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314059 | C8599, D61810 | Antineoplastic chemotherapy induced pancytopenia | ICD10 | 03202018 | 03132018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03142018 | 2018-03-14T16:35:56+00:00 |  | 000107738-01 | LORI | CLARK | FORT HAMILTON HOSPITAL | 942508 | ADAM | BRULE | 1356626238 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 03202018 | Approved | MediGold Southwest OH Essential Care | Fax | Medical Criteria Met | Inpatient | 03142018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315005 | F259 | Schizoaffective disorder, unspecified | ICD10 | 03202018 | 03142018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03152018 | 2018-03-15T08:13:15+00:00 |  | 000060692-01 | ROBERT | ROBERTS | AEBI GINTY ROMAKER SPROU | 936838 | MARK E | AEBI | 1760461693 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315018 | I200 | Unstable angina | ICD10 | 03202018 | 03142018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03162018 | 2018-03-16T12:26:37+00:00 |  | 000066672-01 | Ruth | Gorrell | LICKING MEM HLTH PROF | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316039 | R4182 | Altered mental status, unspecified | ICD10 | 03202018 | 03132018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03052018 | 2018-03-05T12:25:30+00:00 |  | 000037999-01 | VELMA | BRAUNBECK | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305098 | R55 | Syncope and collapse | ICD10 | 03202018 | 03022018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T09:22:39+00:00 |  | 000099185-01 | Carolyn | Schreiber | KHN IP MED | 918712 | MOHAMMED M | ABDELAZIZ | 1831326701 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03062018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307031 | I959, J208, J810 | Acute pulmonary edema | ICD10 | 03202018 | 03062018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03072018 | 2018-03-07T12:49:07+00:00 |  | 000072399-01 | Stephanie | Carter-Gilliam | SPECIALIZED ORTHOPAEDICS | 919300 | JOHN M | HATHEWAY | 1043201049 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03162018 | 03192018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307040 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03202018 | 03162018 | 03192018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03082018 | 2018-03-08T15:29:37+00:00 |  | 000116753-01 | Betty | Rogers | SUMMA HEALTH SYSTEM | 936411 |  | SUMMA HEALTH SYSTEM | 1396765681 | SUMMA HEALTH SYSTEM | 936411 | 1396765681 | SUMMA HEALTH SYSTEM | 1396765681 | Inpatient | IP | Concurrent Review | CONC |  | SUMMA HEALTH SYSTEM | 03202018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03072018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308068 | G9349 | Other encephalopathy | ICD10 | 03202018 | 03072018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03152018 | 2018-03-15T08:11:04+00:00 |  | 000047899-01 | ERROL | JONES | COMMUNITY HSPIST LLC | 928739 | RISTEMKA | PRNAROVA | 1922236447 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315016 | I200, R079 | Chest pain, unspecified | ICD10 | 03202018 | 03142018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03152018 | 2018-03-15T14:20:43+00:00 |  | 000075372-01 | Thelma | Kaltenbach | GRANDVIEW HOSPITAL & SOU | 903060 | TIMOTHY L | SCHOONOVER | 1033111802 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315048 | I10, I639 | Cerebral infarction, unspecified | ICD10 | 03202018 | 03142018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03152018 | 2018-03-15T14:21:02+00:00 |  | 000105171-01 | Vicky | Smith | SURG ASSOC OF SPRINGFIEL | 906099 | STEVEN E | CONKEL | 1770615338 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 03202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03152018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315061 | K432 | Incisional hernia without obstruction or gangrene | ICD10 | 03202018 | 03152018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03192018 | 2018-03-19T11:29:32+00:00 |  | 000087260-01 | Larry | Stepp | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03202018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319024 | R6889 | Other general symptoms and signs | ICD10 | 03202018 | 03152018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T14:12:08+00:00 |  | 000080221-01 | Carol | Frerick | BETHESDA NORTH HOSPITAL | 936487 |  | BETHESDA NORTH HOSPITAL | 1396714663 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03202018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03122018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319052 | I639 | Cerebral infarction, unspecified | ICD10 | 03202018 | 03122018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03192018 | 2018-03-19T18:23:00+00:00 |  | 000100959-01 | Carol | Moorehead | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03202018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180320019 | I639 | Cerebral infarction, unspecified | ICD10 | 03202018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
