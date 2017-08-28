Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-25-to-2017-08-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-25-to-2017-08-27_URGEMERG
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
| 08212017 | 2017-08-21T11:45:54+00:00 |  | 000076148-01 | Mary Lou | Pinkerton | SELBY GENERAL HOSPITAL | 936486 |  | SELBY GENERAL HOSPITAL | 1124073465 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 08252017 | Denied | MediGold Southeast OH Classic Preferred | Fax | Criteria Not Met | Inpatient | 08252017 | 08262017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170821086 | S72012A | Unsp intracapsular fracture of left femur, init for clos fx | ICD10 | 08252017 | 08222017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08182017 | 2017-08-18T10:14:44+00:00 | 253128427229 | 000038247-01 | GLORIA | MILLER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08252017 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 08172017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818021 | S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 08252017 | 08172017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08222017 | 2017-08-22T09:27:16+00:00 | 250674357233 | 000072011-01 | Marjorie | Lott | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08212017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822023 | I4891 | Unspecified atrial fibrillation | ICD10 | 08252017 | 08212017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08222017 | 2017-08-22T09:32:46+00:00 | 260779347234 | 000082574-01 | Vicki | Savage | CENTRAL OHIO SURG ASSOC | 934982 | THOMAS M | VARA | 1457390130 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08222017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822025 | K851 | Biliary acute pancreatitis | ICD10 | 08252017 | 08222017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T09:48:34+00:00 | 260150667220 | 000078915-01 | John | Sprouse | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08082017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809016 | I214, J698, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08252017 | 08082017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 08232017 | 2017-08-23T16:13:03+00:00 |  | 000075593-01 | Charles | Selmon | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08252017 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 08252017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170823061 | G959 | Disease of spinal cord, unspecified | ICD10 | 08252017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08142017 | 2017-08-14T13:30:52+00:00 |  | 000045480-01 | Barton | Willcox | S DAYTON ACUTE CARE CNSL | 947829 | KIRTI | SANDERS | 1700227113 | INJU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INJU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INJU & RAJ SOIN MEDICAL CENTER | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08122017 | 10182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815034 | R64 | Cachexia | ICD10 | 08252017 | 08122017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08252017 | 2017-08-25T08:55:17+00:00 |  | 000095013-01 | Gladys | Young | SOUND PHYSICIANS OF OHI0 | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Southeast OH Essential Care | Reports | Inpatient | Inpatient | 08202017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825003 | D6959, R7881 | Bacteremia | ICD10 | 08252017 | 08202017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07312017 | 2017-07-31T09:56:42+00:00 |  | 000035507-01 | DREAMA | RIDDLE | OSU INTERNAL MED LLC | 908291 | AARON S | WENGER | 1316991276 | SELECT SPECIALTY HOSPITA | 900155 | 1871592386 | SELECT SPECIALTY HOSPITAL COLUMBUS | 1871592386 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL COLUMBUS | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08032017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731026 | J9601, N179 | Acute kidney failure, unspecified | ICD10 | 08252017 | 08032017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 08212017 | 2017-08-21T20:41:33+00:00 |  | 000037914-01 | NICK | MAVROMATIS | OH HSP FOR PSYCHIATRY | 911060 | JAMES C | JOHNSON | 1972535094 | OH HSP FOR PSYCHIATRY | 906239 | 1821186271 | OHIO HOSPITAL FOR PSYCHIATRY | 1821186271 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | OHIO HOSPITAL FOR PSYCHIATRY | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08192017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170821016 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 08252017 | 08192017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T08:37:55+00:00 | 251670637233 | 000040530-01 | RONALD | FENNEKEN | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08212017 | 08242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822006 | N179 | Acute kidney failure, unspecified | ICD10 | 08252017 | 08212017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08232017 | 2017-08-23T15:48:03+00:00 |  | 000107452-01 | Richard | Milhoan | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 915731 | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 08252017 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Inpatient | 08252017 | 08262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170823062 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 08252017 | 08242017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 07302017 | 2017-07-30T15:32:15+00:00 |  | 000040310-01 | MARGARET | BECHIE | OHIOHEALTH PHYS GRP | 910645 | KAILASH K | NARAYAN | 1932214707 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07282017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731053 | T07 | Unspecified multiple injuries | ICD10 | 08252017 | 07282017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 07302017 | 2017-07-30T15:35:13+00:00 |  | 000016470-01 | MARY | EMMELHAINZ | CENTRAL OH HSPISTS INC | 906888 | DOUGLAS R | RETHMAN | 1881739431 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07282017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731072 | N390 | Urinary tract infection, site not specified | ICD10 | 08252017 | 07282017 | 08042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08032017 | 2017-08-03T11:07:27+00:00 |  | 000110200-01 | CECIL | JORDAN | OHIOHEALTH PHYS GRP | 910835 | PAUL R | BEERY | 1508918319 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08252017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08022017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803063 | Z7901 | Long term (current) use of anticoagulants | ICD10 | 08252017 | 08022017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 08212017 | 2017-08-21T12:48:54+00:00 |  | 000080657-01 | Marva | Johnson | HEALTHSOUTH REHABILITATI | 947611 |  | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | HEALTHSOUTH REHABILITATI | 947611 | 1538440904 | HEALTHSOUTH REHABILITATION HOSPITAL | 1538440904 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | HEALTHSOUTH REHABILITATION HOSPITAL | 08252017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 08252017 | 08262017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A170821096 | G7281, N186 | End stage renal disease | ICD10 | 08252017 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 08152017 | 2017-08-15T16:00:24+00:00 |  | 000082386-01 | William | Stewart | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08162017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815101 | R296 | Repeated falls | ICD10 | 08252017 | 08162017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07212017 | 2017-07-21T11:07:13+00:00 |  | 000113613-01 | Betty | Rice | MERCY HEALTH PHYSICIANS | 921193 | SAMUEL R | VESTER | 1629008628 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08252017 | 10242017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721032 | I2510, I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 08252017 | 07242017 | 08022017 | 33405, 33533, 33519 | CORONARY BYPASS, THREE VENOUS GRAFTS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 61, 61, 61 | CPT | C4 |  |  |  | 9.0 |
| 08232017 | 2017-08-23T10:21:26+00:00 |  | 000051573-01 | JIMMIE | HARRIS | OHIOHEALTH PHYS GRP | 922935 | MIRYAM L | BURELLI | 1568692564 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 08212017 | 08232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170824029 | G9340 | Encephalopathy, unspecified | ICD10 | 08252017 | 08212017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08232017 | 2017-08-23T11:44:45+00:00 | 252895357234 | 000106437-01 | Benjamin | Brookes | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08252017 | Approved | MediGold Medical Only | Reports | ACO - CHF | Inpatient | 08222017 | 08242017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170823008 | I509 | Heart failure, unspecified | ICD10 | 08252017 | 08222017 | 08242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08182017 | 2017-08-18T16:10:28+00:00 |  | 000049168-01 | ABAGAIL | MALONE | GENERAL MEDICAL CNSLT | 935147 | ROBERT F | LEWE | 1164404265 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08172017 | 08222017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170820005 | R609 | Edema, unspecified | ICD10 | 08252017 | 08172017 | 08232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08142017 | 2017-08-14T12:22:11+00:00 | 265808327224 | 000118323-01 | Joseph | Klimonek | SOUND PHYSICIANS OF OHI0 | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08252017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08122017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814064 | E872 | Acidosis | ICD10 | 08252017 | 08122017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 08172017 | 2017-08-17T12:02:56+00:00 |  | 000064445-01 | FREDRIC | BROOKS | CRB OF OH INC | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817052 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 08252017 | 08232017 | 08252017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07312017 | 2017-07-31T09:21:49+00:00 |  | 000054019-01 | LAURA | HEIMLICH | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08232017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731034 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08252017 | 08232017 | 08252017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 06202017 | 2017-06-20T16:55:43+00:00 | 025963766-7172 | 000111557-01 | Marietta | Webster | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 08242017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620123 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08252017 | 08242017 | 08252017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04242017 | 2017-04-24T13:01:21+00:00 |  | 000102153-01 | Dave | Lacey | ARA JACKSON DIALYSIS LLC | 933535 |  | ARA JACKSON DIALYSIS LLC | 1720220213 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 08252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04242017 | 05232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424076 | I639 | Cerebral infarction, unspecified | ICD10 | 08252017 | 04242017 | 05232017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 29.0 |
| 07312017 | 2017-07-31T15:46:15+00:00 |  | 000067445-01 | SAMIR | HANNA | KHN IP MED | 942575 | LUCAS | HEINEMANN | 1154697332 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 08252017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801066 | E872, E875, N179, R110 | Nausea | ICD10 | 08252017 | 07292017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08252017 | 2017-08-25T16:18:23+00:00 | 016679424-7231 | 000052913-01 | CHARLES | ULRICH | MEDICAL & SURG ASSOC INC | 935546 | THOMAS K | PETRYK | 1245210244 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08252017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 08212017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825071 | I739 | Peripheral vascular disease, unspecified | ICD10 | 08252017 | 08212017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T09:11:40+00:00 |  | 000107609-01 | Charles | Slane | CENTRAL OHIO SURG ASSOC | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08212017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822013 | K5660 | Unspecified intestinal obstruction | ICD10 | 08252017 | 08212017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08222017 | 2017-08-22T08:43:19+00:00 |  | 000037411-01 | JAMES | BROWN | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08252017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08222017 | 08252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822008 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 08252017 | 08222017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08222017 | 2017-08-22T08:12:44+00:00 |  | 000029359-01 | CAROL | HOFFMAN | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08252017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08212017 | 08252017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170822003 | N200 | Calculus of kidney | ICD10 | 08252017 | 08212017 | 08252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
