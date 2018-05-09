Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-03_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-03_URGEMERG
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
| 04192018 | 2018-04-19T12:01:31+00:00 |  | 000023934-01 | FRANCES | KINNETT | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04182018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419052 | I639 | Cerebral infarction, unspecified | ICD10 | 05032018 | 04182018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 04172018 | 2018-04-17T14:27:47+00:00 |  | 000070583-01 | Earl | Benner Jr | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417124 | S3739XA | Other injury of urethra, initial encounter | ICD10 | 05032018 | 04172018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 05022018 | 2018-05-02T12:35:10+00:00 |  | 000034646-01 | ALLEN | UNDERWOOD | OSU HLTH SYSTEM NEUROSUR | 917661 | JAMES B | ELDER | 1427221803 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Pre-Service | PRE |  | JAMES CANCER HOSPITAL | 05032018 | Denied | MediGold Classic Preferred | Fax | Services Available In-Network | Inpatient | 05032018 | 05042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180502063 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 05032018 |  |  | 61545 | CRNCTMY FOR EXCSN CRNIOPHRYNGIOMA | CPT | 0 | 1 | Denied | 0 | CPT | C4 |  |  | No child records to display. |  |
| 04172018 | 2018-04-17T08:39:12+00:00 |  | 000039059-01 | JAMES | BURKHART | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05032018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05012018 | 05022018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417032 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05032018 | 05012018 | 05022018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04172018 | 2018-04-17T11:46:00+00:00 |  | 000071043-01 | Lundy | Ross | SOUND INPATIENT PHYS OF | 931112 | YOGEESH H | SHIVARAMAI-PRA | 1215285689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417082 | K830 | Cholangitis | ICD10 | 05032018 | 04162018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 01302018 | 2018-01-30T08:45:26+00:00 |  | 000101774-01 | Muktaben | Upadhyay | MOUNT CARMEL HLTH SYS | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05012018 | 05022018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130053 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05032018 | 05012018 | 05022018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03232018 | 2018-03-23T10:00:48+00:00 |  | 000036782-01 | ELLENIA | WALTON | NEUROSCIENCE CENTER | 942786 | YOUSEF | HANNAWI | 1336476415 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323036 | I639 | Cerebral infarction, unspecified | ICD10 | 05032018 | 03222018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03272018 | 2018-03-27T13:08:21+00:00 |  | 000080680-01 | Donald | Beddies Jr | ORTHO ASSOC OF SW OH INC | 912566 | JAN E | SAUNDERS | 1174525901 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328014 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05032018 | 04302018 | 05022018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 3.0 |
| 04182018 | 2018-04-18T11:23:21+00:00 |  | 000098853-01 | Mary | Mann | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05032018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05012018 | 05022018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418052 | M1711, M25562 | Pain in left knee | ICD10 | 05032018 | 05012018 | 05022018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04232018 | 2018-04-23T11:48:36+00:00 |  | 000107010-01 | Mary | Gilmore | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04252018 | 04282018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423042 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 05032018 | 04252018 | 04282018 | 20680, 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 04232018 | 2018-04-23T07:40:44+00:00 |  | 000102675-01 | Carol | Adams | OSU INTERNAL MED LLC | 909562 | JENNIFER W | MCCALLISTER | 1588775209 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04222018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423061 | G9340 | Encephalopathy, unspecified | ICD10 | 05032018 | 04222018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04252018 | 2018-04-25T12:10:17+00:00 |  | 000030713-01 | AUGUSTINE | WATSON | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04242018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425058 | I4891, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 05032018 | 04242018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04262018 | 2018-04-26T09:50:56+00:00 |  | 000072859-01 | Sheila | Braden | ORTHOPEDIC ONE INC | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05032018 | Approved | TRINITY HEALTH | Fax | EIS | Inpatient | 05012018 | 05022018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426026 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05032018 | 05012018 | 05022018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04262018 | 2018-04-26T17:34:53+00:00 |  | 000096970-01 | Beverley | Zablocki | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427003 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 05032018 | 05012018 | 05022018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05012018 | 2018-05-01T12:33:16+00:00 |  | 000103006-01 | Janis | Steffensen | ORTHO & NEURO CONSULTS I | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05032018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 05012018 | 05022018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502010 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05032018 | 05012018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T09:33:38+00:00 |  | 000091065-01 | Richard | Cheatham | ALLIANCE PHYSICIANS INC | 952687 | MOHAMMED O | ALI | 1144532409 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418023 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 05032018 | 04172018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 04232018 | 2018-04-23T07:25:11+00:00 |  | 000105633-01 | Christopher | McCarty | SURG ASSOC OF SPRINGFIEL | 902010 | JENNIFER M | DANIELS | 1457369696 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04212018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423057 | R1032 | Left lower quadrant pain | ICD10 | 05032018 | 04212018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04232018 | 2018-04-23T11:57:28+00:00 |  | 000069186-01 | WILLIAM | BOOTH | HOSPITALIST MEDICINE PHY | 914214 | YANJUAN | ZHU | 1316143498 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423096 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05032018 | 04222018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T08:45:58+00:00 |  | 000072148-01 | THOMAS | CROAK | LICKING MEM HLTH PROF | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424053 | R109 | Unspecified abdominal pain | ICD10 | 05032018 | 04222018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04272018 | 2018-04-27T15:56:29+00:00 |  | 000074447-01 | Antoinette | Utterberg | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 05022018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427075 | I509, R0600 | Dyspnea, unspecified | ICD10 | 05032018 | 04262018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04282018 | 2018-04-28T08:01:33+00:00 |  | 000027552-01 | MARJORIE | BYERS | SOUND INPATIENT PHYS OF | 914214 | YANJUAN | ZHU | 1316143498 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430004 | K8031 | Calculus of bile duct w cholangitis, unsp, with obstruction | ICD10 | 05032018 | 04272018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04302018 | 2018-04-30T09:55:39+00:00 |  | 000041990-01 | BETTY | FEUCHT | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430042 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 05032018 | 04272018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T10:30:51+00:00 |  | 000031472-01 | THOMAS | WARDELL | SOUND INPATIENT PHYS OF | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430053 | K819 | Cholecystitis, unspecified | ICD10 | 05032018 | 04292018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T11:47:28+00:00 |  | 000031201-01 | ESTHER | FRANKLIN | COPC CENTRAL OHIO PRIMAR | 935499 | ANIMESH | SHARMA | 1063455939 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502092 | I639 | Cerebral infarction, unspecified | ICD10 | 05032018 | 05012018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T14:40:11+00:00 |  | 000119238-01 | Linda | Wright | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417114 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 05032018 | 04302018 | 05032018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04232018 | 2018-04-23T14:52:19+00:00 |  | 000077450-01 | Doris | Colvin | ALLIANCE PHYSICIANS INC | 947070 | CHRISTOPHER | MANHART | 1508191354 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04202018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424017 | R42 | Dizziness and giddiness | ICD10 | 05032018 | 04202018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04262018 | 2018-04-26T08:30:31+00:00 |  | 000068746-01 | EDNA | MALONE | FAIRFIELD HLTHCARE PROFS | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426018 | E440, J189, J479 | Bronchiectasis, uncomplicated | ICD10 | 05032018 | 04252018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04262018 | 2018-04-26T14:41:31+00:00 |  | 000111685-01 | Katherine | Baugher | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04252018 | 04302018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426051 | F05 | Delirium due to known physiological condition | ICD10 | 05032018 | 04252018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04272018 | 2018-04-27T09:15:35+00:00 |  | 000085874-01 | Norma | Messina | LICKING MEM HLTH PROF | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04262018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427021 | L97509 | Non-pressure chronic ulcer oth prt unsp foot w unsp severity | ICD10 | 05032018 | 04262018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04302018 | 2018-04-30T08:24:09+00:00 |  | 000089131-01 | Jane | Cantrell | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04262018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430022 | D649, D696, K7460, R1013 | Epigastric pain | ICD10 | 05032018 | 04262018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04302018 | 2018-04-30T13:10:19+00:00 |  | 000109715-01 | Herbert | Francis | LICKING MEM HLTH PROF | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04272018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430089 | I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 05032018 | 04272018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05012018 | 2018-05-01T10:19:48+00:00 |  | 000037739-01 | MARGARET | ROBERTSON | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 04302018 | 05022018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501023 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 05032018 | 04302018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T15:29:16+00:00 |  | 000080281-01 | James | Williams | KHN IP MED | 931477 | ROBERT W | MOORE | 1780741058 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04272018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501026 | I509 | Heart failure, unspecified | ICD10 | 05032018 | 04272018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05012018 | 2018-05-01T07:42:59+00:00 |  | 000089918-01 | Houston | Rogers | ACCESS BEHAVIORAL LLC | 902137 | KEVIN L | HORNBECK | 1366434268 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 05032018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501036 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 05032018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05012018 | 2018-05-01T12:12:45+00:00 |  | 000115350-01 | Eugene | Rains | OHIOHEALTH PHYS GRP | 908037 | JEREMY | DAUGHERTY | 1548481799 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05032018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501072 | A419, J181, R0902 | Hypoxemia | ICD10 | 05032018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05012018 | 2018-05-01T13:27:01+00:00 |  | 000117859-01 | JOHN | MUNDAY | MOUNT CARMEL HLTH PRVDRS | 932450 | JOSHUA R | SILVERSTEIN | 1952587743 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05032018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04302018 | 05012018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502015 | I4891 | Unspecified atrial fibrillation | ICD10 | 05032018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
