Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-21_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-21_URGEMERG
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
| 02152018 | 2018-02-15T15:14:45+00:00 |  | 000039969-01 | ROBERT | FOURNIER | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215071 | K4090 | Unil inguinal hernia, w/o obst or gangr, not spcf as recur | ICD10 | 02212018 | 02142018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02022018 | 2018-02-02T16:28:15+00:00 |  | 000071892-01 | Alice | Dillman | MERCY HEALTH PHYSICIANS | 902070 | C DOUGLAS | PORTER | 1720087463 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205003 | G8929, M4000, M4712, M4713, M4714 | Other spondylosis with myelopathy, thoracic region | ICD10 | 02212018 | 02072018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02172018 | 2018-02-17T15:18:25+00:00 |  | 000083215-01 | Jennifer | Evans | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02212018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02162018 | 02202018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219014 | M5116 | Intervertebral disc disorders w radiculopathy, lumbar region | ICD10 | 02212018 | 02162018 | 02202018 | 22655 | THORACIC OR LUMBAR FUSION; | CPT | 0 | 1 |  | 5 | CPT | C4 |  |  |  | 4.0 |
| 02162018 | 2018-02-16T08:56:44+00:00 |  | 000082417-01 | Julia | Moore | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02212018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02192018 | 02202018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216003 | M25551 | Pain in right hip | ICD10 | 02212018 | 02192018 | 02202018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01312018 | 2018-01-31T09:33:21+00:00 |  | 000086919-01 | M | Block | ORTHO & NEURO CONSULTS I | 934912 | DARYL R | SYBERT | 1255315685 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02212018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02142018 | 02152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131035 | M48062 | M48062 | ICD10 | 02212018 | 02142018 | 02152018 | 63005 | LAMINECTOMY, LUMBAR EXCEPT FOR SPONDYLOLISTHESIS | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02022018 | 2018-02-02T14:28:24+00:00 |  | 000100885-01 | Charles | Fannin | TRIHEALTH G LLC | 941732 | DEBORAH J | ROHNER | 1356530562 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01282018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202052 | J9601, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 02212018 | 01282018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 02092018 | 2018-02-09T08:27:43+00:00 |  | 000092673-01 | Jodi | Williams | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02212018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02142018 | 02162018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209003 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02212018 | 02142018 | 02162018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02082018 | 2018-02-08T17:33:18+00:00 |  | 000119959-01 | Susan | Renaudin | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02212018 | Approved | MediGold Southeast OH Classic Preferred | Fax | EIS | Inpatient | 02142018 | 02152018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209006 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02212018 | 02142018 | 02152018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02142018 | 2018-02-14T11:36:34+00:00 |  | 000061059-01 | WANDA | EWELL | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214036 | E1169, R739 | Hyperglycemia, unspecified | ICD10 | 02212018 | 02142018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02022018 | 2018-02-02T14:18:04+00:00 |  | 000000372-01 | RICHARD | CARR | INTL MED CNSLT OF COLS I | 911199 | ROBERT A | PALMA | 1437157849 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202053 | E875 | Hyperkalemia | ICD10 | 02212018 | 02022018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02102018 | 2018-02-10T13:43:41+00:00 |  | 000051426-01 | KATHERINE | YANK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02192018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212024 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 02212018 | 02092018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02122018 | 2018-02-12T09:16:08+00:00 |  | 000119743-01 | DANNY | JUSTICE | COPC CENTRAL OHIO PRIMAR | 948414 | ERIC W | HARD | 1881031540 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02122018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212056 | N390 | Urinary tract infection, site not specified | ICD10 | 02212018 | 02122018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02122018 | 2018-02-12T14:04:22+00:00 |  | 000025849-01 | MARIAN | ABBOTT | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02112018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212105 | I4891, J449, R0902 | Hypoxemia | ICD10 | 02212018 | 02112018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02132018 | 2018-02-13T13:19:52+00:00 |  | 000026610-01 | Sharon | Bailey | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213096 | L03818 | Cellulitis of other sites | ICD10 | 02212018 | 02122018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02132018 | 2018-02-13T12:27:05+00:00 |  | 000110704-01 | R M | Haines | HIGHLAND DISTRICT HSP PR | 908708 | RAMESH | SHIVANI | 1477545390 | HIGHLAND DISTRICT HOSPITAL PSYCH | 933332 | 1235205139 | HIGHLAND DISTRICT HOSPITAL PSYCH | 1235205139 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL PSYCH | 02212018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02132018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213105 | F315 | Bipolar disord, crnt epsd depress, severe, w psych features | ICD10 | 02212018 | 02132018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02132018 | 2018-02-13T13:34:44+00:00 |  | 000079362-01 | Betty | Greer | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02212018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213115 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02212018 | 02122018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02142018 | 2018-02-14T13:14:32+00:00 |  | 000052880-01 | MARY | BODEN | HOSPITAL MEDICINE SERVIC | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02132018 | 02192018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180214040 | J441, M545, R079 | Chest pain, unspecified | ICD10 | 02212018 | 02132018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02152018 | 2018-02-15T12:12:47+00:00 |  | 000069133-01 | CONNIE | GELFER | COLS INPATIENT CARE INC | 906074 | THOMAS F | BRADY | 1316980741 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02142018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215057 | I509, J810 | Acute pulmonary edema | ICD10 | 02212018 | 02142018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02162018 | 2018-02-16T13:34:46+00:00 |  | 000099022-01 | DOROTHY | MALE | MOUNT CARMEL HLTH | 917578 | NOAH J | JONES | 1326178815 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02152018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216067 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 02212018 | 02152018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02192018 | 2018-02-19T10:57:02+00:00 |  | 000078838-01 | Melvin | Lane | ADENA MEDICAL GROUP LLC | 928654 | GABRIELLE A | FARKAS | 1487997896 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02162018 | 02192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219055 | I2601 | Septic pulmonary embolism with acute cor pulmonale | ICD10 | 02212018 | 02162018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02192018 | 2018-02-19T14:32:06+00:00 |  | 000054377-01 | GLEN | LECKRONE | HOSPITALIST MEDICINE PHY | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Medical Only | Fax | ACO - Cardiology | Inpatient | 02182018 | 02202018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220039 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 02212018 | 02182018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02202018 | 2018-02-20T12:04:55+00:00 |  | 000098026-01 | Gary | Lustgarten | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | Flexible Choice PPO | Fax | ACO - Pulmonary | Inpatient | 02192018 | 02202018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220084 | J159, R0902, R4182 | Altered mental status, unspecified | ICD10 | 02212018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01292018 | 2018-01-29T15:44:43+00:00 |  | 000118294-01 | JAMES | FAUSNAUGH | MOUNT CARMEL HLTH PRVDRS | 909312 | PHILLIP | IMMESOETE | 1609089317 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129126 | M4802 | Spinal stenosis, cervical region | ICD10 | 02212018 | 02162018 | 02202018 | 63045, 63048, 22842, 22600, 22840, 20936, 20930, 22614 | ARTHRODESIS, POSTERIOR OR POSTEROLATERAL TECHNIQUE, SINGLE | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 02122018 | 2018-02-12T15:13:01+00:00 |  | 000096672-01 | JAMES | STEWART | THE CHRIST HSP CARDIOVAS | 944710 | ALAN DANIEL | GLASSMAN | 1316914237 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 02212018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 02102018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213014 | I472, I481, I4891 | Unspecified atrial fibrillation | ICD10 | 02212018 | 02102018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 02132018 | 2018-02-13T07:57:33+00:00 |  | 000092712-01 | Kathleen | Painter | GARY L GILLEN MD | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02122018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213058 | K5660 | Unspecified intestinal obstruction | ICD10 | 02212018 | 02122018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02142018 | 2018-02-14T19:40:51+00:00 |  | 000006407-01 | DONATO | ALTIERI | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02142018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180215011 | M4640, M869 | Osteomyelitis, unspecified | ICD10 | 02212018 | 02142018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02162018 | 2018-02-16T12:31:01+00:00 |  | 000029720-01 | WILLIAM | ELEFRITZ | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216054 | D6489, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02212018 | 02162018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02162018 | 2018-02-16T12:38:05+00:00 |  | 000106491-01 | Willie | Luster | TRIHEALTH H LLC | 925561 | GEORGE | VINALES | 1538454988 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 02212018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 02152018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216057 | J930 | Spontaneous tension pneumothorax | ICD10 | 02212018 | 02152018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02192018 | 2018-02-19T11:15:09+00:00 |  | 000015654-01 | VERA | WESTBROOK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02182018 | 02202018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219045 | J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 02212018 | 02182018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02192018 | 2018-02-19T11:54:34+00:00 |  | 000116394-01 | HARRY | DUNCAN | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | TRINITY HEALTH | Fax | EIS | Inpatient | 02182018 | 02202018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219047 | N23 | Unspecified renal colic | ICD10 | 02212018 | 02182018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02192018 | 2018-02-19T09:24:44+00:00 |  | 000029216-01 | LORRAINE | STEPHENS | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02162018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219054 | S72045A | Nondisp fx of base of neck of left femur, init for clos fx | ICD10 | 02212018 | 02162018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02192018 | 2018-02-19T12:59:05+00:00 |  | 000054956-01 | RONALD | FALK | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02172018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180219064 | I509, J441, R748 | Abnormal levels of other serum enzymes | ICD10 | 02212018 | 02172018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02202018 | 2018-02-20T09:32:22+00:00 |  | 000089746-01 | Jerry | Adams | MERCY HEALTH PHYSICIANS | 902070 | C DOUGLAS | PORTER | 1720087463 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Pre-Service | PRE |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02212018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 02212018 | 02222018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180220021 | N186, R296, S32009A | Unsp fracture of unsp lumbar vertebra, init for clos fx | ICD10 | 02212018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02192018 | 2018-02-19T14:39:10+00:00 |  | 000018490-01 | NANCY | ANDERSON | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02162018 | 02202018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220023 | M4800, M48062 | M48062 | ICD10 | 02212018 | 02162018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02192018 | 2018-02-19T14:15:55+00:00 |  | 000049996-01 | MARTHA | COZZENS | HOSPITALIST MEDICINE PHY | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220033 | J159 | Unspecified bacterial pneumonia | ICD10 | 02212018 | 02082018 | 02152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02202018 | 2018-02-20T07:52:53+00:00 |  | 000038100-01 | WANDA | GOIN | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02212018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02162018 | 02192018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220040 | K5732 | Dvtrcli of lg int w/o perforation or abscess w/o bleeding | ICD10 | 02212018 | 02162018 | 02192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02202018 | 2018-02-20T15:12:18+00:00 |  | 000100885-01 | Charles | Fannin | TRIHEALTH G LLC | 927943 | MASOUD | JALILVAND | 1104913938 | BETHESDA HOSPITAL INC | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02182018 | 02202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220068 | I469 | Cardiac arrest, cause unspecified | ICD10 | 02212018 | 02182018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02202018 | 2018-02-20T13:49:10+00:00 |  | 000108943-01 | Lida | Berntsen | MOUNT CARMEL HLTH PRVDRS | 933631 | SHILPA A | PADIA | 1760799175 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02192018 | 02202018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220077 | C50212, C50919 | Malignant neoplasm of unsp site of unspecified female breast | ICD10 | 02212018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02202018 | 2018-02-20T16:01:53+00:00 |  | 000022013-01 | ERNEST | POWELL | LICKING MEM HLTH PROF | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 02212018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 02212018 | 02222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180220085 | I10, I639, R1310 | Dysphagia, unspecified | ICD10 | 02212018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02212018 | 2018-02-21T10:02:49+00:00 |  | 000007943-01 | MARY | HARRIS | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02192018 | 02202018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221008 | I4891, J129 | Viral pneumonia, unspecified | ICD10 | 02212018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02212018 | 2018-02-21T04:53:55+00:00 |  | 000120301-01 | Teresa | Erickson | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02212018 | Approved | MediGold Essential Care | Fax | ACO - Atrial Fib | Inpatient | 02192018 | 02202018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221025 | R009 | Unspecified abnormalities of heart beat | ICD10 | 02212018 | 02192018 | 02202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
