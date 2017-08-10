Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-08_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-08_URGEMERG
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
| 07122017 | 2017-07-12T14:32:20+00:00 |  | 000097675-01 | Susan | Garrison | MERCY HEALTH PHYSICIANS | 942580 | JAMES D | ABBOTT | 1598809519 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712067 | T84029D | Dislocation of unsp internal joint prosthesis, subs encntr | ICD10 | 08082017 | 08012017 | 08032017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 08042017 | 2017-08-04T14:24:47+00:00 |  | 000107452-01 | Richard | Milhoan | SELECT SPECIALTY HOSPITA | 915731 |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | SELECT SPECIALTY HOSPITA | 915731 | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 08082017 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Inpatient | 08082017 | 08092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170804058 | I509, J189 | Pneumonia, unspecified organism | ICD10 | 08082017 | 08072017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07272017 | 2017-07-27T11:58:18+00:00 |  | 000050350-01 | JOHN | FERNANDEZ | MIAMI VALLEY HSPISTS GRP | 922638 | YOUSIF S | SHAREEF | 1922235811 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07262017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727049 | N179, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 08082017 | 07262017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 08082017 | 2017-08-08T07:50:20+00:00 |  | 000078857-01 | Raymond | Seals | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | FAWCETT MEMORIAL HOSPITAL 1500 | 901034 | 0 | FAWCETT MEMORIAL HOSPITAL 1500 | 0 | Inpatient | IP | Concurrent Review | CONC |  | FAWCETT MEMORIAL HOSPITAL 1500 | 08082017 | Approved | MediGold Essential Care | Mail | Inpatient | Inpatient | 02212017 | 02222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808001 | K5900 | Constipation, unspecified | ICD10 | 08082017 | 02212017 | 02222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08062017 | 2017-08-06T11:25:34+00:00 |  | 000032541-01 | LEONA | CORWIN | OHIOHEALTH PHYS GRP | 909580 | MATTHEW | JONES | 1598971665 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807087 | E872 | Acidosis | ICD10 | 08082017 | 08032017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08032017 | 2017-08-03T09:51:41+00:00 |  | 000097968-01 | Zetta Mae | Kellis | FAIRFIELD HSPISTS INC | 925018 | CHRISTIAN Z | UGWUALOR | 1871881714 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Inpatient | IP | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803055 | G459, I639 | Cerebral infarction, unspecified | ICD10 | 08082017 | 08022017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08042017 | 2017-08-04T16:40:43+00:00 |  | 000078524-01 | Steven | Kazee | LICKING MEM HLTH PROF | 908828 | ERIC M | LAYNE | 1316164817 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08032017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807068 | F209 | Schizophrenia, unspecified | ICD10 | 08082017 | 08032017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08062017 | 2017-08-06T11:52:58+00:00 |  | 000009690-01 | ALTHEA | MARX | COPC CENTRAL OHIO PRIMAR | 911172 | JOO A | LEE | 1598924524 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807058 | K5669 | Other intestinal obstruction | ICD10 | 08082017 | 08042017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08062017 | 2017-08-06T11:52:12+00:00 |  | 000066394-01 | MARJORIE | URBAN | V GEORGE ZOCHOWSKI DO IN | 913830 | MARIO A | ZACHARATOS | 1831359637 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08082017 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 08032017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807062 | A419, E876 | Hypokalemia | ICD10 | 08082017 | 08032017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08072017 | 2017-08-07T09:57:32+00:00 |  | 000115425-01 | MICHAEL | RAY | MEDICINE INPATIENT GROUP | 945619 | HEMA K | TAMIRI | 1487064770 | NORTHERN WESTCHESTER HOSPITAL ASSOC | 926482 | 1912992215 | NORTHERN WESTCHESTER HOSPITAL ASSOC | 1912992215 | Inpatient | IP | Concurrent Review | CONC |  | NORTHERN WESTCHESTER HOSPITAL ASSOC | 08082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08062017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808024 | A419, R6520 | Severe sepsis without septic shock | ICD10 | 08082017 | 08062017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07212017 | 2017-07-21T10:41:34+00:00 |  | 000005610-01 | NANCY | NICHOLS | NEUROSCIENCE CENTER | 947205 | VIVIEN H | LEE | 1538146907 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07202017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170724003 | R4701 | Aphasia | ICD10 | 08082017 | 07202017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07312017 | 2017-07-31T11:19:05+00:00 |  | 000101348-01 | Paulette | Harrod | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07302017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801043 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 08082017 | 07302017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08022017 | 2017-08-02T09:55:07+00:00 |  | 000072485-01 | KAREN | BUCHHOLTZ | ROBERT TURNER MD INC | 934953 | ROBERT C | TURNER | 1134112238 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08082017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 08072017 | 08082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802042 | M7061 | Trochanteric bursitis, right hip | ICD10 | 08082017 | 08072017 | 08082017 | 27385, 27006, 27067 | EXC BONE CYST C BONE GRFT SEP INC | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 08042017 | 2017-08-04T12:56:46+00:00 |  | 000086287-01 | Barbara | Carpenter | TRIHEALTH H LLC | 925478 |  | TRIHEALTH H LLC | 1811215742 | TRIHEALTH H LLC | 925478 | 1811215742 | TRIHEALTH H LLC | 1811215742 | Inpatient | IP | Concurrent Review | CONC |  | TRIHEALTH H LLC | 08082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08032017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804050 | A419, N390, R079 | Chest pain, unspecified | ICD10 | 08082017 | 08032017 | 08062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07282017 | 2017-07-28T11:51:32+00:00 |  | 000103935-01 | Jimmie | Toles | MERCY HEALTH PHYSICIANS | 920787 | TODD M | BAYER | 1356343008 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 08082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08032017 | 08062017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728037 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 08082017 | 08032017 | 08072017 | 35081 | ANEURYSM ABDOMINAL AORTA | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 4.0 |
| 08032017 | 2017-08-03T12:04:12+00:00 | 25979647200 | 000073044-01 | Gregory | Carter | CANYON MEDICAL CENTER | 935809 | MICHAEL J | KUNSTMANN | 1083655088 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803052 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 08082017 | 08072017 | 08082017 | 34802, 34812, 34825 | ENDOVASC EXTEND PROSTH, INIT | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 08012017 | 2017-08-01T09:37:17+00:00 | 250649157212 | 000009904-01 | JAMES | LAW | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07312017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801028 | A419 | Sepsis, unspecified organism | ICD10 | 08082017 | 07312017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 07312017 | 2017-07-31T15:17:21+00:00 | 025026561-7212 | 000104992-01 | Michael | Davis | SOUND PHYSICIANS OF OHI | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08082017 | Approved | MediGold Essential Care | EMR | Secondary Only | Inpatient | 07312017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731094 | G893 | Neoplasm related pain (acute) (chronic) | ICD10 | 08082017 | 07312017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T07:56:39+00:00 |  | 000065856-01 | MAUDIE | TRIMBLE | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08082017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 07312017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731097 | E872, I959, M25551, N289, N390, R748 | Abnormal levels of other serum enzymes | ICD10 | 08082017 | 07312017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08052017 | 2017-08-05T18:37:51+00:00 |  | 000079156-01 | Marcia | Barber | MERCY HEALTH PHYSICIANS | 948346 | YASIR | KHAN | 1851605851 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807059 | K440 | Diaphragmatic hernia with obstruction, without gangrene | ICD10 | 08082017 | 08042017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08072017 | 2017-08-07T09:27:46+00:00 |  | 000062563-01 | EDWARD | MARTT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08052017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807013 | I639, R45851 | Suicidal ideations | ICD10 | 08082017 | 08052017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08032017 | 2017-08-03T11:09:58+00:00 |  | 000046329-01 | DAVID | SWENSON | MOUNT CARMEL HLTH SYS | 934915 | VIKRAM | TAMASKAR | 1891735817 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08022017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803064 | R5383, R739 | Hyperglycemia, unspecified | ICD10 | 08082017 | 08022017 | 08052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08022017 | 2017-08-02T08:05:30+00:00 |  | 000033881-01 | LOIS | WILLIAMS | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 08082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802059 | R0602 | Shortness of breath | ICD10 | 08082017 | 08012017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 07262017 | 2017-07-26T14:31:12+00:00 |  | 000076113-01 | Melvin | Steigleder | MERCY HEALTH PHYSICIANS | 920951 | BRION P | MORAN | 1174528970 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08082017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726079 | T8453XD, Z96651 | Presence of right artificial knee joint | ICD10 | 08082017 | 08012017 | 08072017 | 27488, 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 6.0 |
| 08042017 | 2017-08-04T06:42:11+00:00 |  | 000040479-01 | PATRICIA | PIERCE | OSU INTERNAL MED LLC | 908009 | KARI L | KENDRA | 1417964958 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 08082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08042017 | 08072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170804043 | C221, R109 | Unspecified abdominal pain | ICD10 | 08082017 | 08042017 | 08072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08072017 | 2017-08-07T18:11:44+00:00 |  | 000070295-01 | Paul | Jacobs | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08082017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08072017 | 08082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170807107 | K4000, K432 | Incisional hernia without obstruction or gangrene | ICD10 | 08082017 | 08072017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07312017 | 2017-07-31T13:51:54+00:00 |  | 000079919-01 | William | Day | MEDICINE INPATIENT GROUP | 926079 | MADHU P | CHALASANI | 1780630947 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 08082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 07292017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801056 | I509, J449, J9620, R0602, R069 | Unspecified abnormalities of breathing | ICD10 | 08082017 | 07292017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08012017 | 2017-08-01T11:39:14+00:00 |  | 000111474-01 | Jack | Emde | BESTPRCTS OF W VIRGINA I | 922878 | ANTHONY W | KITCHEN | 1871531715 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08082017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07282017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801079 | R296 | Repeated falls | ICD10 | 08082017 | 07282017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
