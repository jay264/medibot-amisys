Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-24_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-01-24_URGEMERG
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
| 01162018 | 2018-01-16T13:15:14+00:00 |  | 000071826-01 | Shirley | Shively | MOUNT CARMEL HLTH PRVDRS | 923371 | NAOMI H | CHEN | 1619154739 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01232018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01152018 | 01162018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116064 | E0520 | Thyrotxcosis w toxic multinod goiter w/o thyrotoxic crisis | ICD10 | 01232018 | 01152018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01082018 | 2018-01-08T14:09:46+00:00 |  | 000067853-01 | LJUBICA | MITEVSKA | MOUNT CARMEL HLTH PRVDRS | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180108117 | G5602, M4712 | Other spondylosis with myelopathy, cervical region | ICD10 | 01232018 | 01182018 | 01212018 | 20936, 64721, 63081, 63082, 22554, 22585, 22845, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 4, 4, 4, 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 01182018 | 2018-01-18T17:35:34+00:00 |  | 000021897-01 | MARILYN | MOORE | COPC CENTRAL OHIO PRIMAR | 952051 | THOMAS M | COWAN | 1558655423 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 01232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119003 | N189 | Chronic kidney disease, unspecified | ICD10 | 01232018 | 01172018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01162018 | 2018-01-16T15:40:37+00:00 |  | 000012908-01 | Roy | Coffee | MOUNT CARMEL HLTH SYS | 902935 | LOWELL W | CHAMBERS | 1801835400 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01152018 | 01192018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116082 | K37 | Unspecified appendicitis | ICD10 | 01242018 | 01152018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 12182017 | 2017-12-18T12:12:08+00:00 |  | 000074233-01 | Walter | Rotruck | NERVES LLC | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171218111 | M4186, M4316, M4726, M4727, M4807, M48062 | M48062 | ICD10 | 01242018 | 01192018 | 01232018 | 22558, 22853, 22585, 77003, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 3, 2, 1, 1 | 1, 3, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 01112018 | 2018-01-11T12:21:18+00:00 |  | 000074935-01 | Margaret | Boehm | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111059 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01242018 | 01102018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01102018 | 2018-01-10T13:14:49+00:00 |  | 000066170-01 | JUDITH | CREVISTON | ORTHOPEDIC ONE INC | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01222018 | 01232018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180110078 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 01242018 | 01222018 | 01232018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01152018 | 2018-01-15T09:06:43+00:00 |  | 000093536-01 | James | Burwell | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01172018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115045 | I350, I712 | Thoracic aortic aneurysm, without rupture | ICD10 | 01242018 | 01172018 | 01232018 | 33405, 33863 | ASCENDING AORTA GRAFT, WITH CARDIOPULMONARY BYPASS, WITH OR WITHOUT | CPT | 1, 1 | 1, 1 | Approved, Approved | 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 01182018 | 2018-01-18T10:51:08+00:00 |  | 000048406-01 | LEE | STEWART | ADENA MEDICAL GROUP LLC | 902974 | ZORAN | NAUMOVSKI | 1326041138 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118038 | J189, R531 | Weakness | ICD10 | 01242018 | 01172018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01192018 | 2018-01-19T14:46:11+00:00 |  | 000071404-01 | Roxanna | Lee | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119067 | R079 | Chest pain, unspecified | ICD10 | 01242018 | 01112018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 12182017 | 2017-12-18T10:55:07+00:00 |  | 000110076-01 | MARGARET | WYATT | ADENA MEDICAL GROUP LLC | 924215 | JENNIFER L | NEY | 1891854808 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 01242018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 12172017 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171219003 | N320 | Bladder-neck obstruction | ICD10 | 01242018 | 12172017 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01112018 | 2018-01-11T09:42:17+00:00 |  | 000002849-01 | MICHAEL | JONES | GRAVELIN, LAURA M | 940106 | LAURA M | GRAVELIN | 1780868950 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111033 | T827XXA | Infect/inflm react d/t oth cardi/vasc dev/implnt/grft, init | ICD10 | 01242018 | 01102018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 01122018 | 2018-01-12T17:43:46+00:00 |  | 000090047-01 | Raymond | Vincent | OSU SURGERY LLC | 947363 | IHAB O | ELHASSAN | 1043415755 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01102018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115007 | T1490XA | T1490XA | ICD10 | 01242018 | 01102018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01162018 | 2018-01-16T07:22:10+00:00 |  | 000028933-01 | PATRICIA | DAVIS HYE | OSU INTERNAL MED LLC | 942381 | SOPHIA J | PENG | 1831455831 | OSU HOSPITAL EAST | 936433 | 1750480216 | OSU HOSPITAL EAST | 1750480216 | Inpatient | IP | Concurrent Review | CONC |  | OSU HOSPITAL EAST | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180116007 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01242018 | 01122018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01162018 | 2018-01-16T17:23:23+00:00 |  | 000074024-01 | Carol | Herman | HOSPITALIST MEDICINE PHY | 948154 | TARAQ A | ATTUMI | 1962847186 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117005 | I4891, J09X2 | Flu due to ident novel influenza A virus w oth resp manifest | ICD10 | 01242018 | 01152018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 01172018 | 2018-01-17T10:15:04+00:00 |  | 000002907-01 | ALDA | POTTEIGER | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01162018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117028 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 01242018 | 01162018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01182018 | 2018-01-18T15:23:49+00:00 |  | 000004265-01 | RAYMOND | WAY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Secondary Only | Inpatient | 01172018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118080 | J189, J9602 | Acute respiratory failure with hypercapnia | ICD10 | 01242018 | 01172018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01162018 | 2018-01-16T07:54:16+00:00 |  | 000078984-01 | Gaye | Ferguson | HOSPITALIST MEDICINE PHY | 932251 | SUBBARAJU | BUDHARAJU | 1184915050 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119001 | I509 | Heart failure, unspecified | ICD10 | 01242018 | 01102018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01182018 | 2018-01-18T17:13:20+00:00 |  | 000013252-01 | EVELYN | JOHNSON | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119005 | S7290XA | Unsp fracture of unsp femur, init encntr for closed fracture | ICD10 | 01242018 | 01182018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01192018 | 2018-01-19T12:40:16+00:00 |  | 000083583-01 | Frances | Gentry | MOUNT CARMEL HEALTH SYST | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119047 | S82891B | Oth fracture of right lower leg, init for opn fx type I/2 | ICD10 | 01242018 | 01182018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01232018 | 2018-01-23T11:12:19+00:00 |  | 000074781-01 | Edward | Pate | SAMUEL CHICANO DOCENA | 921320 | SAMUEL C | DOCENA | 1376600973 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 01242018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 06052017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123030 | F1420 | Cocaine dependence, uncomplicated | ICD10 | 01242018 | 06052017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 24.0 |
| 12082017 | 2017-12-08T16:28:44+00:00 |  | 000070076-01 | Donald | Pettitt | ALLIANCE PHYSICIANS INC | 948435 | KAMAL | WOODS | 1871706473 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01172018 | 01182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171211049 | M4316, M48062 | M48062 | ICD10 | 01242018 | 01172018 | 01182018 | 22633, 63047, 22853, 22842 | SEGMENTAL FIXATION (EX. LUQUE TECH.) SEE CPT FOR OTHER EXAMPLES... | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 01022018 | 2018-01-02T11:17:51+00:00 |  | 000106587-01 | Christopher | Jarrells | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 01242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01012018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103033 | R000, R531 | Weakness | ICD10 | 01242018 | 01012018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 01042018 | 2018-01-04T16:07:45+00:00 |  | 000082558-01 | Sharon | Beedle | 24 ON PHYSICIANS PC | 905470 | KOMBIAN | GBARUK | 1235171802 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01032018 | 01152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180105003 | I4891 | Unspecified atrial fibrillation | ICD10 | 01242018 | 01032018 | 01152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01082018 | 2018-01-08T15:06:27+00:00 |  | 000095258-01 | Robert | Cordy Jr | THE CHRIST HSP MED ASSOC | 946002 | RACHAEL E | BOLAND | 1801811906 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01072018 | 01172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109002 | R079, R918 | Other nonspecific abnormal finding of lung field | ICD10 | 01242018 | 01072018 | 01172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01152018 | 2018-01-15T10:50:37+00:00 |  | 000050128-01 | PAUL | HUNCKLER | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01122018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115106 | J449, R0600 | Dyspnea, unspecified | ICD10 | 01242018 | 01122018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01152018 | 2018-01-15T13:59:04+00:00 |  | 000002703-01 | KENNETH | BEATTY | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01152018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115132 | J159, J189, N179, S01511A | Laceration without foreign body of lip, initial encounter | ICD10 | 01242018 | 01152018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01172018 | 2018-01-17T08:35:34+00:00 |  | 000045553-01 | Ronald | Young | FAIRFIELD HLTHCARE PROFS | 937361 | NEELKANT | RAYA | 1760468953 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01162018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117011 | I517 | Cardiomegaly | ICD10 | 01242018 | 01162018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01172018 | 2018-01-17T10:19:28+00:00 |  | 000113503-01 | Paul | Agosta | FAIRFIELD HLTHCARE PROFS | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 01202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117023 | K819, K859 | Acute pancreatitis, unspecified | ICD10 | 01242018 | 01172018 | 01202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01172018 | 2018-01-17T10:20:43+00:00 |  | 000012949-01 | SHARON | GOLDEN | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01162018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117024 | J9600, R0902 | Hypoxemia | ICD10 | 01242018 | 01162018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01172018 | 2018-01-17T10:23:12+00:00 |  | 000076881-01 | Opal | Tomak | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 01242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01162018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117026 | J449, R000, S72001A | Fracture of unsp part of neck of right femur, init | ICD10 | 01242018 | 01162018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01172018 | 2018-01-17T09:19:46+00:00 |  | 000092673-01 | Jodi | Williams | COPC CENTRAL OHIO PRIMAR | 907150 | RAORAJESHWAR | SINGH | 1518158203 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01162018 | 01232018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117027 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 01242018 | 01162018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01182018 | 2018-01-18T11:21:32+00:00 |  | 000114249-01 | Baldassare | Zambuto | BIG RUN URGENT CARE LLC | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01172018 | 01232018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118055 | I509 | Heart failure, unspecified | ICD10 | 01242018 | 01172018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01192018 | 2018-01-19T09:09:43+00:00 |  | 000022517-01 | NANCY | FULCHER | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119037 | A419, N179 | Acute kidney failure, unspecified | ICD10 | 01242018 | 01182018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01192018 | 2018-01-19T12:24:30+00:00 |  | 000039866-01 | ESCHEL | DANIELS | MOUNT CARMEL HLTH SYS | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119046 | C259, I472, I959 | Hypotension, unspecified | ICD10 | 01242018 | 01182018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01202018 | 2018-01-20T17:18:16+00:00 |  | 000031642-01 | LINDA | TAGGART | HOSPITALIST MEDICINE PHY | 932745 | SERAG E | ABDULAZIZ | 1164718409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01202018 | 01232018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122022 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 01242018 | 01202018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01222018 | 2018-01-22T07:26:50+00:00 |  | 000107487-01 | Ronald | Porter | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 01242018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 01212018 | 01232018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122049 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 01242018 | 01212018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01222018 | 2018-01-22T10:49:24+00:00 |  | 000114529-01 | Monte | Cook | MARIETTA HLTH CARE PHYS | 921990 | ROBERT | BEHNKE | 1073710869 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 01242018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 01192018 | 01212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122064 | K9289 | Other specified diseases of the digestive system | ICD10 | 01242018 | 01192018 | 01212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01222018 | 2018-01-22T12:41:02+00:00 |  | 000036997-01 | EUGENE | WASHINGTON | NEUROSCIENCE CENTER | 951551 | BRYAN M | GOUGH | 1962795963 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 01242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01192018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122102 | R4182 | Altered mental status, unspecified | ICD10 | 01242018 | 01192018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01242018 | 2018-01-24T11:56:31+00:00 |  | 000065824-01 | JOHN | BOHLKEN | COLS INPATIENT CARE INC | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 11222017 | 11252017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124041 | J189 | Pneumonia, unspecified organism | ICD10 | 01242018 | 11222017 | 11252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01242018 | 2018-01-24T12:18:17+00:00 |  | 000080899-01 | Rozanna | Fitchpatrick | CENTRAL OHIO SURG ASSOC | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 01242018 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11162017 | 11192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124045 | X781XXA | Intentional self-harm by knife, initial encounter | ICD10 | 01242018 | 11162017 | 11192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
