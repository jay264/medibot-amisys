Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-16_thru_2017-06-18_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-06-16_thru_2017-06-18_URGEMERG
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
| 04282017 | 2017-04-28T13:39:31+00:00 |  | 000090641-01 | Frank | Taylor | L & P SERVICES INC | 922113 | DAVID P | HILL | 1073518114 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 06162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 04272017 | 05042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170501001 | F0281, F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 06162017 | 04272017 | 05042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 05162017 | 2017-05-16T12:04:46+00:00 |  | 000108934-01 | RICHARD | BAKER | ATRIUM HOSPITALIST GROUP | 948011 | DANIEL J | SHEPS | 1245580331 | ATRIUM MEDICAL CENTER | 936440 | 1700950060 | ATRIUM MEDICAL CENTER | 1700950060 | Inpatient | IP | Concurrent Review | CONC |  | ATRIUM MEDICAL CENTER | 06162017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05162017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516077 | E872, N179, R0600 | Dyspnea, unspecified | ICD10 | 06162017 | 05162017 | 05172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05232017 | 2017-05-23T13:53:37+00:00 |  | 000009895-01 | RAYMOND | MUNSON JR | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06142017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523073 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 06162017 | 06142017 | 06162017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05262017 | 2017-05-26T14:10:57+00:00 |  | 000082086-01 | Martha | Garber | ORTHO ASSOC OF ZANESVILL | 912928 | KARL C | SAUNDERS | 1285626531 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 06142017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526067 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 06162017 | 06142017 | 06152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05302017 | 2017-05-30T09:16:11+00:00 |  | 000004269-01 | ROSEMARY | KIMMET | OHIOHEALTH PHYS GRP | 909727 | JAMES | CASSANDRA | 1104891605 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05262017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530015 | I10 | Essential (primary) hypertension | ICD10 | 06162017 | 05262017 | 06122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06022017 | 2017-06-02T12:11:22+00:00 |  | 000008965-01 | RICHARD | WALTERS | OHIOHEALTH PHYS GRP | 940515 | JENNIFER L | MIDDLETON | 1326183393 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06012017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602055 | I482, I509, J9601 | Acute respiratory failure with hypoxia | ICD10 | 06162017 | 06012017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 06052017 | 2017-06-05T10:18:46+00:00 | 025007033-7154 | 000011988-01 | ELNORA | BELL | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06032017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605042 | M25559 | Pain in unspecified hip | ICD10 | 06162017 | 06032017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 06052017 | 2017-06-05T10:19:20+00:00 |  | 000055641-01 | Judith | Shaeffer | HOCKING VALLEY MED GRP | 949829 | TAREK M | AZIZ | 1679592075 | HOCKING VALLEY COMMUNITY | 906222 | 1295840007 | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 1801903109 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HOCKING VALLEY COMMUNITY HOSP BEHAVI | 06162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06032017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170605075 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 06162017 | 06032017 | 06142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 06072017 | 2017-06-07T10:14:12+00:00 |  | 000026875-01 | CHIE | BERRY | OH GASTRO GRP INC | 948057 | PRACHI S | BIYANI | 1508185398 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170607041 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 06162017 | 06052017 | 06082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06082017 | 2017-06-08T17:05:06+00:00 |  | 000106508-01 | Neale | Lemaster | OHIOHEALTH PHYS GRP | 926929 | NIRAV A | VORA | 1033254636 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 06162017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 06072017 | 06102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170608075 | I639 | Cerebral infarction, unspecified | ICD10 | 06162017 | 06072017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06082017 | 2017-06-08T15:54:08+00:00 |  | 000019016-01 | POY | YEE | COPC CENTRAL OHIO PRIMAR | 910900 | RICHARD G | BAKKER | 1528244357 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06072017 | 06092017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609002 | K810 | Acute cholecystitis | ICD10 | 06162017 | 06072017 | 06102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06092017 | 2017-06-09T15:02:07+00:00 |  | 000034578-01 | DUANE | SHOULTS | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170609067 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 06162017 | 06122017 | 06152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 06102017 | 2017-06-10T07:34:39+00:00 |  | 000098602-01 | John | Humphries | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06092017 | 06152017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612002 | I4891 | Unspecified atrial fibrillation | ICD10 | 06162017 | 06092017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06122017 | 2017-06-12T09:26:05+00:00 | 026235402-7160 | 000045675-01 | BETTY | EVANS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 06092017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612013 | N179, R109 | Unspecified abdominal pain | ICD10 | 06162017 | 06092017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06122017 | 2017-06-12T10:10:19+00:00 |  | 000103865-01 | ROBERT | EDWARDS | COLON & RECTAL SURG INC | 934919 | CHARLES W | TAYLOR III | 1861492969 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 06162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 06102017 | 06162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612028 | R109 | Unspecified abdominal pain | ICD10 | 06162017 | 06102017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 06122017 | 2017-06-12T10:35:56+00:00 | 170926747162 | 000097662-01 | James | Hannahs | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 06122017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612041 | K8020 | Calculus of gallbladder w/o cholecystitis w/o obstruction | ICD10 | 06162017 | 06122017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06122017 | 2017-06-12T08:45:52+00:00 |  | 000032066-01 | JOYCE | CRABTREE | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 06162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06112017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170612096 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 06162017 | 06112017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T09:22:14+00:00 |  | 000007770-01 | RUTH | BARTHOLOMEW | HMP OF OHIO PC | 925622 | CAROLYN M | WHATLEY | 1487750022 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613022 | S52539A, S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 06162017 | 06122017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06132017 | 2017-06-13T13:28:36+00:00 |  | 000110529-01 | Bonnie | Walker | SOUND INPATIENT PHYS OF | 913926 | TERESA | FINKE | 1124224423 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 06162017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06122017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613058 | E0810, I959, K922, R1084 | Generalized abdominal pain | ICD10 | 06162017 | 06122017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T13:19:31+00:00 |  | 000075698-01 | James | Koopman | HMP OF OHIO PC | 944625 | SHIVANI | BHATIA | 1558645366 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06162017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 06122017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613059 | R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 06162017 | 06122017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06132017 | 2017-06-13T16:21:42+00:00 |  | 000099792-01 | KENNETH | JACKSON | THE JEWISH HOSPITAL | 916862 |  | THE JEWISH HOSPITAL | 1336478163 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | HealthHelp | Inpatient | Inpatient | 06092017 | 06142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170613073 | J189 | Pneumonia, unspecified organism | ICD10 | 06162017 | 06092017 | 06152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06162017 | 2017-06-16T08:15:30+00:00 |  | 000049307-01 | LEE | GROVE | CEN OH UROLOGY GRP INC | 937296 | RASHMI I | PATEL | 1295775930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06152017 | 06162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616005 | N401 | Enlarged prostate with lower urinary tract symptoms | ICD10 | 06162017 | 06152017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 06162017 | 2017-06-16T08:26:48+00:00 |  | 000060543-01 | ROBERT | BLANEY | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 06162017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 06152017 | 06162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170616006 | C679 | Malignant neoplasm of bladder, unspecified | ICD10 | 06162017 | 06152017 | 06162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
