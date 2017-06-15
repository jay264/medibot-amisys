Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-13_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-13_URGEMERG
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
| 05112017 | 2017-05-11T15:13:31+00:00 |  | 000099105-01 | Peggy | Rycroft | CHRIST HSP ORTHO ASSOC L | 946230 | MARK | MAGNER | 1851525497 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 06132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05312017 | 06012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511080 | E038, E669, I10 | Essential (primary) hypertension | ICD10 | 06132017 | 05312017 | 06012017 | 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 2 | 1, 2 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 05172017 | 2017-05-17T14:57:56+00:00 |  | 000085607-01 | Isaac | Earley | PULMONARY MED OF DAYTON | 904057 | HEMANT M | SHAH | 1033130885 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517079 | I213, R0602, R079 | Chest pain, unspecified | ICD10 | 06132017 | 05172017 | 05202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05192017 | 2017-05-19T09:05:23+00:00 |  | 000104951-01 | Mary | Culbertson | MED STAFF SERVICES LLC | 907315 | FARID | BOUNIF | 1053470518 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 06132017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05182017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519026 | D6489, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06132017 | 05182017 | 05212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T12:00:25+00:00 |  | 000076031-01 | Darryl | Bruns | PULMONARY & CRITICAL CAR | 901419 | GNAN N | THAKORE | 1710979000 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523057 | N179 | Acute kidney failure, unspecified | ICD10 | 06132017 | 05222017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05242017 | 2017-05-24T11:55:35+00:00 |  | 000098128-01 | Franklin | Reese | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 06132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05232017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524031 | A419 | Sepsis, unspecified organism | ICD10 | 06132017 | 05232017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05262017 | 2017-05-26T17:24:42+00:00 |  | 000099350-01 | Paulletta | Whitehead | CLEVELAND CLINIC FNDN | 927889 | IAN C | LAVERY | 1518901073 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06012017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530017 | K632 | Fistula of intestine | ICD10 | 06132017 | 06012017 | 06132017 | 49000, 44120 | ENTERECTOMY SMALL BOWEL | CPT | 1, 1 | 1, 1 | Approved, Approved | 13, 13 | CPT | C4 |  |  |  | 12.0 |
| 05302017 | 2017-05-30T15:14:44+00:00 |  | 000074824-01 | Larry | Howell | MOUNT CARMEL HLTH PRVDRS | 910451 | MICHAEL G | MONCMAN | 1114927571 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06122017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530205 | M4806 | Spinal stenosis, lumbar region | ICD10 | 06132017 | 06122017 | 06132017 | 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05312017 | 2017-05-31T09:59:30+00:00 |  | 000086882-01 | Arnold | Strausbaugh | WRIGHT STATE PHYSICIANS | 929664 | JOHN K | BINI | 1861515165 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 06132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05302017 | 06022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531043 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 06132017 | 05302017 | 06022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06022017 | 2017-06-02T08:22:37+00:00 |  | 000001253-01 | JOSEPH | DEBIJE | COLS INPATIENT CARE INC | 942957 | CHARLES F | WARE III | 1528355922 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06022017 | 06132017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602006 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06132017 | 06022017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06022017 | 2017-06-02T08:49:16+00:00 |  | 000008918-01 | RAYMON | HAGEMAN | EMERGENCY SERVICES INC | 918783 | TIMOTHY J | COMTE | 1821214990 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06012017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602012 | K5660 | Unspecified intestinal obstruction | ICD10 | 06132017 | 06012017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 06022017 | 2017-06-02T09:02:52+00:00 |  | 000000776-01 | PAUL | DANIELS | LANCASTER SURGICAL ASSOC | 936219 | TIMOTHY J | CUSTER | 1144211418 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06012017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602034 | K3580 | Unspecified acute appendicitis | ICD10 | 06132017 | 06012017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06022017 | 2017-06-02T16:19:32+00:00 |  | 000022640-01 | SUE | MCCOY | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 06022017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602084 | G309 | Alzheimer's disease, unspecified | ICD10 | 06132017 | 06022017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06042017 | 2017-06-04T21:49:11+00:00 |  | 000031212-01 | JERRY | MUSICK | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06022017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170604007 | J189 | Pneumonia, unspecified organism | ICD10 | 06132017 | 06022017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06052017 | 2017-06-05T08:53:37+00:00 |  | 000073597-01 | Lottie | York | FAIRFIELD HSPISTS INC | 925424 | CHALANA U | GUNAWARDENA | 1023276821 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06032017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605047 | E871, E876 | Hypokalemia | ICD10 | 06132017 | 06032017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06032017 | 2017-06-03T14:46:21+00:00 |  | 000090850-01 | Ronald | Day | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06022017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605116 | T148 | Other injury of unspecified body region | ICD10 | 06132017 | 06022017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06062017 | 2017-06-06T08:27:32+00:00 |  | 000011951-01 | ROBERT | WILLIAMS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06052017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606009 | R109 | Unspecified abdominal pain | ICD10 | 06132017 | 06052017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06062017 | 2017-06-06T08:57:49+00:00 |  | 000030900-01 | JUSTINE | HARRIS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06052017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606016 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 06132017 | 06052017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 06062017 | 2017-06-06T14:45:22+00:00 |  | 000050128-01 | PAUL | HUNCKLER | MIAMI VALLEY HSPISTS GRP | 915417 | PATRICIA | BACK | 1932351483 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606070 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06132017 | 06052017 | 06092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06072017 | 2017-06-07T08:31:41+00:00 |  | 000038809-01 | MADELYN | LANGLEY | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 06062017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607016 | I639 | Cerebral infarction, unspecified | ICD10 | 06132017 | 06062017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06072017 | 2017-06-07T09:16:19+00:00 |  | 000106389-01 | MICHAEL | JONES | WRIGHT STATE PHYSICIANS | 902808 | MBAGA S | WALUSIMBI | 1295791275 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 06132017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06062017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607029 | J8403, W19XXXA | Unspecified fall, initial encounter | ICD10 | 06132017 | 06062017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06072017 | 2017-06-07T10:10:40+00:00 |  | 000021273-01 | ORABEL | OLDHAM | HMP OF OHIO PC | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06072017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607037 | E119 | Type 2 diabetes mellitus without complications | ICD10 | 06132017 | 06072017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06072017 | 2017-06-07T10:16:35+00:00 |  | 000048297-01 | SANDRA | PHELPS | OHIOHEALTH PHYS GRP | 914750 | JOSHUA H | HILL | 1508044538 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06062017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607045 | D689 | Coagulation defect, unspecified | ICD10 | 06132017 | 06062017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06082017 | 2017-06-08T09:35:11+00:00 | 025669557-7158 | 000069104-01 | JOYCE | ALLEN | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06072017 | 06132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608017 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 06132017 | 06072017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06082017 | 2017-06-08T10:38:35+00:00 |  | 000111089-01 | Donna | Hartman | J B WINTERS DO LLC | 921534 | JENNIFER B | WINTERS | 1235102591 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 06132017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608036 | D62, J449, R0600 | Dyspnea, unspecified | ICD10 | 06132017 | 06072017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06082017 | 2017-06-08T11:02:15+00:00 |  | 000028205-01 | ANN | CARPENTER | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608040 | I4891, I639, N390 | Urinary tract infection, site not specified | ICD10 | 06132017 | 06082017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06082017 | 2017-06-08T11:00:58+00:00 |  | 000025732-01 | VALDO | BEEDY | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608041 | I499 | Cardiac arrhythmia, unspecified | ICD10 | 06132017 | 06082017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T08:10:23+00:00 |  | 000056081-01 | MARGERY | SPEAKMAN | SWEST INPATIENT PHYS LLC | 910713 | SANTOSH R | LIKKI | 1316926934 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06082017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609037 | N390, R4182 | Altered mental status, unspecified | ICD10 | 06132017 | 06082017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T08:11:45+00:00 |  | 000077467-01 | James | Wyrick | HMP OF OHIO PC | 948370 | SAIYID-NAUFAL | T ZAIDI | 1790122307 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 06132017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06082017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609038 | J9621 | Acute and chronic respiratory failure with hypoxia | ICD10 | 06132017 | 06082017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T10:24:26+00:00 | 262980357160 | 000043562-01 | DAVID | BRAUER | COPC CENTRAL OHIO PRIMAR | 905860 | RICHARD A | FIKES | 1235176686 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06132017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612035 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 06132017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T10:28:12+00:00 |  | 000100287-01 | Luther | Hodge Jr. | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Essential Care | Reports | ACO - Pulmonary | Inpatient | 06112017 | 06132017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612036 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 06132017 | 06112017 | 06132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06122017 | 2017-06-12T11:00:09+00:00 |  | 000000744-01 | Daniel | Lesher | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06132017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06092017 | 06122017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612053 | I4891 | Unspecified atrial fibrillation | ICD10 | 06132017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T10:46:40+00:00 |  | 000082150-01 | Robert | Shultz | GENESIS MEDICAL GRP LLC | 913879 | PHILIP | FIELDS | 1932155330 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 06132017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06112017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612134 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 06132017 | 06112017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06122017 | 2017-06-12T10:45:46+00:00 |  | 000000753-01 | STELLA | MANGO | PHYSICIANS REGIONAL MED CENTER | 903975 |  | PHYSICIANS REGIONAL MED CENTER | 1316992134 | PHYSICIANS REGIONAL MED CENTER | 903975 | 1316992134 | PHYSICIANS REGIONAL MED CENTER | 1316992134 | Inpatient | IP | Concurrent Review | CONC |  | PHYSICIANS REGIONAL MED CENTER | 06132017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06092017 | 06122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612142 | L03314 | Cellulitis of groin | ICD10 | 06132017 | 06092017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
