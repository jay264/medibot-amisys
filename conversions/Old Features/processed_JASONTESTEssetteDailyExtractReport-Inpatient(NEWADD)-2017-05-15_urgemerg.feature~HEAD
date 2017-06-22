Feature: Process Essette Extract JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-15_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: JASONTESTEssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-15_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
	And the test pauses for "2" seconds

	And I use the sub class "<sub_class>" to determine what location to enter into the location image
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
| 03102017 | 2017-03-10T09:53:12+00:00 |  | 000097597-01 | Stuart | MacDonald | SPFLD ORTHO SPORTS MED L | 908174 | IAN | THOMPSON | 1619928371 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 05122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170310021 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05122017 | 05082017 | 05112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 4 | CPT | C4 |  |  |  | 3.0 |
| 04172017 | 2017-04-17T11:35:41+00:00 |  | 000098428-01 | BILL | BEEBE JR | MOUNT CARMEL HLTH PRVDRS | 904976 | WILLIAM R | ZERICK | 1568469609 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 05122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 04192017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170417031 | M542, M549 | Dorsalgia, unspecified | ICD10 | 05122017 | 04192017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 23.0 |
| 04192017 | 2017-04-19T11:07:15+00:00 | 017808291-7111 | 000105373-01 | Linda | Wagstaff | JOINT IMPLANT SURGEONS | 931649 | JASON A | REED | 1821254095 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05122017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05102017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170419046 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05122017 | 05102017 | 05112017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04202017 | 2017-04-20T11:07:50+00:00 |  | 000094578-01 | Sherrie | Booker | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04192017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420030 | R6521 | Severe sepsis with septic shock | ICD10 | 05122017 | 04192017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 04202017 | 2017-04-20T10:36:27+00:00 |  | 000110921-01 | Craig | Hartpence | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420039 | K635 | Polyp of colon | ICD10 | 05122017 | 05082017 | 05112017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04192017 | 2017-04-19T15:10:26+00:00 |  | 000080899-01 | Rozanna | Fitchpatrick | CONCORD PSYCHIATRY LLC | 943674 | SCOTT D | YOHO | 1821380809 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | DUBLIN SPRINGS LLC | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | DUBLIN SPRINGS LLC | 05122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04192017 | 04282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170420041 | F1020, F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 05122017 | 04192017 | 04282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04242017 | 2017-04-24T14:40:31+00:00 |  | 000106699-01 | John | Kotsifas | STEVEN J MORGENSTERN MD | 935242 | STEVEN J | MORGENSTERN | 1417916651 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04212017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425030 | I4891 | Unspecified atrial fibrillation | ICD10 | 05122017 | 04212017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 04252017 | 2017-04-25T13:23:02+00:00 |  | 000099492-01 | Cheryl | Oelker | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 05122017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05082017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425094 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 05122017 | 05082017 | 05112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04252017 | 2017-04-25T10:47:39+00:00 |  | 000068314-01 | MICHAEL | BURTON | HEALTHSOUTH REHABILITATI | 949538 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | HEALTHSOUTH REHABILITATI | 949538 | 1598099814 | HEALTHSOUTH REHABILITATION HOSPITAL | 1598099814 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | HEALTHSOUTH REHABILITATION HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425106 | M4622 | Osteomyelitis of vertebra, cervical region | ICD10 | 05122017 | 04262017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 04252017 | 2017-04-25T12:55:24+00:00 |  | 000037615-01 | CLARENCE | BENSON JR | HOSP SVC MED GRP OF MARY | 918652 | FRAOL | ADUGNA | 1134386519 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242017 | 04292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170425112 | J189, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05122017 | 04242017 | 04292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04252017 | 2017-04-25T09:36:19+00:00 |  | 000107728-01 | Raymond | Walters | RANGANATHAN, VADAK H | 905298 | VADAK H | RANGANATHAN | 1992773212 | COMMUNITY MERCY HEALTH P | 904635 | 1831157205 | ACUTE REHABILITATION UNIT OF SPRINGF | 1831157205 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | ACUTE REHABILITATION UNIT OF SPRINGF | 05122017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04272017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426059 | I639 | Cerebral infarction, unspecified | ICD10 | 05122017 | 04272017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 04272017 | 2017-04-27T08:16:12+00:00 |  | 000086601-01 | Linda | Ford | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 04262017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427005 | K5660 | Unspecified intestinal obstruction | ICD10 | 05122017 | 04262017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 04262017 | 2017-04-26T12:32:28+00:00 |  | 000034333-01 | PHILLIP | ROBINSON | ADENA MEDICAL GROUP LLC | 927691 | ROSE | TRESS | 1184944373 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252017 | 04272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170427032 | J449, R0602 | Shortness of breath | ICD10 | 05122017 | 04252017 | 04272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04282017 | 2017-04-28T08:44:48+00:00 | 025494594-7114 | 000048872-01 | URVIN | HARTSOCK | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05102017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428002 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05122017 | 05102017 | 05112017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04282017 | 2017-04-28T14:16:42+00:00 |  | 000021622-01 | HELEN | MYERS | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272017 | 05032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428049 | R0902 | Hypoxemia | ICD10 | 05122017 | 04272017 | 05032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04282017 | 2017-04-28T13:39:31+00:00 |  | 000090641-01 | Frank | Taylor | L & P SERVICES INC | 922113 | DAVID P | HILL | 1073518114 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04272017 | 05042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501001 | F0281, F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 05122017 | 04272017 | 05042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05012017 | 2017-05-01T14:36:56+00:00 |  | 000071934-01 | Lula | Peters | BEAVERCREEK MEDICAL CENTER | 919117 |  | BEAVERCREEK MEDICAL CENTER | 1760764849 | BEAVERCREEK MEDICAL CENTER | 919117 | 1760764849 | BEAVERCREEK MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | BEAVERCREEK MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501144 | M549 | Dorsalgia, unspecified | ICD10 | 05122017 | 04302017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05012017 | 2017-05-01T12:30:37+00:00 |  | 000066373-01 | HOWARD | FRENCH | APOGEE MED GRP OHIO INC | 944565 | AJIT | LALE | 1275855207 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05122017 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 04292017 | 05052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502020 | I4891, M6281, N179 | Acute kidney failure, unspecified | ICD10 | 05122017 | 04292017 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05022017 | 2017-05-02T15:47:25+00:00 |  | 000022289-01 | JAMES | WILSON | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170502104 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05122017 | 05092017 | 05112017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05022017 | 2017-05-02T08:12:24+00:00 |  | 000090661-01 | Steven | Shipley | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05012017 | 05042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503006 | J449, J984, K5641 | Fecal impaction | ICD10 | 05122017 | 05012017 | 05042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05032017 | 2017-05-03T10:01:45+00:00 |  | 000065824-01 | JOHN | BOHLKEN | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05022017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503007 | I998 | Other disorder of circulatory system | ICD10 | 05122017 | 05022017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05032017 | 2017-05-03T11:54:17+00:00 |  | 000000282-01 | JOAN | SMITH | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170503039 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05122017 | 05092017 | 05112017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05052017 | 2017-05-05T09:19:03+00:00 | 260751057124 | 000008965-01 | RICHARD | WALTERS | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05042017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170505008 | J159 | Unspecified bacterial pneumonia | ICD10 | 05122017 | 05042017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05042017 | 2017-05-04T11:45:06+00:00 |  | 000065650-01 | PHYLLIS | APPENZELLER | ALLIANCE PHYSICIANS INC | 912194 | ANDREW H | GABRIEL | 1205990033 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05032017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508004 | R1084 | Generalized abdominal pain | ICD10 | 05122017 | 05032017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05042017 | 2017-05-04T15:16:38+00:00 |  | 000034026-01 | MARY | YOAKEM | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05032017 | 05052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508033 | R4182 | Altered mental status, unspecified | ICD10 | 05122017 | 05032017 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042017 | 2017-05-04T15:37:39+00:00 |  | 000022358-01 | CHARLES | SCHMELZER | ARBOR VIEW FAM MED INC | 937109 | JOHN E | LLOYD | 1740252923 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042017 | 05052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508036 | I472 | Ventricular tachycardia | ICD10 | 05122017 | 05042017 | 05052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05082017 | 2017-05-08T13:40:56+00:00 |  | 000010639-01 | PATRICK | ROSE | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05072017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508074 | K5660 | Unspecified intestinal obstruction | ICD10 | 05122017 | 05072017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05082017 | 2017-05-08T15:19:27+00:00 |  | 000106016-01 | Michelle | Damon | HEARTLAND CARDIOLOGY LLC | 936383 | DANIEL J | EVANS | 1760477640 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05142017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05062017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508081 | S37009A | Unspecified injury of unspecified kidney, initial encounter | ICD10 | 05142017 | 05062017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05052017 | 2017-05-05T10:04:47+00:00 |  | 000084665-01 | Pearl | Ryan | SOUND INPATIENT PHYS OF | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 05122017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05042017 | 05072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508090 | R0600 | Dyspnea, unspecified | ICD10 | 05122017 | 05042017 | 05082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05082017 | 2017-05-08T16:13:45+00:00 |  | 000073481-01 | James | Cheadle | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05142017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05072017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508094 | R0602 | Shortness of breath | ICD10 | 05142017 | 05072017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05082017 | 2017-05-08T16:15:47+00:00 |  | 000092431-01 | Judy | Howard | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05072017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508095 | R109 | Unspecified abdominal pain | ICD10 | 05122017 | 05072017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05052017 | 2017-05-05T10:18:06+00:00 |  | 000100931-01 | Janet | Casada | SOUND KENWOOD HSPISTS OF | 924460 | RAVIKANTH | CHANDA | 1609175496 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 05122017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05042017 | 07092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170508096 | G9340 | Encephalopathy, unspecified | ICD10 | 05122017 | 05042017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05092017 | 2017-05-09T08:04:15+00:00 |  | 000100979-01 | Patricia | Kenyon | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 05082017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509012 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 05122017 | 05082017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05052017 | 2017-05-05T12:16:04+00:00 |  | 000088964-01 | Barbara | Haynes | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509021 | N390, R079, R51 | Headache | ICD10 | 05122017 | 05042017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05092017 | 2017-05-09T10:37:18+00:00 |  | 000012596-01 | MARTHA | SANDERS | PICKAWAY HEALTH SERVICES | 936372 | WILLIAM F | EMLICH JR | 1194764753 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05082017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509031 | I4891 | Unspecified atrial fibrillation | ICD10 | 05142017 | 05082017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05092017 | 2017-05-09T10:42:31+00:00 |  | 000036738-01 | MARY | GRAVES | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05082017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509034 | M25559 | Pain in unspecified hip | ICD10 | 05142017 | 05082017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05072017 | 2017-05-07T12:37:32+00:00 |  | 000005242-01 | WINONA | ROBERTS | OHIOHEALTH PHYS GRP | 948319 | ERIC | EGNOT | 1942542006 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052017 | 05092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509039 | I4891 | Unspecified atrial fibrillation | ICD10 | 05122017 | 05052017 | 05092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05092017 | 2017-05-09T15:40:28+00:00 |  | 000009167-01 | EDGAR | LUCAS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05072017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509134 | E875, K5900 | Constipation, unspecified | ICD10 | 05122017 | 05072017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05082017 | 2017-05-08T16:57:16+00:00 |  | 000107111-01 | E Robert | Hitchcock | ALLIANCE PHYSICIANS INC | 948840 | RAGAVAN | NARAYANAN | 1205147030 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05072017 | 05082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170509137 | S06360A | Traum hemor cereb, w/o loss of consciousness, init | ICD10 | 05122017 | 05072017 | 05082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05102017 | 2017-05-10T09:53:56+00:00 | 251878387129 | 000007068-01 | NINA | JONES | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05122017 | Approved | MediGold Classic Preferred | Reports | ACO | Inpatient | 05092017 | 05112017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510013 | I509 | Heart failure, unspecified | ICD10 | 05122017 | 05092017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092017 | 2017-05-09T10:43:00+00:00 |  | 000084483-01 | Jonathan | Kirk | MARIETTA HLTH CARE PHYS | 922106 | JOSEPH A | ZACHARIAS | 1881847572 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05122017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510027 | E872, E875, N179, N19 | Unspecified kidney failure | ICD10 | 05122017 | 05082017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05092017 | 2017-05-09T11:15:14+00:00 |  | 000073771-01 | Evelyn | Kintner | APOGEE MED GRP OHIO INC | 947769 | OLANREWAJU | ISHOLA | 1639500606 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082017 | 05092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510030 | A419, J189, J9600, N179, R0600, R0602 | Shortness of breath | ICD10 | 05122017 | 05082017 | 05092017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05092017 | 2017-05-09T13:29:24+00:00 |  | 000055091-01 | DONNA | WEBB | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510040 | D696, R21, R233 | Spontaneous ecchymoses | ICD10 | 05122017 | 05092017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092017 | 2017-05-09T13:59:02+00:00 |  | 000103613-01 | Eon | Ott | MENTAL HLTH SRVS FOR CLA | 907693 | YIU-CHUNG | CHAN | 1720036346 | MENTAL HEALTH SERVICES FOR CLARK | 904933 | 1417948407 | MENTAL HEALTH SERVICES FOR CLARK | 1417948407 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MENTAL HEALTH SERVICES FOR CLARK | 05122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082017 | 05102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510044 | F209, F329 | Major depressive disorder, single episode, unspecified | ICD10 | 05122017 | 05082017 | 05102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05092017 | 2017-05-09T14:24:29+00:00 |  | 000084923-01 | Betty | Keller | FAM PHYS OF SPRINGFIELD | 907238 | MICHAEL S | MCKEE | 1124043625 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05122017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05082017 | 05112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170510063 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 05122017 | 05082017 | 05112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05112017 | 2017-05-11T12:58:46+00:00 |  | 000104389-01 | HOBERT | PARKER | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05122017 | Approved | MediGold Essential Care | Mail | Observation | Inpatient | 03222017 | 03222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511045 | M545 | Low back pain | ICD10 | 05122017 | 03222017 | 03222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05122017 | 2017-05-12T10:54:29+00:00 |  | 000096301-01 | Dennis | Fyffe | GLATFELTER FAMILY MEDICA | 939538 | ALAN N | WARD | 1598796898 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 05122017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512021 | R509 | Fever, unspecified | ICD10 | 05122017 | 05082017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05122017 | 2017-05-12T12:12:30+00:00 |  | 000007714-01 | BETTIE | HENSLEY | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05142017 | Approved | MediGold Classic Preferred | Reports | Secondary Only | Inpatient | 05112017 | 05122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512034 | G9340 | Encephalopathy, unspecified | ICD10 | 05142017 | 05112017 | 05122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05122017 | 2017-05-12T17:25:06+00:00 |  | 000059279-01 | MINNIE | JONES | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05142017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05112017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512090 | K439, K819 | Cholecystitis, unspecified | ICD10 | 05142017 | 05112017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05112017 | 2017-05-11T15:47:53+00:00 |  | 000086532-01 | Alan | Silverman | MERCY HEALTH PHYSICIANS | 921804 | DAVID G | BABBITT | 1346249018 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Inpatient | IP | Pre-Service | PRE |  | GOOD SAMARITAN MEDICAL CENTER | 05122017 | Denied | MediGold Southwest OH Essential Care | Fax | Services Available In-Network | Inpatient | 05122017 | 05132017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170511083 | I340 | Nonrheumatic mitral (valve) insufficiency | ICD10 | 05122017 |  |  | 33425 | MITRAL VALVE-VALVULOPLASTY, OPEN | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  | No child records to display. |  |
