Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-20_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-09-20_URGEMERG
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
| 09122017 | 2017-09-12T08:27:46+00:00 |  | 000105140-01 | Debra | Rose | COMMUNITY HSPIST LLC | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913038 | L0390 | Cellulitis, unspecified | ICD10 | 09202017 | 09112017 | 09152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09132017 | 2017-09-13T15:05:02+00:00 | 251751167256 | 000008707-01 | MARLENE | HAY | COLS INPATIENT CARE INC | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09132017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913044 | I639, N390 | Urinary tract infection, site not specified | ICD10 | 09202017 | 09132017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09132017 | 2017-09-13T12:12:42+00:00 |  | 000028263-01 | ROBERT | HUPP | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09132017 | 09162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914050 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 09202017 | 09132017 | 09162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09182017 | 2017-09-18T11:07:32+00:00 | 257147547260 | 000039316-01 | RANSFORD | CLARK | CEP AMERICA - OHIO LLC | 951978 | TRISHENA | JONES | 1144342866 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09202017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 09172017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918048 | R0781 | Pleurodynia | ICD10 | 09202017 | 09172017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09082017 | 2017-09-08T11:36:17+00:00 |  | 000055190-01 | RUSSELL | ELLIOTT | CARDIOTHORACIC & VASC SU | 903781 | JAMES R | MANAZER | 1205860228 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 09202017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 09142017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908061 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 09202017 | 09142017 | 09152017 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09182017 | 2017-09-18T16:47:44+00:00 |  | 000077347-01 | Phillip | Schenk | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 09202017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170919005 | I639 | Cerebral infarction, unspecified | ICD10 | 09202017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 09122017 | 2017-09-12T12:42:33+00:00 |  | 000051581-01 | KANWARD | FAULK | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914013 | A419 | Sepsis, unspecified organism | ICD10 | 09202017 | 09112017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 09132017 | 2017-09-13T09:31:18+00:00 | 179325837256 | 000079343-01 | Thomas | Moore | MOUNT CARMEL HLTH PRVDRS | 951957 | JOHN J | KELEMEN | 1871554212 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09202017 | Approved | MediGold Southeast OH Classic Preferred | Reports | Inpatient | Inpatient | 09122017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913015 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 09202017 | 09122017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08162017 | 2017-08-16T13:06:52+00:00 |  | 000085198-01 | Beverly | Pierce | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09112017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816064 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09202017 | 09112017 | 09142017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09192017 | 2017-09-19T15:06:44+00:00 |  | 000081939-01 | Gary | Wilson | ADENA MEDICAL GROUP LLC | 927438 | VICTORIA N | ZYSEK | 1124295902 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Pre-Service | PRE |  | THE OH STATE UNIVERSITY HOSPITAL | 09202017 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Inpatient | 09202017 | 09212017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170919114 | I2510, I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 09202017 |  |  | 33510, 34800, 34813 | XPOSE FOR ENDOPROSTH, FEMORL | CPT | 0, 0, 0 | 1, 1, 1 | Denied, Denied, Denied | 0, 0, 0 | CPT | C4 |  |  | No child records to display. |  |
| 09182017 | 2017-09-18T10:42:10+00:00 |  | 000079606-01 | Nancy | Carroll | WACCAMAW REHAB CARE | 952131 |  | WACCAMAW REHAB CARE | 1235540295 | WACCAMAW REHAB CARE | 952131 | 1235540295 | WACCAMAW REHAB CARE | 1235540295 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | WACCAMAW REHAB CARE | 09202017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 09202017 | 09212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170918044 | S72461A | Displ suprcndl fx w intrcndl extn lower end of r femur, init | ICD10 | 09202017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09052017 | 2017-09-05T09:52:24+00:00 | 251563977247 | 000028243-01 | JEFF | DAVIS | MOUNT CARMEL HLTH PRVDRS | 922763 | MALIHA | AKBAR | 1972734077 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09042017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170905011 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 09202017 | 09042017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 09062017 | 2017-09-06T09:21:54+00:00 |  | 000027184-01 | MALLORY | CROUSE | MARIETTA HLTH CARE PHYS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09132017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170906030 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 09202017 | 09132017 | 09202017 | 31622, 32666, 32480 | TOTAL-SUBTOTAL LOBECTOMY | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 8, 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 09182017 | 2017-09-18T13:20:37+00:00 |  | 000077122-01 | Calvin | Sowell Jr | SHARP MEMORIAL HOSPITAL | 950521 |  | SHARP MEMORIAL HOSPITAL | 1407839921 | SHARP MEMORIAL HOSPITAL | 950521 | 1407839921 | SHARP MEMORIAL HOSPITAL | 1407839921 | Inpatient | IP | Concurrent Review | CONC |  | SHARP MEMORIAL HOSPITAL | 09202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09162017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919071 | E875, N179 | Acute kidney failure, unspecified | ICD10 | 09202017 | 09162017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09182017 | 2017-09-18T09:07:40+00:00 | 250623377258 | 000061279-01 | NANCY | KEMPKE | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09152017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918012 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 09202017 | 09152017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09142017 | 2017-09-14T18:59:21+00:00 |  | 000103390-01 | Joanne | Cook | MOUNT CARMEL HLTH SYS | 917573 | STEVEN C | REITZ | 1417116880 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09132017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915108 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 09202017 | 09132017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09182017 | 2017-09-18T15:22:02+00:00 |  | 000113570-01 | Patty | Rhoads | SOUTHERN OHIO MED INC | 931426 | SABIR M | QURAISHI | 1427082841 | ADAMS COUNTY HOSPITAL | 936460 | 0 | ADAMS COUNTY HOSPITAL | 0 | Inpatient | IP | Concurrent Review | CONC |  | ADAMS COUNTY HOSPITAL | 09202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 09162017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919076 | I509 | Heart failure, unspecified | ICD10 | 09202017 | 09162017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09182017 | 2017-09-18T09:33:31+00:00 | 256194397260 | 000085944-01 | Janice | Miller | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09172017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918020 | R079 | Chest pain, unspecified | ICD10 | 09202017 | 09172017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 09162017 | 2017-09-16T12:26:10+00:00 |  | 000006937-01 | WILLIAM | SCHWARTZ | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09152017 | 09192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919067 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 09202017 | 09152017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09182017 | 2017-09-18T16:09:45+00:00 |  | 000054283-01 | GENE | ALTHOFF | FAIRFIELD HLTHCARE PROFS | 946665 | JAMES | PAN | 1235316589 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09152017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919102 | E1122, E1152, L97429 | Non-prs chronic ulcer of left heel and midfoot w unsp severt | ICD10 | 09202017 | 09152017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 09132017 | 2017-09-13T09:27:23+00:00 | 250759067255 | 000007000-01 | LUCILE | MIDDLETON | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09122017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913011 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 09202017 | 09122017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 09112017 | 2017-09-11T11:00:40+00:00 | 254484077252 | 000043174-01 | WILLIAM | WINNIESTAFFER | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09092017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911060 | J159 | Unspecified bacterial pneumonia | ICD10 | 09202017 | 09092017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09182017 | 2017-09-18T11:30:27+00:00 |  | 000076878-01 | Eleanor | Lawhorn | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 09202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09162017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918104 | N3090 | Cystitis, unspecified without hematuria | ICD10 | 09202017 | 09162017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09112017 | 2017-09-11T08:35:31+00:00 | 251631927252 | 000011321-01 | BARBARA | EDWARDS | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09092017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911010 | M6281 | Muscle weakness (generalized) | ICD10 | 09202017 | 09092017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 09202017 | 2017-09-20T08:22:17+00:00 |  | 000084913-01 | Barbara | Byers | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09182017 | 09192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920005 | E041 | Nontoxic single thyroid nodule | ICD10 | 09202017 | 09182017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09202017 | 2017-09-20T11:02:38+00:00 |  | 000100205-01 | Donna | Wolfe | MADISON FAMILY HEALTH | 905215 | ADAM C | WEISER | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 09182017 | 09192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920057 | D414 | Neoplasm of uncertain behavior of bladder | ICD10 | 09202017 | 09182017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09112017 | 2017-09-11T15:33:20+00:00 |  | 000022924-01 | RALPH | LOVE | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09092017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170912065 | C9590, D649, D696 | Thrombocytopenia, unspecified | ICD10 | 09202017 | 09092017 | 09182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 09122017 | 2017-09-12T16:40:28+00:00 | 017937680-7241 | 000118773-01 | Sherry | Reid | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09192017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913003 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09202017 | 09182017 | 09192017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09062017 | 2017-09-06T12:40:51+00:00 | 025004813-7250 | 000043848-01 | Robert | Backus | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 09182017 | 09192017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908007 | M47816 | Spondylosis w/o myelopathy or radiculopathy, lumbar region | ICD10 | 09202017 | 09182017 | 09192017 | 27299 | UNLSTD PROC, PELVIS OR HIP JOINT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09142017 | 2017-09-14T08:35:18+00:00 |  | 000090661-01 | Steven | Shipley | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09132017 | 09172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914094 | K8020 | Calculus of gallbladder w/o cholecystitis w/o obstruction | ICD10 | 09202017 | 09132017 | 09172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08292017 | 2017-08-29T15:36:22+00:00 | 025789514-7166 | 000056032-01 | BRENDA | ADKINS | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09192017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829101 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 09202017 | 09192017 | 09202017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09182017 | 2017-09-18T11:18:45+00:00 | 255345857259 | 000069856-01 | Jimmie | Hatfield | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 09152017 | 09192017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918051 | I509 | Heart failure, unspecified | ICD10 | 09202017 | 09152017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08092017 | 2017-08-09T11:31:23+00:00 |  | 000103240-01 | Michael | Evans Jr | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09202017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 09182017 | 09202017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809046 | E6601 | Morbid (severe) obesity due to excess calories | ICD10 | 09202017 | 09182017 | 09202017 | 43775 | LAP SLEEVE GASTRECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09182017 | 2017-09-18T09:50:38+00:00 | 256056157259 | 000024687-01 | GARLAND | TATTERSON JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 09162017 | 09192017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918029 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 09202017 | 09162017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09152017 | 2017-09-15T09:38:43+00:00 | 258450067257 | 000021465-01 | MARIE | CRANFORD | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09142017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915024 | N179 | Acute kidney failure, unspecified | ICD10 | 09202017 | 09142017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09152017 | 2017-09-15T08:34:32+00:00 | 261906817257 | 000009415-01 | ALBERT | LAMASTER | JACK STANKO MD LLC | 934869 | JOHN | STANKO JR | 1891751319 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09142017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915010 | R52 | Pain, unspecified | ICD10 | 09202017 | 09142017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09082017 | 2017-09-08T11:09:25+00:00 |  | 000114490-01 | Donald | Green | COPC CENTRAL OHIO PRIMAR | 936975 | SCOTT W | JOHNSON | 1023092582 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09122017 | 09202017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170908053 | C20 | Malignant neoplasm of rectum | ICD10 | 09202017 | 09122017 | 09202017 | 45110 | COMPLETE PROCTECTOMY, 1 OR 2 STAGES | CPT | 1 | 1 | Approved | 9 | CPT | C4 |  |  |  | 8.0 |
| 08092017 | 2017-08-09T16:09:48+00:00 |  | 000089738-01 | William | Rahn | MERCY HEALTH PHYSICIANS | 921760 | FRANCIS X | FLOREZ | 1780630053 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 09202017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 09132017 | 09142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810011 | M160 | Bilateral primary osteoarthritis of hip | ICD10 | 09202017 | 09132017 | 09152017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 2.0 |
| 09152017 | 2017-09-15T14:39:38+00:00 | 025231459-7258 | 000015002-01 | JOYCE | STEVERS | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170915084 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 09202017 | 09182017 | 09202017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09182017 | 2017-09-18T10:46:51+00:00 | 259115817258 | 000094414-01 | Dennis | Miller | GREATER OH CARDIOLOGY | 935114 | VINAY K | CHITKARA | 1659336337 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 09152017 | 09202017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918041 | I259, I498 | Other specified cardiac arrhythmias | ICD10 | 09202017 | 09152017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 09182017 | 2017-09-18T10:13:51+00:00 |  | 000097886-01 | Audrey | Taylor | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 09202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09162017 | 09182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170918098 | I270, I4891, I890, L03119 | Cellulitis of unspecified part of limb | ICD10 | 09202017 | 09162017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08292017 | 2017-08-29T15:16:40+00:00 |  | 000099611-01 | Ralph | Mclean | SYCAMORE PRIMARY CARE GR | 947691 | MICHAEL R | SUN | 1720320211 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 09202017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08282017 | 09022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170830044 | N179 | Acute kidney failure, unspecified | ICD10 | 09202017 | 08282017 | 09022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08292017 | 2017-08-29T10:07:30+00:00 | 261875797241 | 000008900-01 | NONA | THOMAS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08292017 | 09192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170829023 | I509, N179 | Acute kidney failure, unspecified | ICD10 | 09202017 | 08292017 | 09192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 09122017 | 2017-09-12T13:43:06+00:00 |  | 000083266-01 | Ronald | Dewert | SOUND INPATIENT PHYS OF | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 09202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09112017 | 09122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170914010 | I2699, I81, I959, J90, N390 | Urinary tract infection, site not specified | ICD10 | 09202017 | 09112017 | 09132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T16:04:11+00:00 | 025118159-7221 | 000009586-01 | SOPHIE | UNTCH | ORTHOPEDIC ONE INC | 936949 | DAVID F | HUBER | 1518950740 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09182017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810002 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09202017 | 09182017 | 09202017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09112017 | 2017-09-11T09:55:05+00:00 | 253202697254 | 000026970-01 | MARY | NELSON | SOUND PHYSICIANS OF OHI0 | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 09202017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 09112017 | 09202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911035 | N179 | Acute kidney failure, unspecified | ICD10 | 09202017 | 09112017 | 09202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08162017 | 2017-08-16T09:29:04+00:00 |  | 000103328-01 | Larry | Pinkstock | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 09202017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09122017 | 09152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816048 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 09202017 | 09122017 | 09152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 09192017 | 2017-09-19T08:45:17+00:00 |  | 000056720-01 | Dorothy | Kadel | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 09202017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 09042017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920003 | R001 | Bradycardia, unspecified | ICD10 | 09202017 | 09042017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09102017 | 2017-09-10T15:15:02+00:00 |  | 000089665-01 | James | Rowlands | SOUTHEASTERN OHIO PHYS | 924393 | JOSHUA A | PAULICK | 1942499611 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 09202017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 09082017 | 09102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170911071 | K420 | Umbilical hernia with obstruction, without gangrene | ICD10 | 09202017 | 09082017 | 09102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
