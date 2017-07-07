Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-03_thru_2017-0704_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-07-03_thru_2017-0704_URGEMERG
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
| 04072017 | 2017-04-07T18:39:00+00:00 |  | 000040165-01 | ALAN | FORSYTHE | ALLIANCE PHYSICIANS INC | 910681 | RAYMOND J | POELSTRA | 1972530848 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06282017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170410054 | M4806 | Spinal stenosis, lumbar region | ICD10 | 07032017 | 06282017 | 07012017 | 22558, 22585, 22853, 22845, 22612, 22842, 63047 | LMCTMY;DCMP CRD/NRV RT,SNG SG-LMBR | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  | No child records to display. |  |
| 06022017 | 2017-06-02T10:09:37+00:00 |  | 000090260-01 | Rose | Lawson | ORTHO ASSOC OF DAYTON | 910785 | THOMAS M | COOK | 1942281308 | MEDICAL CENTER AT ELIZAB | 905938 | 1639126220 | MEDICAL CENTER AT ELIZABETH PLACE | 1639126220 | Inpatient | IP | Concurrent Review | CONC |  | MEDICAL CENTER AT ELIZABETH PLACE | 07032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06132017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602043 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 07032017 | 06132017 | 06152017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06072017 | 2017-06-07T12:07:35+00:00 |  | 000034998-01 | HOWARD | FEOLE | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06272017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607053 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 07032017 | 06272017 | 06302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 34 | CPT | C4 |  |  |  | 3.0 |
| 06072017 | 2017-06-07T16:27:14+00:00 |  | 000089362-01 | Glenna | Perry | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06302017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608003 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 07032017 | 06302017 | 07022017 | 62272, 62223, 61781 | SCAN PROC CRANIAL INTRA | CPT | 2, 2, 1 | 2, 2, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 06122017 | 2017-06-12T09:53:03+00:00 |  | 000004265-01 | RAYMOND | WAY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06112017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612025 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 07032017 | 06112017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 06122017 | 2017-06-12T16:10:12+00:00 |  | 000065030-01 | GARRY | BENNETT | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06112017 | 06282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613011 | I509, R0600, R109 | Unspecified abdominal pain | ICD10 | 07032017 | 06112017 | 06282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 06132017 | 2017-06-13T10:59:16+00:00 | 025036894-7159 | 000031202-01 | PATRICIA | FOWLER | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06302017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613044 | M1732 | Unilateral post-traumatic osteoarthritis, left knee | ICD10 | 07032017 | 06302017 | 07012017 | 27447, 20670 | RMVL IMPLANT SUPERFICIAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06132017 | 2017-06-13T18:51:52+00:00 |  | 000015288-01 | ROBERT | MABE | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 07032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06192017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170614002 | I639 | Cerebral infarction, unspecified | ICD10 | 07032017 | 06192017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06162017 | 2017-06-16T08:07:41+00:00 | 026636971-7158 | 000056492-01 | NEDIE | GILLIAN | ORTHO & NEURO CONSULTS I | 935912 | LARRY T | TODD | 1649254087 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07032017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 06292017 | 07012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616008 | M4317, M4806, M4807, M5126 | Other intervertebral disc displacement, lumbar region | ICD10 | 07032017 | 06292017 | 07012017 | 63047, 63048, 22633, 22853, 22840, 20936, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 06162017 | 2017-06-16T14:50:22+00:00 |  | 000115194-01 | Billy | Mitchell | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06162017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616059 | I509 | Heart failure, unspecified | ICD10 | 07032017 | 06162017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 06192017 | 2017-06-19T11:23:53+00:00 | 251106707168 | 000043637-01 | WENDLE | SMITH | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06172017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170619063 | J159, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 07032017 | 06172017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06202017 | 2017-06-20T11:33:59+00:00 |  | 000108847-01 | Shirley | Johnson | ALLIANCE PHYSICIANS INC | 914727 | GURPAL S | AHLUWALIA | 1740314954 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06282017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620063 | M1711, M25561 | Pain in right knee | ICD10 | 07032017 | 06282017 | 07012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06202017 | 2017-06-20T12:19:06+00:00 |  | 000088300-01 | John | Staten | KETTERING CARDIOTHORACIC | 901598 | BRUCE H | RANK | 1679551618 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06262017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620075 | I70219, I739 | Peripheral vascular disease, unspecified | ICD10 | 07032017 | 06262017 | 06292017 | 35656 | BYPASS GR, NT VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06202017 | 2017-06-20T13:32:05+00:00 | 025554106-7173 | 000025030-01 | ADONNA | SMITH | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06302017 | 07012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620100 | M75122 | Complete rotatr-cuff tear/ruptr of left shoulder, not trauma | ICD10 | 07032017 | 06302017 | 07012017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06202017 | 2017-06-20T15:11:45+00:00 |  | 000105907-01 | Kenzel | Sizemore | DAYTON SURGEONS INC | 901564 | JONATHAN E | VELASCO | 1962477661 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06232017 | 06302017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620111 | I739, I998, Z89431 | Acquired absence of right foot | ICD10 | 07032017 | 06232017 | 06302017 | 27780 | CLSD FX PROX FIB/SHAFT SFT TIS CLSL | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 06212017 | 2017-06-21T14:00:57+00:00 | 025020892-7108 | 000105443-01 | Victoria | Williams | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06292017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170621065 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 07032017 | 06292017 | 06302017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06222017 | 2017-06-22T10:55:56+00:00 | 025964226-7173 | 000095798-01 | Fredricka | Reed | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06292017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622039 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 07032017 | 06292017 | 06302017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06222017 | 2017-06-22T13:26:54+00:00 |  | 000074247-01 | Dale | Knight | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 07032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06212017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170622051 | I509, R4182 | Altered mental status, unspecified | ICD10 | 07032017 | 06212017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 06232017 | 2017-06-23T10:11:46+00:00 | 256768097173 | 000034905-01 | BARBARA | FREEMAN | HMP OF OHIO PC | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06222017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170623019 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 07032017 | 06222017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06262017 | 2017-06-26T08:27:31+00:00 | 256482477175 | 000065787-01 | DONNA | ABEL | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06242017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626004 | L0390 | Cellulitis, unspecified | ICD10 | 07032017 | 06242017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06262017 | 2017-06-26T10:41:30+00:00 | 250319997175 | 000032692-01 | CARL | EVANS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06242017 | 06302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626037 | I739, R42 | Dizziness and giddiness | ICD10 | 07032017 | 06242017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06262017 | 2017-06-26T10:42:40+00:00 | 255280827175 | 000086385-01 | Rita | Bogan | MOUNT CARMEL HLTH SYS | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06242017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626038 | E872 | Acidosis | ICD10 | 07032017 | 06242017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 06262017 | 2017-06-26T08:31:17+00:00 |  | 000065527-01 | FREDA | CRAIG | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06252017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626088 | N179, R0600, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07032017 | 06252017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06262017 | 2017-06-26T10:55:53+00:00 | 026084548-7087 | 000062396-01 | GRETCHEN | FORTNER | SCIOTO VALLEY UROLOGY IN | 936922 | GEORGE T | HO | 1255390852 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06302017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170626103 | N8111, N812 | Incomplete uterovaginal prolapse | ICD10 | 07032017 | 06302017 | 07032017 | 57288, 52000, 57280, 57270 | RPR ENTROCLE, ABDOMNL APPROACH | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 06272017 | 2017-06-27T10:09:45+00:00 | 025042689-7139 | 000038521-01 | LAHOMA | GRAY | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 06292017 | 06302017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627045 | M25512 | Pain in left shoulder | ICD10 | 07032017 | 06292017 | 06302017 | 23472, 23420, 23440, 23020 | RELEASE CAPSULAR CONTRACTURE | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 06272017 | 2017-06-27T10:56:20+00:00 |  | 000086620-01 | Larry | Shock | KEVIN M REID DO INC | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06262017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627083 | R0602, R42 | Dizziness and giddiness | ICD10 | 07032017 | 06262017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06272017 | 2017-06-27T15:05:34+00:00 |  | 000106389-01 | MICHAEL | JONES | APOGEE MED GRP OHIO INC | 945268 | SEGUN P | ADEOYE | 1629418025 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06262017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627096 | A419, E875, J189, K922, N179, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 07032017 | 06262017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06282017 | 2017-06-28T11:06:11+00:00 |  | 000088251-01 | John | Lehman | APOGEE MED GRP OHIO INC | 945268 | SEGUN P | ADEOYE | 1629418025 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06272017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628042 | I5023 | Acute on chronic systolic (congestive) heart failure | ICD10 | 07032017 | 06272017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06282017 | 2017-06-28T14:48:07+00:00 | 178676327179 | 000071688-01 | Robert | Persinger | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06282017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170628071 | R0600 | Dyspnea, unspecified | ICD10 | 07032017 | 06282017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06292017 | 2017-06-29T09:13:21+00:00 | 253096017179 | 000048939-01 | MONA | KNOUSE | COLS INPATIENT CARE INC | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06282017 | 07022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629012 | S62109A | Fracture of unsp carpal bone, unsp wrist, init for clos fx | ICD10 | 07032017 | 06282017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06292017 | 2017-06-29T09:29:22+00:00 | 026037708-7170 | 000072736-01 | Marjory | Hillis | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 06262017 | 06302017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629014 | I6529 | Occlusion and stenosis of unspecified carotid artery | ICD10 | 07032017 | 06262017 | 06302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06292017 | 2017-06-29T09:38:50+00:00 | 255456727180 | 000081889-01 | Dawn | Labarge | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 06292017 | 07012017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629018 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 07032017 | 06292017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06292017 | 2017-06-29T09:59:39+00:00 | 025215128-7179 | 000040475-01 | DONALD | ORR | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06282017 | 07032017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629028 | J439 | Emphysema, unspecified | ICD10 | 07032017 | 06282017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 06292017 | 2017-06-29T15:05:17+00:00 | 259843537180 | 000117983-01 | JOHN | MCALEER | COPC CENTRAL OHIO PRIMAR | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06292017 | 07012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170629077 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 07032017 | 06292017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06302017 | 2017-06-30T08:42:26+00:00 | 255393437181 | 000032029-01 | DOROTHY | SMITH | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 06292017 | 07032017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630007 | I4891 | Unspecified atrial fibrillation | ICD10 | 07032017 | 06292017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 06302017 | 2017-06-30T13:44:58+00:00 |  | 000040326-01 | LAWRENCE | DERUSHA | CEN OH UROLOGY GRP INC | 935062 | MICHAEL A | WODARCYK | 1407827264 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06292017 | 07012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630049 | R338 | Other retention of urine | ICD10 | 07032017 | 06292017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06302017 | 2017-06-30T14:56:17+00:00 | 251502637181 | 000029485-01 | PHYLLIS | COLLIER | HMP OF OHIO PC | 948549 | SHRAVAN | LIKKI | 1891136230 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06302017 | 07032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630052 | M84373S | Stress fracture, unspecified ankle, sequela | ICD10 | 07032017 | 06302017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06302017 | 2017-06-30T15:11:53+00:00 | 253449507181 | 000046931-01 | KENNETH | MOORE | HMP OF OHIO PC | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 06302017 | 07022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170630056 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 07032017 | 06302017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T07:10:20+00:00 | 025870596-7165 | 000013459-01 | ELIZABETH | DRISLANE | COPC CENTRAL OHIO PRIMAR | 936729 | LAURIE E | GOSSARD | 1639285117 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 06302017 | 07022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703001 | I495 | Sick sinus syndrome | ICD10 | 07032017 | 06302017 | 07022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T09:24:26+00:00 | 254029907182 | 000080263-01 | Estillene | Carr | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07012017 | 07032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703011 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 07032017 | 07012017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T09:41:12+00:00 | 250306567183 | 000072234-01 | Charles | Donaldson | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07012017 | 07032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703016 | S32810A | Multiple fx of pelvis w stable disrupt of pelvic ring, init | ICD10 | 07032017 | 07012017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07032017 | 2017-07-03T10:21:08+00:00 | 258741657183 | 000101847-01 | Donald | Holland | CENTRAL OHIO SURG ASSOC | 935984 | MARCUS R | MILLER | 1518965474 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 07032017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 07022017 | 07032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703033 | K37 | Unspecified appendicitis | ICD10 | 07032017 | 07022017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07032017 | 2017-07-03T17:37:02+00:00 | 017870403-7181 | 000113617-01 | Jane | Shuff | PICKAWAY HEALTH SERVICES | 943669 | SANJU | MAHATO | 1366791923 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 07032017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 06302017 | 07012017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703134 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 07032017 | 06302017 | 07012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
