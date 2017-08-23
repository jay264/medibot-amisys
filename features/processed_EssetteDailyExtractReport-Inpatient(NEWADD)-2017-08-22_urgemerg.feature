Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-22_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-22_URGEMERG
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
| 08212017 | 2017-08-21T12:48:54+00:00 |  | 000080657-01 | Marva | Johnson | HEALTHSOUTH REHABILITATI | 947611 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | HEALTHSOUTH REHABILITATI | 947611 | 1538440904 | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 08222017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 08222017 | 08232017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170821096 | G7281, N186 | End stage renal disease | ICD10 | 08222017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08122017 | 2017-08-12T20:46:40+00:00 |  | 000071662-01 | WARNIE | JACKSON | MANA MEDICAL, INC. | 928193 | BINIT J | SHAH | 1912181389 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 08222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08122017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814057 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 08222017 | 08122017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07182017 | 2017-07-18T17:22:52+00:00 |  | 000117017-01 | Terry | Sherman | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170719003 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08222017 | 08152017 | 08182017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08222017 | 2017-08-22T10:22:25+00:00 |  | 000106425-01 | Linda | Bolich | HARDIN MEMORIAL HOSPITAL | 935632 |  | HARDIN MEMORIAL HOSPITAL | 1619931466 | HARDIN MEMORIAL HOSPITAL | 935632 | 1619931466 | HARDIN MEMORIAL HOSPITAL | 1619931466 | Inpatient | IP | Concurrent Review | CONC |  | HARDIN MEMORIAL HOSPITAL | 08222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822090 | I213, I469 | Cardiac arrest, cause unspecified | ICD10 | 08222017 | 08212017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T09:44:12+00:00 |  | 000095352-01 | ANN | NICKLEY | CENTRAL OH HSPISTS INC | 923628 | TEJAL K | PATEL | 1194073213 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08132017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814102 | J189 | Pneumonia, unspecified organism | ICD10 | 08222017 | 08132017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08092017 | 2017-08-09T14:21:10+00:00 |  | 000116720-01 | MARK | SCHRINER | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08082017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809065 | S32599A | Oth fracture of unsp pubis, init encntr for closed fracture | ICD10 | 08222017 | 08082017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 08182017 | 2017-08-18T09:05:24+00:00 |  | 000108038-01 | Carl | Hartman | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08172017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820008 | G039 | Meningitis, unspecified | ICD10 | 08222017 | 08172017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08182017 | 2017-08-18T09:33:18+00:00 |  | 000044725-01 | SHARON | DOUP | KNOX COMMUNITY HOSP GRP | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 08172017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820014 | M0080, R5081 | Fever presenting with conditions classified elsewhere | ICD10 | 08222017 | 08172017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08182017 | 2017-08-18T12:47:43+00:00 | 025650163-7220 | 000089514-01 | Bert | Vonderahe | OHIO ENT & ALLERGY PHYSI | 911982 | ALFRED J | FLEMING JR | 1396852422 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08222017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818049 | C770 | Sec and unsp malig neoplasm of nodes of head, face and neck | ICD10 | 08222017 | 08212017 | 08222017 | 38724 | CERVICAL LYMPHADENECTOMY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08082017 | 2017-08-08T12:51:06+00:00 |  | 000113582-01 | Lois | Bower | APOGEE MED GRP OHIO INC | 943792 | PRATIVA | RAJBHANDARI | 1659628667 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809012 | R079 | Chest pain, unspecified | ICD10 | 08222017 | 08072017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08132017 | 2017-08-13T14:37:08+00:00 |  | 000008364-01 | RICHARD | PHILLIPS | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08112017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814071 | V877XXA | Person injured in collision betw oth mtr veh (traffic), init | ICD10 | 08222017 | 08112017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08172017 | 2017-08-17T11:01:08+00:00 | 255469387228 | 000022214-01 | Janet | Schultz | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08222017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08162017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817026 | E876 | Hypokalemia | ICD10 | 08222017 | 08162017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08102017 | 2017-08-10T11:00:12+00:00 | 025211412-7209 | 000093043-01 | Linda | Martin | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810048 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08222017 | 08212017 | 08222017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08162017 | 2017-08-16T10:41:41+00:00 | 252888497228 | 000033389-01 | ARTHUR | TIMMONS | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08162017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816040 | L0390 | Cellulitis, unspecified | ICD10 | 08222017 | 08162017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08142017 | 2017-08-14T10:27:48+00:00 | 255332017223 | 000024542-01 | THEODORE | LEHEW-JUNIOR | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08112017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814036 | F0390, R319 | Hematuria, unspecified | ICD10 | 08222017 | 08112017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08152017 | 2017-08-15T09:15:54+00:00 | 253354657226 | 000024123-01 | JEANNINE | GREEN | SOUND PHYSICIANS OF OHI0 | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08142017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815004 | M6281 | Muscle weakness (generalized) | ICD10 | 08222017 | 08142017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08182017 | 2017-08-18T13:09:05+00:00 |  | 000080277-01 | James | Hay | MOUNT CARMEL WEST PHYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08212017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818052 | T82858A, Y832 | Anastomos,bypass or grft cause abn react/compl, w/o misadvnt | ICD10 | 08222017 | 08212017 | 08222017 | 35666 | BYPASS GR,NT VN, BELOW TRIFURCTN | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08182017 | 2017-08-18T11:44:09+00:00 |  | 000079578-01 | Martha | Brown | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 08222017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 08222017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170818036 | G7281 | Critical illness myopathy | ICD10 | 08222017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08162017 | 2017-08-16T15:27:20+00:00 | 250870047228 | 000106776-01 | Robert | Pusecker | COLS INPATIENT CARE INC | 932326 | CALEB T | WAGNER | 1124310826 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08162017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816073 | K810 | Acute cholecystitis | ICD10 | 08222017 | 08162017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08082017 | 2017-08-08T11:15:49+00:00 |  | 000117061-01 | Cecil | Butler Jr | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08212017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808070 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 08222017 | 08212017 | 08212017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 1 | CPT | C4 |  |  |  | 1.0 |
| 08212017 | 2017-08-21T11:45:54+00:00 |  | 000076148-01 | Mary Lou | Pinkerton | SELBY GENERAL HOSPITAL | 936486 |  | SELBY GENERAL HOSPITAL | 1124073465 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 08222017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 08222017 | 08232017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170821086 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 08222017 | 08222017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08212017 | 2017-08-21T10:37:40+00:00 | 252434697231 | 000023757-01 | RICHARD | THOMPSON | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08192017 | 08222017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821053 | R0902 | Hypoxemia | ICD10 | 08222017 | 08192017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08182017 | 2017-08-18T13:40:50+00:00 |  | 000090897-01 | Harold | Horner | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08172017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821010 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08222017 | 08172017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08182017 | 2017-08-18T10:08:16+00:00 | 250955197229 | 000063745-01 | HOWARD | ROZUM | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08172017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818019 | I5021 | Acute systolic (congestive) heart failure | ICD10 | 08222017 | 08172017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06162017 | 2017-06-16T16:13:29+00:00 |  | 000080444-01 | Barbara | McClain | SPFLD ORTHO SPORTS MED L | 912477 | DAVID | GALLUCH | 1295778546 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 08222017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616076 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08222017 | 08142017 | 08172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08152017 | 2017-08-15T11:00:13+00:00 |  | 000077265-01 | Duane | Watts | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08222017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08142017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815051 | J189, R410 | Disorientation, unspecified | ICD10 | 08222017 | 08142017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T10:23:09+00:00 | 252200517230 | 000027111-01 | CHARLOTTE | PARKER | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08182017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821041 | M79659 | Pain in unspecified thigh | ICD10 | 08222017 | 08182017 | 08222008 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08162017 | 2017-08-16T09:29:13+00:00 | 250744237227 | 000034837-01 | ERNEST | MESSER | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08162017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816013 | I509 | Heart failure, unspecified | ICD10 | 08222017 | 08162017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08212017 | 2017-08-21T09:46:59+00:00 | 167428797231 | 000080140-01 | Robert | Marshall | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08222017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08192017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821023 | R001 | Bradycardia, unspecified | ICD10 | 08222017 | 08192017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08212017 | 2017-08-21T09:49:47+00:00 | 250876287231 | 000066818-01 | JOHN | PETTIGREW | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08192017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821025 | I639 | Cerebral infarction, unspecified | ICD10 | 08222017 | 08192017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08162017 | 2017-08-16T14:48:45+00:00 |  | 000045137-01 | JOHN | NUNGESSER | COPC CENTRAL OHIO PRIMAR | 909586 | VAISHALI | ADMANE | 1265687560 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08222017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816079 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 08222017 | 08152017 | 08202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
