Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-06_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-06_URGEMERG
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
| 08282017 | 2017-08-28T10:50:21+00:00 | 252365897237 | 000042530-01 | RONALD | SINES | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08262017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828056 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 09062017 | 08262017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08302017 | 2017-08-30T09:16:15+00:00 |  | 000081407-01 | Cynthia | Perry | NEPHROLOGY CNSLT SE OH | 921901 | DAVID M | DEMBSKI | 1972586139 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08292017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830035 | A047, E119, E669, N186, R5381, Z992 | Dependence on renal dialysis | ICD10 | 09062017 | 08292017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09062017 | 2017-09-06T09:19:39+00:00 |  | 000004036-01 | EDITH | HAMMOND | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08302017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906011 | I509 | Heart failure, unspecified | ICD10 | 09062017 | 08302017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09062017 | 2017-09-06T09:54:55+00:00 |  | 000074549-01 | Lyllian | Helsel | SOUND PHYSICIANS OF OHI0 | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08292017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906027 | R140 | Abdominal distension (gaseous) | ICD10 | 09062017 | 08292017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09052017 | 2017-09-05T10:17:05+00:00 | 260625977245 | 000023418-01 | NANCY | MCKNIGHT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09032017 | 09052017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905022 | S59001A, S82301A | Unsp fracture of lower end of right tibia, init for clos fx | ICD10 | 09062017 | 09032017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07132017 | 2017-07-13T09:08:21+00:00 | 026341046-7222 | 000115118-01 | Janet | Knee | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09012017 | 09052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170713025 | M4316, M4806 | Spinal stenosis, lumbar region | ICD10 | 09062017 | 09012017 | 09052017 | 22612, 22614, 22842, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 09052017 | 2017-09-05T11:10:04+00:00 | 250888897246 | 000046984-01 | GLENN | PLYBON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 09032017 | 09052017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905047 | I4891 | Unspecified atrial fibrillation | ICD10 | 09062017 | 09032017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02272017 | 2017-02-27T09:14:11+00:00 |  | 000112307-01 | Brian | Latham | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Pre-Service | PRE |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Essential Care | Fax | Medical Criteria Met | Inpatient | 09062017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170227016 | K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 09062017 |  |  | 43284 | LAPS ESOPHGL SPHNCTR AGMNTJ | CPT | 0 | 1 | Denied | 61 | CPT | C4 |  |  | No child records to display. |  |
| 08102017 | 2017-08-10T08:38:29+00:00 |  | 000048223-01 | ROBERT | MILLER | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09062017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810017 | T8743 | Infection of amputation stump, right lower extremity | ICD10 | 09062017 | 08102017 | 08152017 | 27886, 27880 | AMPUTATION LEG THRU TIBIA & FIBULA | CPT | 0, 0 | 1, 1 | ,  | 61, 61 | CPT | C4 |  |  |  | 5.0 |
| 08142017 | 2017-08-14T16:28:43+00:00 |  | 000083266-01 | Ronald | Dewert | MEDICINE INPATIENT GROUP | 924498 | RAJARATNAM | PATHMARAJAH | 1891882346 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 09062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08122017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815068 | R4182 | Altered mental status, unspecified | ICD10 | 09062017 | 08122017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 09012017 | 2017-09-01T08:31:43+00:00 | 256893607243 | 000009583-01 | DONNA | COTTERMAN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08312017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901006 | N390 | Urinary tract infection, site not specified | ICD10 | 09062017 | 08312017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09062017 | 2017-09-06T06:02:55+00:00 |  | 000114790-01 | DONALD | GUARD | CEN OH UROLOGY GRP INC | 914520 | FREDERICK L | TAYLOR | 1558527192 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09052017 | 09062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906001 | N359 | Urethral stricture, unspecified | ICD10 | 09062017 | 09052017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08312017 | 2017-08-31T08:03:43+00:00 |  | 000029408-01 | BRUCE | STUMP | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08302017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831038 | J449, R0600 | Dyspnea, unspecified | ICD10 | 09062017 | 08302017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09012017 | 2017-09-01T10:07:02+00:00 | 256321527244 | 000041026-01 | ELEANOR | JONES | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 09012017 | 09052017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901020 | R0602 | Shortness of breath | ICD10 | 09062017 | 09012017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08262017 | 2017-08-26T09:27:58+00:00 |  | 000088685-01 | Flora | Denny | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170827001 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 09062017 | 08252017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08302017 | 2017-08-30T13:09:22+00:00 |  | 000101517-01 | David | Hardy | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08302017 | 09012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830072 | E876, N179, R160 | Hepatomegaly, not elsewhere classified | ICD10 | 09062017 | 08302017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T08:44:30+00:00 |  | 000058031-01 | FRANCES | WELLS | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08272017 | 08302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170828059 | R079 | Chest pain, unspecified | ICD10 | 09062017 | 08272017 | 08302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08282017 | 2017-08-28T14:42:54+00:00 |  | 000104808-01 | JONI | KISTLER | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08262017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829051 | J9600, J9602, R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 09062017 | 08262017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08232017 | 2017-08-23T10:39:58+00:00 |  | 000037842-01 | PATRICIA | RUSS | CENTRAL OH HSPISTS INC | 928694 | IRANI | SAMARANAYAKE | 1164666418 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08232017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824033 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 09062017 | 08232017 | 09052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 08292017 | 2017-08-29T18:33:59+00:00 |  | 000079567-01 | Richard | Gehring | COPC CENTRAL OHIO PRIMAR | 915650 | ADAM A | RUSH | 1649457250 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830031 | K5669 | Other intestinal obstruction | ICD10 | 09062017 | 08282017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08292017 | 2017-08-29T08:49:52+00:00 |  | 000042242-01 | FLOYD | SIMMS | ORTHO TRAUMA SRVS LTD | 909385 | BRUCE G | FRENCH | 1568447696 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08282017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829036 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 09062017 | 08282017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08182017 | 2017-08-18T13:59:26+00:00 |  | 000069573-01 | DAVID | HORN | COPC CENTRAL OHIO PRIMAR | 911172 | JOO A | LEE | 1598924524 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821020 | Z7901 | Long term (current) use of anticoagulants | ICD10 | 09062017 | 08172017 | 09012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 08312017 | 2017-08-31T10:15:12+00:00 |  | 000070555-01 | Rebecca | Swope | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 09062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08302017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831048 | D72829, N390, R4182 | Altered mental status, unspecified | ICD10 | 09062017 | 08302017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T12:01:18+00:00 | 251100807245 | 000098482-01 | Manifred | Smoot | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09022017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905061 | I509, J8410, R0602 | Shortness of breath | ICD10 | 09062017 | 09022017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08302017 | 2017-08-30T08:13:59+00:00 |  | 000051414-01 | BRENDA | BURTON | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 09052017 | 09062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830010 | I713 | Abdominal aortic aneurysm, ruptured | ICD10 | 09062017 | 09052017 | 09062017 | 35081 | ANEURYSM ABDOMINAL AORTA | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09042017 | 2017-09-04T11:17:51+00:00 |  | 000029945-01 | MARY | GOOD | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09032017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905050 | R748 | Abnormal levels of other serum enzymes | ICD10 | 09062017 | 09032017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09022017 | 2017-09-02T12:27:03+00:00 |  | 000028543-01 | DONALD | FRANCIS | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09012017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170904008 | S5290XA | Unsp fracture of unsp forearm, init for clos fx | ICD10 | 09062017 | 09012017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08162017 | 2017-08-16T11:34:48+00:00 | 025536386-7236 | 000064269-01 | SHARON | MERCER | ORTHO SPEC & SPORTS MED | 924918 | ALEKSANDAR | TANCEVSKI | 1194974824 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816059 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09062017 | 09052017 | 09062017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 08302017 | 2017-08-30T09:39:11+00:00 | 016837949-7214 | 000108737-01 | Thomas | Parsley | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09052017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830030 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09062017 | 09052017 | 09062017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09052017 | 2017-09-05T11:57:10+00:00 |  | 000020319-01 | VIRGINIA | PACK | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09062017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09062017 | 09072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170905063 | I639 | Cerebral infarction, unspecified | ICD10 | 09062017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09052017 | 2017-09-05T10:59:24+00:00 | 250837787247 | 000061974-01 | SANDRA | NEWSOME | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 09042017 | 09062017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905044 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 09062017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09062017 | 2017-09-06T16:20:31+00:00 | 026285101-7237 | 000011630-01 | ROSE | SWAGLER | WESTAR OB GYN LLC | 935810 | ALAN J | MURNANE | 1518945559 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09062017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 09052017 | 09062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906098 | N993 | Prolapse of vaginal vault after hysterectomy | ICD10 | 09062017 | 09052017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T14:59:20+00:00 | 263409847245 | 000009860-01 | LESTER | YODER | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09022017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905091 | Z430 | Encounter for attention to tracheostomy | ICD10 | 09062017 | 09022017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08152017 | 2017-08-15T14:47:32+00:00 |  | 000104213-01 | James | Carnes | SOUND INPATIENT PHYS OF | 933044 | TIMOTHY E | BURGER | 1972889236 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09062017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08142017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816043 | R531, W19XXXA | Unspecified fall, initial encounter | ICD10 | 09062017 | 08142017 | 09032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 09052017 | 2017-09-05T09:46:43+00:00 | 252686147247 | 000081866-01 | Patricia | Burgess | CAPITAL PARK FAM HLTH CT | 901106 | CHERIE A | RICHEY | 1629017371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09042017 | 09062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905009 | R1900 | Intra-abd and pelvic swelling, mass and lump, unsp site | ICD10 | 09062017 | 09042017 | 09062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08312017 | 2017-08-31T09:27:30+00:00 | 252287747212 | 000048728-01 | LAWRENCE | SPANGLER | COLON & RECTAL SURG INC | 937269 | ANANTHA | PADMANABHAN | 1689674780 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09062017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 09052017 | 09062017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170831032 | K433, K9403 | Colostomy malfunction | ICD10 | 09062017 | 09052017 | 09062017 | 44340, 45505 | PROCTOPLASTY-PROLAPSE MUCOUS MEM | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 09012017 | 2017-09-01T10:02:13+00:00 |  | 000079075-01 | Beulah | Harper | OSU INTERNAL MED LLC | 908461 | WISAM | MARTINI | 1558300210 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 09062017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08312017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170901035 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 09062017 | 08312017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08282017 | 2017-08-28T13:41:44+00:00 |  | 000006881-01 | FLOSSIE | WALT | APOGEE MED GRP OHIO INC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09062017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 08292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829041 | I639 | Cerebral infarction, unspecified | ICD10 | 09062017 | 08252017 | 08292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09052017 | 2017-09-05T08:04:44+00:00 |  | 000090928-01 | Gary | Simko | MIAMI VALLEY HSPISTS GRP | 914654 | ELIE R | GHAZAL | 1982657391 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09062017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09012017 | 09042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905105 | R4182, R569 | Unspecified convulsions | ICD10 | 09062017 | 09012017 | 09042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
