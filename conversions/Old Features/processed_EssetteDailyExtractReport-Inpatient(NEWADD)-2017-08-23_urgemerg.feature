Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-23_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-23_URGEMERG
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
| 08232017 | 2017-08-23T14:03:54+00:00 |  | 000089425-01 | James | Agan Jr | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08212017 | 08232017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823040 | K439 | Ventral hernia without obstruction or gangrene | ICD10 | 08232017 | 08212017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T09:26:15+00:00 | 252183017233 | 000091146-01 | Melissa | Penix | MOUNT CARMEL HLTH PRVDRS | 932649 | GREGORY B | COMFORT | 1144482415 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08232017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 08212017 | 08232017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822022 | R079 | Chest pain, unspecified | ICD10 | 08232017 | 08212017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08182017 | 2017-08-18T08:24:14+00:00 | 256487817229 | 000008313-01 | LOUELLA | CONLEY | SOUND PHYSICIANS OF OHI0 | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08172017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818008 | S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 08232017 | 08172017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08212017 | 2017-08-21T12:25:27+00:00 |  | 000097675-01 | Susan | Garrison | SOUND PHYSICIANS OF OHI0 | 946140 | MALATHY | VARATHARAJAH | 1669470050 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 08232017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 08182017 | 08202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821129 | I2699, L03115, T814XXA | Infection following a procedure, initial encounter | ICD10 | 08232017 | 08182017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08222017 | 2017-08-22T08:42:53+00:00 | 259440467233 | 000116454-01 | LARRY | GRAVES | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822007 | M6281, R4781 | Slurred speech | ICD10 | 08232017 | 08212017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08222017 | 2017-08-22T09:20:32+00:00 | 250574817234 | 000047899-01 | ERROL | JONES | SOUND PHYSICIANS OF OHI0 | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822020 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08232017 | 08212017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07252017 | 2017-07-25T12:02:22+00:00 |  | 000072385-01 | Loree | Kellough | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08162017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725068 | M4310, M4806 | Spinal stenosis, lumbar region | ICD10 | 08232017 | 08162017 | 08232017 | 63047, 63048, 22633, 22634, 22853, 22842, 20936, 20930, 61783 | SCAN PROC SPINAL | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 8, 8, 8, 8, 8, 8, 8, 8, 8 | CPT | C4 |  |  |  | 7.0 |
| 08162017 | 2017-08-16T09:24:30+00:00 | 250656577227 | 000001061-01 | DORA | LEVENSTEIN | SOUND PHYSICIANS OF OHI0 | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08162017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816012 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 08232017 | 08162017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08142017 | 2017-08-14T12:38:03+00:00 |  | 000095112-01 | Rivon | Pierce | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08222017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814081 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08232017 | 08222017 | 08232017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 07032017 | 2017-07-03T12:04:22+00:00 |  | 000078904-01 | Sue | Mudgett | OSU SURGERY LLC | 917856 | LARRY M | JONES | 1659356434 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08232017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07012017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170703110 | T2130XA | Burn of third degree of trunk, unspecified site, init encntr | ICD10 | 08232017 | 07012017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08212017 | 2017-08-21T10:12:51+00:00 | 252473227230 | 000009280-01 | THEOLA | WAFE | SOUND PHYSICIANS OF OHI0 | 912793 | PIYUSH | GUPTA | 1275618803 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Medical Only | Reports | Inpatient | Inpatient | 08182017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821035 | I4891 | Unspecified atrial fibrillation | ICD10 | 08232017 | 08182017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08142017 | 2017-08-14T12:14:46+00:00 | 259769097225 | 000018596-01 | THEODORE | IGEL | SOUND PHYSICIANS OF OHI0 | 948549 | SHRAVAN | LIKKI | 1891136230 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08132017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814061 | I480 | Paroxysmal atrial fibrillation | ICD10 | 08232017 | 08132017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08222017 | 2017-08-22T11:47:32+00:00 |  | 000081905-01 | Mary | Maynard | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08232017 | Denied | TRINITY HEALTH | Fax | Criteria Not Met | Inpatient | 08232017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170822076 | I639 | Cerebral infarction, unspecified | ICD10 | 08232017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08082017 | 2017-08-08T09:33:24+00:00 | 025867130-7209 | 000068593-01 | RITA | LUKASZEWSKI | ORTHO & NEURO CONSULTS I | 937363 | CARL C | BERASI | 1861476368 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 08232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08222017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170808047 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08232017 | 08222017 | 08232017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08152017 | 2017-08-15T13:48:30+00:00 | 025092826-7226 | 000017243-01 | TINA | RIFE | MOUNT CARMEL HLTH PRVDRS | 935805 | MARC L | CARROLL | 1639131329 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 08152017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815060 | N179 | Acute kidney failure, unspecified | ICD10 | 08232017 | 08152017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08152017 | 2017-08-15T11:23:10+00:00 |  | 000089080-01 | James | Hartman | MIAMI VALLEY HSPISTS GRP | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08142017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816015 | R079 | Chest pain, unspecified | ICD10 | 08232017 | 08142017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08102017 | 2017-08-10T13:30:52+00:00 | 025072781-7222 | 000066789-01 | JUANITA | MCLAUGHLIN | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 08102017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810058 | M8610 | Other acute osteomyelitis, unspecified site | ICD10 | 08232017 | 08102017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08212017 | 2017-08-21T10:19:41+00:00 | 255433617230 | 000033038-01 | MARY | WOLFE | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08232017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08182017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821038 | I4891 | Unspecified atrial fibrillation | ICD10 | 08232017 | 08182017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08152017 | 2017-08-15T09:37:45+00:00 |  | 000115915-01 | VALLA | ODELL | OSU INTERNAL MED LLC | 912908 | BETH A | CHRISTIAN | 1194940783 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 08232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08152017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815078 | C9110, J189 | Pneumonia, unspecified organism | ICD10 | 08232017 | 08152017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07182017 | 2017-07-18T08:44:18+00:00 |  | 000077152-01 | Mildred | Massie | ALLIANCE PHYSICIANS INC | 911165 | DANIEL J | DUNAWAY | 1669483152 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08232017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170718019 | M1711, M25561, M25562 | Pain in left knee | ICD10 | 08232017 | 08172017 | 08212017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 08102017 | 2017-08-10T13:57:43+00:00 |  | 000111752-01 | BILLIE | ABDON | DAVID ZAPF DO INC | 902206 | DAVID M | ZAPF | 1518948611 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 08232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08092017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810062 | R0902 | Hypoxemia | ICD10 | 08232017 | 08092017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 08172017 | 2017-08-17T13:38:06+00:00 |  | 000086452-01 | Ruby | Lawson | INTERNAL MED CARE INC | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 08232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08162017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818028 | E875, R400 | Somnolence | ICD10 | 08232017 | 08162017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08182017 | 2017-08-18T13:51:15+00:00 |  | 000075052-01 | Ann | Whitaker | SOUTH BALDWIN REGIONAL MED CTR | 905640 |  | SOUTH BALDWIN REGIONAL MED CTR | 1053382655 | SOUTH BALDWIN REGIONAL MED CTR | 905640 | 1053382655 | SOUTH BALDWIN REGIONAL MED CTR | 1053382655 | Inpatient | IP | Concurrent Review | CONC |  | SOUTH BALDWIN REGIONAL MED CTR | 08232017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08172017 | 08212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820003 | R296 | Repeated falls | ICD10 | 08232017 | 08172017 | 08212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08182017 | 2017-08-18T09:59:03+00:00 |  | 000077275-01 | Donald | Chamberlain | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08232017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08172017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821030 | R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 08232017 | 08172017 | 08222017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
