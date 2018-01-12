Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-10_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-10_URGEMERG
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
| 01082018 | 2018-01-08T10:30:28+00:00 |  | 000034396-01 | PAUL | MELTON | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01042018 | 01092018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108070 | F0150, I10, I4891, J159, M6281 | Muscle weakness (generalized) | ICD10 | 01102018 | 01042018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01052018 | 2018-01-05T14:18:08+00:00 |  | 000114046-01 | JO | MCMACKIN | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01042018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105057 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 01102018 | 01042018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01032018 | 2018-01-03T09:21:08+00:00 |  | 000082800-01 | Steven | Mcdaniel | MOUNT CARMEL HLTH PRVDRS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103043 | I739 | Peripheral vascular disease, unspecified | ICD10 | 01102018 | 01052018 | 01092018 | 27880 | AMPUTATION LEG THRU TIBIA & FIBULA | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 01032018 | 2018-01-03T14:44:38+00:00 |  | 000110616-01 | Clarence | Mccoy | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103108 | J189, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 01102018 | 01022018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12122017 | 2017-12-12T09:21:17+00:00 |  | 000032400-01 | NORMA | BETTENDORF | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01082018 | 01092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171212050 | C541 | Malignant neoplasm of endometrium | ICD10 | 01102018 | 01082018 | 01092018 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01092018 | 2018-01-09T10:16:42+00:00 |  | 000073053-01 | Judy | Lee | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 01082018 | 01092018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109053 | I4891, R000 | Tachycardia, unspecified | ICD10 | 01102018 | 01082018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01052018 | 2018-01-05T07:26:11+00:00 |  | 000091931-01 | Virginia | McConahy | COSHOCTON COUNTY MEM HSP | 922065 | NARCIS A | PAPADOPOL | 1982823928 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01102018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105001 | I509 | Heart failure, unspecified | ICD10 | 01102018 | 12282017 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 12282017 | 2017-12-28T14:18:00+00:00 |  | 000080448-01 | Florence | Cotten | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 01102018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 12272017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228058 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01102018 | 12272017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01022018 | 2018-01-02T12:32:27+00:00 |  | 000029707-01 | DAISY | SEEVERS | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01012018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103008 | K5669 | Other intestinal obstruction | ICD10 | 01102018 | 01012018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01052018 | 2018-01-05T08:09:21+00:00 |  | 000116154-01 | Joan | Kunz | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105039 | S32599A, S42291A | Oth disp fx of upper end of right humerus, init for clos fx | ICD10 | 01102018 | 01032018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12282017 | 2017-12-28T09:32:55+00:00 |  | 000076502-01 | Ivan | Sowders | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12272017 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228026 | I200 | Unstable angina | ICD10 | 01102018 | 12272017 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01022018 | 2018-01-02T10:19:13+00:00 |  | 000073667-01 | Douglas | Wallrauch | GERICARE ASSOCIATES INC | 921316 | SHWETAL G | DESAI | 1083687248 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01102018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12312017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102095 | I509, J9601 | Acute respiratory failure with hypoxia | ICD10 | 01102018 | 12312017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01062018 | 2018-01-06T11:46:56+00:00 |  | 000002426-01 | THOMAS | HAMPTON | SOUND INPATIENT PHYS OF | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108022 | E875, J09X2, R7881 | Bacteremia | ICD10 | 01102018 | 01052018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01052018 | 2018-01-05T14:40:43+00:00 |  | 000075935-01 | Barbara | Primmer | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01042018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105079 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 01102018 | 01042018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12222017 | 2017-12-22T11:57:52+00:00 |  | 000083094-01 | Rose | Heslin | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01082018 | 01092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171222044 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01102018 | 01082018 | 01092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 12282017 | 2017-12-28T11:01:26+00:00 |  | 000006679-01 | Ruby | Tippie | OH HSP FOR PSYCHIATRY | 906239 |  | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | Inpatient | IP | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12262017 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228049 | R4182 | Altered mental status, unspecified | ICD10 | 01102018 | 12262017 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01032018 | 2018-01-03T06:21:22+00:00 |  | 000084594-01 | Dona | Frazier | SOUND KENWOOD HSPISTS OF | 927326 | UMASANKAR | KAKUMANU | 1699068312 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 01102018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01022018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104001 | A419, J180, L03115 | Cellulitis of right lower limb | ICD10 | 01102018 | 01022018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T10:16:00+00:00 |  | 000110564-01 | Stephen | Kneidel | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12172017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218138 | R339 | Retention of urine, unspecified | ICD10 | 01102018 | 12172017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T10:16:00+00:00 |  | 000037992-01 | SONDRA | HINDEL | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12172017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218137 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 01102018 | 12172017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01082018 | 2018-01-08T15:12:18+00:00 |  | 000031567-01 | WILLIAM | IDEN | COPC CENTRAL OHIO PRIMAR | 952403 | SYDULU G | BATHINI | 1003235912 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01072018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109046 | R569 | Unspecified convulsions | ICD10 | 01102018 | 01072018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12282017 | 2017-12-28T09:36:55+00:00 | 250647797361 | 000031902-01 | AVALENE | LEE | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 12272017 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171228025 | N390, R0600, R51 | Headache | ICD10 | 01102018 | 12272017 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01022018 | 2018-01-02T19:27:21+00:00 |  | 000085208-01 | Darell | Young | NEW CARLISLE FAM PRCT LL | 911235 | ASHOK P | DEVATHA | 1497740328 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01012018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103059 | J449, J9600, R0600, R0902, R7989, R946 | Abnormal results of thyroid function studies | ICD10 | 01102018 | 01012018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01062018 | 2018-01-06T11:24:35+00:00 |  | 000023354-01 | ELMA | SCHRADER | SOUND INPATIENT PHYS OF | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 01052018 | 01092018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108021 | I509 | Heart failure, unspecified | ICD10 | 01102018 | 01052018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11212017 | 2017-11-21T16:58:43+00:00 |  | 000058012-01 | CAROL | MARIK | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01082018 | 01092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171122014 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 01102018 | 01082018 | 01092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01102018 | 2018-01-10T10:48:13+00:00 |  | 000062898-01 | PAMELA | SKEESE | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 01052018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110043 | J441, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 01102018 | 01052018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01102018 | 2018-01-10T08:34:26+00:00 |  | 000037660-01 | VARLON | SMITH | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01092018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110015 | I469 | Cardiac arrest, cause unspecified | ICD10 | 01102018 | 01092018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12262017 | 2017-12-26T16:43:22+00:00 |  | 000089912-01 | Gladys | Chittick | ALLIANCE PHYSICIANS INC | 932718 | JOSEPHINE | RANDAZZO | 1659315216 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12252017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227050 | I4892, I5021, I509 | Heart failure, unspecified | ICD10 | 01102018 | 12252017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12272017 | 2017-12-27T09:21:59+00:00 | 254839937361 | 000091724-01 | Lyle | Wheeler | HOSPITALIST MEDICINE PHY | 931112 | YOGEESH H | SHIVARAMAI-PRA | 1215285689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01102018 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 12262017 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227023 | G9340, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 01102018 | 12262017 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01042018 | 2018-01-04T10:05:24+00:00 |  | 000071564-01 | Samuel | Mcdaniel | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104055 | R079 | Chest pain, unspecified | ICD10 | 01102018 | 01032018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12262017 | 2017-12-26T15:29:21+00:00 |  | 000022324-01 | JAMES | BOSO | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12222017 | 12272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227005 | J0130, J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 01102018 | 12222017 | 12272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01042018 | 2018-01-04T14:39:11+00:00 |  | 000003826-01 | JANE | BEVILACQUA | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104105 | A419, R0602, R509 | Fever, unspecified | ICD10 | 01102018 | 01032018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01032018 | 2018-01-03T09:27:34+00:00 |  | 000116910-01 | Susan | Lawton | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01022018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103076 | D649 | Anemia, unspecified | ICD10 | 01102018 | 01022018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 12192017 | 2017-12-19T11:07:31+00:00 |  | 000087063-01 | Barbara | Dalton | OHIOHEALTH PHYS GRP | 910835 | PAUL R | BEERY | 1508918319 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 12292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219087 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 01102018 | 12182017 | 12292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T13:12:37+00:00 |  | 000006749-01 | DELNO | CUMMANS | COPC CENTRAL OHIO PRIMAR | 918091 | SANA A | SIDDIQUI | 1417100694 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12242017 | 12282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171226165 | K830, R6521 | Severe sepsis with septic shock | ICD10 | 01102018 | 12242017 | 12282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T14:36:55+00:00 |  | 000031700-01 | BARBARA | KERNS | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01052018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105073 | I4891 | Unspecified atrial fibrillation | ICD10 | 01102018 | 01052018 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 01022018 | 2018-01-02T10:46:20+00:00 |  | 000119328-01 | Jeweldean | Howington | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 01102018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 12312017 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103002 | E8342, E876, N390, R531 | Weakness | ICD10 | 01102018 | 12312017 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01052018 | 2018-01-05T08:47:37+00:00 |  | 000121424-01 | Norman | Denny | OSU INTERNAL MED LLC | 923033 | MATTHEW L | MCCUTCHEON | 1720214497 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01042018 | 01062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105019 | R569 | Unspecified convulsions | ICD10 | 01102018 | 01042018 | 01062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01042018 | 2018-01-04T10:00:47+00:00 |  | 000089964-01 | Ruth | Workman | CLERMONT INTERNISTS ASSO | 921516 | CHANDRASEKAR | VAIDYANATHAN | 1659373553 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 01102018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01032018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104035 | A419, E871, I4891, J189, J45901, J9600, R05, R197 | Diarrhea, unspecified | ICD10 | 01102018 | 01032018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12292017 | 2017-12-29T11:48:09+00:00 |  | 000057872-01 | Norma | McCready | INTERNAL MED CARE INC | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 12282017 | 01032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229060 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01102018 | 12282017 | 01032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01102018 | 2018-01-10T09:16:07+00:00 |  | 000089071-01 | Dorothy | Ryan | STEPHEN D HEISE MD & ASS | 924362 | NICHOLAS A | GODBY | 1174775464 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | THE JEWISH HOSPITAL | 01102018 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 01102018 | 01112018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180110029 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 01102018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 12142017 | 2017-12-14T13:33:52+00:00 |  | 000080657-01 | Marva | Johnson | SOUND INPATIENT PHYS OF | 925203 | ASAD S | ALI | 1053386938 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 01102018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 12132017 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171214041 | A419 | Sepsis, unspecified organism | ICD10 | 01102018 | 12132017 | 01092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 12292017 | 2017-12-29T09:04:47+00:00 |  | 000109083-01 | Freda | Warner | MARIETTA MEM HSP | 927682 | ADEKUNLE G | KUKU | 1033225248 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 01102018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 01042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229045 | J111, J189 | Pneumonia, unspecified organism | ICD10 | 01102018 | 12282017 | 01042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01042018 | 2018-01-04T11:33:08+00:00 |  | 000092105-01 | Linda | Griffith | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 01102018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01042018 | 01102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104067 | J189, J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 01102018 | 01042018 | 01102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01072018 | 2018-01-07T10:00:02+00:00 |  | 000081176-01 | Yefim | Vaynshteyn | OHIOHEALTH PHYS GRP | 943489 | HAZEM | NASSAR | 1740412246 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 01102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01042018 | 01052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108029 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 01102018 | 01042018 | 01052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 12292017 | 2017-12-29T13:19:15+00:00 |  | 000093828-01 | Bonnie | Wright | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12282017 | 12312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229071 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01102018 | 12282017 | 12312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01022018 | 2018-01-02T09:57:37+00:00 |  | 000070500-01 | John | Sullivan | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 12182017 | 12212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180102016 | I10, R531 | Weakness | ICD10 | 01102018 | 12182017 | 12212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 12262017 | 2017-12-26T16:54:17+00:00 |  | 000093086-01 | Sharon | Hyer | KETTERING CARDIOTHORACIC | 901598 | BRUCE H | RANK | 1679551618 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01102018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01082018 | 01092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171227009 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 01102018 | 01082018 | 01092018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
