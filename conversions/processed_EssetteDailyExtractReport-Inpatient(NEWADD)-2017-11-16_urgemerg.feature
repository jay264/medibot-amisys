Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-16_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-16_URGEMERG
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
| 11092017 | 2017-11-09T14:20:24+00:00 |  | 000117233-01 | Philip | Foust | S DAYTON ACUTE CARE CNSL | 912896 | RICHARD J | SAXEN | 1790847226 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11152017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110007 | W19XXXA, T796XXA | Traumatic ischemia of muscle, initial encounter | ICD10 | 11162017 | 11082017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11132017 | 2017-11-13T11:11:05+00:00 | 251387917314 | 000106636-01 | Bonnie | Bowen | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11102017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113042 | D3910 | Neoplasm of uncertain behavior of unspecified ovary | ICD10 | 11162017 | 11102017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11132017 | 2017-11-13T11:23:04+00:00 | 250486927317 | 000062475-01 | THOMAS | HITCH | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 11132017 | 11152017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113048 | R000 | Tachycardia, unspecified | ICD10 | 11162017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11102017 | 2017-11-10T08:21:15+00:00 | 025634360-7314 | 000110838-01 | Michael | Anderson | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11152017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110020 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11162017 | 11132017 | 11152017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11022017 | 2017-11-02T13:39:24+00:00 | 018008387-7303 | 000074202-01 | Richard | Dayton | ZANESVILLE XPRESS ORTHO | 921890 | BRAD E | BRAUTIGAN | 1114919479 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103100 | M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 11162017 | 11142017 | 11152017 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10122017 | 2017-10-12T14:23:52+00:00 |  | 000073174-01 | Mary | Baker | CENTRAL OHIO SURG ASSOC | 906771 | KRISTINE D | SLAM | 1396917274 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11102017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016005 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 11162017 | 11102017 | 11152017 | 44625 | CLSR ENTEROSTOMY C RSCTN & ANAST. | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 11162017 | 2017-11-16T08:13:01+00:00 |  | 000082794-01 | Richard | Beller | CEN OH UROLOGY GRP INC | 936013 | ANDY J | CHO | 1063451367 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11132017 | 11152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171116002 | N200 | Calculus of kidney | ICD10 | 11162017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11152017 | 2017-11-15T09:39:36+00:00 | 250254627317 | 000012028-01 | MARTHA | CORNES | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11142017 | 11152017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115014 | I4891 | Unspecified atrial fibrillation | ICD10 | 11162017 | 11142017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11132017 | 2017-11-13T10:19:53+00:00 | 254383267316 | 000079215-01 | James | Lawwell | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11112017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113015 | C801, J910 | Malignant pleural effusion | ICD10 | 11162017 | 11112017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T10:22:49+00:00 | 250674357316 | 000072011-01 | Marjorie | Lott | COPC CENTRAL OHIO PRIMAR | 901490 | ANURADHA | KESARI | 1740389352 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11122017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113016 | I480, K55039 | ACUTE ISCHEMIA OF LARGE INTESTINE, EXTENT UNSPECIFIED | ICD10 | 11162017 | 11122017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11012017 | 2017-11-01T15:55:51+00:00 |  | 000048878-01 | MARJORIE | MALDONADO | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103054 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11162017 | 11142017 | 11152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11102017 | 2017-11-10T10:18:56+00:00 | 250802577313 | 000064935-01 | VIRGINIA | MAYER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11092017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110036 | I509 | Heart failure, unspecified | ICD10 | 11162017 | 11092017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11132017 | 2017-11-13T12:11:26+00:00 |  | 000075205-01 | Fred | Hahn | COSHOCTON COUNTY MEM HSP | 949620 | MOHAMMAD K | SHAH | 1174792923 | COSHOCTON COUNTY MEM HSP | 936454 | 1053398099 | COSHOCTON COUNTY MEMORIAL | 1053398099 | Inpatient | IP | Concurrent Review | CONC |  | COSHOCTON COUNTY MEMORIAL | 11162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11122017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114099 | I4891 | Unspecified atrial fibrillation | ICD10 | 11162017 | 11122017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11142017 | 2017-11-14T09:25:03+00:00 | 250776057317 | 000037795-01 | LEOLA | MILLER | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114016 | I4891 | Unspecified atrial fibrillation | ICD10 | 11162017 | 11132017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11132017 | 2017-11-13T11:16:37+00:00 | 266256187315 | 000027920-01 | NORMA | BREECE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11102017 | 11132017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113044 | E876 | Hypokalemia | ICD10 | 11162017 | 11102017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10032017 | 2017-10-03T09:55:45+00:00 | 025359715-7278 | 000051915-01 | Greta | Mccoy | COLS BONE JOINT & HAND S | 936391 | RICHARD A | FANKHAUSER | 1023091113 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003066 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11162017 | 11142017 | 11152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11012017 | 2017-11-01T15:51:25+00:00 |  | 000089856-01 | GEORGE | MORRIS JR | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11142017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103052 | T84033A | Mech loosening of internal left knee prosthetic joint, init | ICD10 | 11162017 | 11142017 | 11152017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11082017 | 2017-11-08T11:34:27+00:00 |  | 000101294-01 | Rosita | Bamba | VENETIAN HSPIST SRVS LLC | 924729 | RAGHAVA R | VADDE | 1285932079 | SOUTHERN OHIO MEDICAL CENTER | 928970 | 1144578436 | SOUTHERN OHIO MEDICAL CENTER | 1144578436 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHERN OHIO MEDICAL CENTER | 11162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11082017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108044 | J9600, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 11162017 | 11082017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11102017 | 2017-11-10T08:14:53+00:00 |  | 000089376-01 | Thelma | Vandall | FIRST SETTLEMENT ORTHOS | 924541 | GEORGE | TOKODI JR | 1215933700 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 11162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11152017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110018 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11162017 | 11132017 | 11152017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11132017 | 2017-11-13T10:43:28+00:00 | 259293757314 | 000041540-01 | C | TINCHER | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11102017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113027 | E11621, L0390 | Cellulitis, unspecified | ICD10 | 11162017 | 11102017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11072017 | 2017-11-07T08:48:12+00:00 |  | 000012804-01 | ARTHUR | CARTER | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107069 | R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 11162017 | 11062017 | 11102017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10242017 | 2017-10-24T10:06:48+00:00 |  | 000029068-01 | JOHN | AZELVANDRE JR | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11162017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 10252017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024048 | I639 | Cerebral infarction, unspecified | ICD10 | 11162017 | 10252017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 10272017 | 2017-10-27T13:28:10+00:00 |  | 000086587-01 | Cory | Brown | ZANESVILLE XPRESS ORTHO | 922140 | WILLIAM D | ALLEN | 1033101399 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11162017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030046 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11162017 | 11132017 | 11152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11092017 | 2017-11-09T14:35:25+00:00 |  | 000108654-01 | ROGER | SALTS | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11162017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11082017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171110012 | K920 | Hematemesis | ICD10 | 11162017 | 11082017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11062017 | 2017-11-06T09:49:38+00:00 |  | 000112594-01 | Gary | Osborne | MID STATE PHYSICIANS LLP | 922998 | IFIOK A | IDEM | 1427288174 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11052017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106074 | R0902 | Hypoxemia | ICD10 | 11162017 | 11052017 | 11152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10032017 | 2017-10-03T13:30:57+00:00 |  | 000047744-01 | Cean | Hollenbaugh | LICKING MEM HLTH PROF | 942536 | KEVIN M | OUWELEEN | 1598781460 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171003081 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11162017 | 11132017 | 11162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 1.0 |
| 11132017 | 2017-11-13T08:00:11+00:00 |  | 000090623-01 | GARY | JENKINS | OSU SURGERY LLC | 925875 | BRYAN A | WHITSON | 1073756367 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11092017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113089 | Z95811 | Presence of heart assist device | ICD10 | 11162017 | 11092017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10172017 | 2017-10-17T10:18:43+00:00 |  | 000108022-01 | Patricia | Bobb | OSU INTERNAL MED LLC | 917202 | SAMANTHA M | JAGLOWSKI | 1669674271 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Transplant | IN TRPLNT | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 11162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10232017 | 11142017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017059 | D469 | Myelodysplastic syndrome, unspecified | ICD10 | 11162017 | 10232017 | 11142017 | 38240, 96412, 36558, 76937, G0463 | HOSPITAL OUTPT CLINIC VISIT | HCPCS | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 23, 23, 23, 23, 23 | HCPCS | HC |  |  |  | 5.0 |
| 11052017 | 2017-11-05T14:15:03+00:00 |  | 000009299-01 | HOWARD | SETSER | GRANT MEDICAL CENTER | 936409 |  | GRANT MEDICAL CENTER | 1255377149 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106038 | S065X0A | Traum subdr hem w/o loss of consciousness, init | ICD10 | 11162017 | 11042017 | 11132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11062017 | 2017-11-06T11:23:45+00:00 |  | 000110632-01 | Danny | Glover | OHIOHEALTH PHYS GRP | 910110 | SANJAY | MEHTA | 1265416374 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 11162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11052017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107038 | W3400XA | Accidental discharge from unsp firearms or gun, init encntr | ICD10 | 11162017 | 11052017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11052017 | 2017-11-05T14:05:11+00:00 |  | 000004789-01 | LAWRENCE | COLACCI | COPC CENTRAL OHIO PRIMAR | 904202 | LOUIS W | HEVEZI | 1386689768 | OHIOHEALTH CORPORATION | 905908 | 1578545273 | DUBLIN METHODIST HOSPITAL | 1801937008 | Inpatient | IP | Concurrent Review | CONC |  | DUBLIN METHODIST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106065 | S82832A | Oth fracture of upper and lower end of left fibula, init | ICD10 | 11162017 | 11042017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T10:07:48+00:00 |  | 000117370-01 | Dale | Jenkins | GENESIS MEDICAL GRP LLC | 910920 | YAMANI | GUNAWARDENA | 1083773550 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11162017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11112017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171114039 | J189, N2889, R197, R531 | Weakness | ICD10 | 11162017 | 11112017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11132017 | 2017-11-13T07:02:24+00:00 |  | 000100781-01 | Roger | Keener | SOUND PHYSICIANS OF OHI0 | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11102017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113086 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11162017 | 11102017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11132017 | 2017-11-13T10:25:45+00:00 | 250980457316 | 000100980-01 | James | Reelhorn | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11122017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113018 | K819, R55 | Syncope and collapse | ICD10 | 11162017 | 11122017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11152017 | 2017-11-15T10:02:55+00:00 |  | 000089587-01 | Lois | Masters | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11162017 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171115043 | S82841A | Displaced bimalleolar fracture of right lower leg, init | ICD10 | 11162017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11152017 | 2017-11-15T11:57:39+00:00 |  | 000097271-01 | Paul | Brown | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11162017 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A171115045 | T1490XA | T1490XA | ICD10 | 11162017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 11142017 | 2017-11-14T13:44:08+00:00 |  | 000083865-01 | Mary | Kinser | LICKING MEM INPATIENT ME | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11162017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11132017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171115034 | N179, N390, R4182 | Altered mental status, unspecified | ICD10 | 11162017 | 11132017 | 11162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 09222017 | 2017-09-22T15:51:14+00:00 | 025182789-7279 | 000069059-01 | MARY | HAMILTON | SIDES, JAMES A | 934799 | JAMES A | SIDES | 1275587578 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11142017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170925120 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 11162017 | 11142017 | 11162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11032017 | 2017-11-03T14:59:58+00:00 | 025172287-7307 | 000048778-01 | REGINA | GRAY | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11162017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11152017 | 11162017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106063 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11162017 | 11152017 | 11162017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11132017 | 2017-11-13T08:27:47+00:00 |  | 000006245-01 | HELEN | HANEY | OSU INTERNAL MED LLC | 940873 | DANIEL R | DIAZ | 1851681332 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11092017 | 11122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171113102 | I270 | Primary pulmonary hypertension | ICD10 | 11162017 | 11092017 | 11122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10242017 | 2017-10-24T11:12:29+00:00 |  | 000080448-01 | Florence | Cotten | ALLIANCE PHYSICIANS INC | 920441 | KRISTA I | MIGLIORE | 1215114889 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Inpatient | IP | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 11162017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 11132017 | 11152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025003 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11162017 | 11132017 | 11152017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 11162017 | 2017-11-16T09:53:50+00:00 |  | 000083663-01 | James | Cummings | GRANDVIEW & SOUTHVIEW HO | 936462 |  | GRANDVIEW MEDICAL CENTER | 1053339507 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 11162017 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Inpatient | 11162017 | 11172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A171116011 | C159, K223 | Perforation of esophagus | ICD10 | 11162017 | 11162017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08222017 | 2017-08-22T11:50:48+00:00 |  | 000083663-01 | James | Cummings | KENNETH KESLER MD | 951751 | KENNETH | KESLER | 1700991106 | INDIANA UNIVERSITY HEALTH INC | 919727 | 1144266024 | INDIANA UNIVERSITY HEALTH INC | 1144266024 | Inpatient | IP | Concurrent Review | CONC |  | INDIANA UNIVERSITY HEALTH INC | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09082017 | 11162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822085 | C159, K223 | Perforation of esophagus | ICD10 | 11162017 | 09082017 | 11162017 | 32100, 49000, 43360, 43313, 44005, 43340, 35206 | REP. BV/AV FIST.DIR. UPPER EXTREM. | CPT | 1, 1, 1, 1, 1, 1, 2 | 1, 1, 1, 1, 1, 1, 2 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 70, 70, 70, 70, 70, 70, 70 | CPT | C4 |  |  |  | 69.0 |
| 11082017 | 2017-11-08T11:34:12+00:00 |  | 000039318-01 | GERALDINE | REYNOLDS | S DAYTON ACUTE CARE CNSL | 907795 | MANJULA | SATYANARAYAN | 1558412866 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11162017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108043 | R0600 | Dyspnea, unspecified | ICD10 | 11162017 | 11072017 | 11142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
