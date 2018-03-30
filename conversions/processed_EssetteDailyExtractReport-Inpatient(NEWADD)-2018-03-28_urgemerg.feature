Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-28_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-28_URGEMERG
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
| 02222018 | 2018-02-22T15:40:07+00:00 |  | 000031181-01 | BETTY | STARKEY | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03282018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02232018 | 02242018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222083 | S42141D, S43014D | Anterior dislocation of right humerus, subsequent encounter | ICD10 | 03282018 | 02232018 | 02242018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03212018 | 2018-03-21T12:16:03+00:00 |  | 000056941-01 | BETTY | LOMBARDO | MOUNT CARMEL WEST PHYS | 934806 | JAMES M | SINARD | 1548268675 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03202018 | 03212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321054 | E0590 | Thyrotoxicosis, unsp without thyrotoxic crisis or storm | ICD10 | 03282018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01182018 | 2018-01-18T08:23:02+00:00 |  | 000037112-01 | LESLEY | MERRICK | CEN OH UROLOGY GRP INC | 907066 | BENJAMIN J | MARTIN | 1609893221 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118027 | N2889 | Other specified disorders of kidney and ureter | ICD10 | 03282018 | 03122018 | 03272018 | 50240 | NEPHPHRECTOMY, PARTIAL | CPT | 1 | 1 | Approved | 16 | CPT | C4 |  |  |  | 15.0 |
| 03062018 | 2018-03-06T09:48:16+00:00 |  | 000103719-01 | Dolly | Dunn | MOUNT CARMEL HLTH PRVDRS | 902274 | JOHN S | FOOR | 1932157575 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03062018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306037 | L97503 | Non-prs chronic ulcer oth prt unsp foot w necrosis of muscle | ICD10 | 03282018 | 03062018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 03092018 | 2018-03-09T09:22:16+00:00 |  | 000088398-01 | Rita | Ziegler | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03082018 | 03272018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309009 | I509 | Heart failure, unspecified | ICD10 | 03282018 | 03082018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 19.0 |
| 03152018 | 2018-03-15T14:05:46+00:00 |  | 000011935-01 | BETTY | GROVE | SOUND INPATIENT PHYS OF | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03272018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315059 | I509 | Heart failure, unspecified | ICD10 | 03282018 | 03142018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03212018 | 2018-03-21T13:52:48+00:00 |  | 000027321-01 | NOEL | HARRIS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321082 | M6281, N179, R29898 | Oth symptoms and signs involving the musculoskeletal system | ICD10 | 03282018 | 03202018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02242018 | 2018-02-24T09:43:25+00:00 |  | 000058262-01 | RAUL | MARTINEZ | FAIRFIELD HLTHCARE PROFS | 928616 | JEFFREY | PEARCH | 1831381110 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02232018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226010 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 03282018 | 02232018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03022018 | 2018-03-02T10:20:43+00:00 |  | 000025321-01 | VERLIN | DAVIS | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02282018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180302016 | R296 | Repeated falls | ICD10 | 03282018 | 02282018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 27.0 |
| 03152018 | 2018-03-15T15:50:46+00:00 |  | 000089425-01 | James | Agan Jr | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315062 | I7101 | Dissection of thoracic aorta | ICD10 | 03282018 | 03142018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03162018 | 2018-03-16T09:28:20+00:00 |  | 000042945-01 | BONNIE | CALDWELL | SOUND INPATIENT PHYS OF | 932329 | GENEVIEVE | DEKIEL | 1780978015 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316026 | R569 | Unspecified convulsions | ICD10 | 03282018 | 03152018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03162018 | 2018-03-16T15:12:07+00:00 |  | 000038717-01 | ROBERT | VENTRESCO | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03152018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316056 | I712, R079 | Chest pain, unspecified | ICD10 | 03282018 | 03152018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03192018 | 2018-03-19T12:53:06+00:00 |  | 000055045-01 | JOY | WILT | SOUND INPATIENT PHYS | 915600 |  | SOUND INPATIENT PHYSICIANS | 1639311996 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319091 | R6521 | Severe sepsis with septic shock | ICD10 | 03282018 | 03172018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03222018 | 2018-03-22T08:56:36+00:00 |  | 000063907-01 | LEO | OESTREICHER | SOUND INPATIENT PHYS OF | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322018 | A419, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03282018 | 03212018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03222018 | 2018-03-22T12:29:36+00:00 |  | 000062411-01 | Sharon | Plikerd | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03282018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03262018 | 03272018 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322034 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03282018 | 03262018 | 03272018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03232018 | 2018-03-23T08:29:10+00:00 |  | 000021025-01 | DOLORES | HOOVLER | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323025 | I4891 | Unspecified atrial fibrillation | ICD10 | 03282018 | 03222018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03232018 | 2018-03-23T13:05:43+00:00 |  | 000019435-01 | LEE | COOK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03212018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323028 | K929, R1111, R197, K56609 | K56609 | ICD10 | 03282018 | 03212018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03012018 | 2018-03-01T14:35:33+00:00 |  | 000092072-01 | Ruthi | Smith | ALLIANCE PHYSICIANS INC | 910039 | DONALD W | AMES | 1306857891 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301061 | M25552, S32402D, Z96642 | Presence of left artificial hip joint | ICD10 | 03282018 | 03212018 | 03242018 | 27134 | REVSN TOT HIP ARTHPLSTY/BOTH COMNTS | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03192018 | 2018-03-19T08:20:20+00:00 |  | 000096241-01 | YELL | CULVERSON | SOUND KENWOOD HSPISTS OF | 928106 | SMITHA | ACHUTHANKUTTY | 1891016119 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03172018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319064 | G9340, I639, Z1389 | Encounter for screening for other disorder | ICD10 | 03282018 | 03172018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T12:00:42+00:00 |  | 000085576-01 | Sharon | Edwards | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03162018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319068 | I509 | Heart failure, unspecified | ICD10 | 03282018 | 03162018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03212018 | 2018-03-21T15:53:20+00:00 |  | 000051626-01 | TWILA | WILLIAMSON | COPC CENTRAL OHIO PRIMAR | 952420 | BO NA | LEE | 1326467424 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 03202018 | 03232018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321094 | M84359S, S62109A | Fracture of unsp carpal bone, unsp wrist, init for clos fx | ICD10 | 03282018 | 03202018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T09:29:23+00:00 |  | 000084658-01 | Donald | Green | ADENA HEALTH SYSTEMS | 935863 | JOHN F | BOYLE | 1457354680 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322025 | I96 | Gangrene, not elsewhere classified | ICD10 | 03282018 | 03212018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03222018 | 2018-03-22T10:07:55+00:00 |  | 000040909-01 | NAOMI | KNOTTS | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322043 | R001 | Bradycardia, unspecified | ICD10 | 03282018 | 03212018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T14:23:46+00:00 |  | 000101891-01 | Judith | Grubba | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03212018 | 03272018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322053 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03282018 | 03212018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03232018 | 2018-03-23T13:31:28+00:00 |  | 000075749-01 | John | Schmitz | MALLIK, GUNWANT S | 900239 | GUNWANT S | MALLIK | 1376527663 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323055 | M4312, M4712, M4802 | Spinal stenosis, cervical region | ICD10 | 03282018 | 03222018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03252018 | 2018-03-25T15:33:39+00:00 |  | 000111771-01 | MARY | SCARBERRY | COLS INPATIENT CARE INC | 947907 | SHILPA | BATHINI | 1083957500 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03242018 | 03272018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326047 | J189 | Pneumonia, unspecified organism | ICD10 | 03282018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03252018 | 2018-03-25T17:52:05+00:00 |  | 000035750-01 | BETTY | SCHUMACHER | GREG A WISE MD INC | 935061 | GREG | WISE | 1366413940 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 03252018 | 03272018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326050 | R079 | Chest pain, unspecified | ICD10 | 03282018 | 03252018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03262018 | 2018-03-26T10:13:16+00:00 |  | 000092423-01 | Evans | Blakely Jr | APOGEE MED GRP OHIO INC | 906381 | SHUNAID M | PATHAN | 1477726743 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03232018 | 03272018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326104 | N132 | Hydronephrosis with renal and ureteral calculous obstruction | ICD10 | 03282018 | 03232018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T12:05:51+00:00 |  | 000046167-01 | RALPH | BURRELL | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03282018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03232018 | 03242018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327019 | I482 | Chronic atrial fibrillation | ICD10 | 03282018 | 03232018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03082018 | 2018-03-08T15:22:00+00:00 |  | 000095483-01 | Elizabeth | Harvey | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03282018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308059 | I4891 | Unspecified atrial fibrillation | ICD10 | 03282018 | 03072018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03162018 | 2018-03-16T14:20:36+00:00 |  | 000079820-01 | Richard | Whittington | HOSPITALIST MEDICINE PHY | 941846 | SIDDHARTH K | MUSHRIF | 1447455159 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03162018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316073 | I509 | Heart failure, unspecified | ICD10 | 03282018 | 03162018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03192018 | 2018-03-19T08:53:22+00:00 |  | 000085990-01 | Donald | Johnson | MERCY HEALTH PHYSICIANS | 914330 | DANIEL C | ECKERT | 1275742728 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03212018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319008 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03282018 | 03202018 | 03212018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03182018 | 2018-03-18T12:04:13+00:00 |  | 000104562-01 | Carol | Estes | OHIOHEALTH PHYS GRP | 920738 | MARSHALL C | SPALDING | 1316261100 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03152018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319011 | M629 | Disorder of muscle, unspecified | ICD10 | 03282018 | 03152018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03192018 | 2018-03-19T09:16:29+00:00 |  | 000106809-01 | John | Burroughs | CLERMONT INTERNISTS ASSO | 921516 | CHANDRASEKAR | VAIDYANATHAN | 1659373553 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03172018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319026 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03282018 | 03172018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03192018 | 2018-03-19T09:24:33+00:00 |  | 000120220-01 | Daniel | Edgell | MERCY HEALTH PHYSICIANS | 921019 | MARK | POYNTER | 1659358109 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03172018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319029 | K3580 | Unspecified acute appendicitis | ICD10 | 03282018 | 03172018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03182018 | 2018-03-18T14:33:32+00:00 |  | 000086183-01 | Sam | Curtis | COPC CENTRAL OHIO PRIMAR | 943209 | NASIR | SUMMIYAH | 1962692103 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03282018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03182018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319038 | R4182 | Altered mental status, unspecified | ICD10 | 03282018 | 03182018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03202018 | 2018-03-20T09:43:26+00:00 |  | 000071892-01 | Alice | Dillman | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03272018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320026 | M40292, M419 | Scoliosis, unspecified | ICD10 | 03282018 | 03212018 | 03272018 | 22600, 63048, 20931, 22840, 63045, 20670, 22853 | INSJ BIOMECHANICAL DEVICE | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 7, 7, 7, 7, 7, 7, 7 | CPT | C4 |  |  |  | 3.0 |
| 03212018 | 2018-03-21T07:20:27+00:00 |  | 000083601-01 | William | Rich | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03282018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321025 | N186 | End stage renal disease | ICD10 | 03282018 | 03202018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03212018 | 2018-03-21T07:49:09+00:00 |  | 000072962-01 | Richard | Coates | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321029 | I509 | Heart failure, unspecified | ICD10 | 03282018 | 03202018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03212018 | 2018-03-21T15:57:19+00:00 |  | 000016400-01 | SANDRA | JOYCE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03202018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321095 | R200 | Anesthesia of skin | ICD10 | 03282018 | 03202018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03222018 | 2018-03-22T08:10:58+00:00 |  | 000030574-01 | JACK | HUGHES | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03202018 | 03242018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322001 | R0600, R1310 | Dysphagia, unspecified | ICD10 | 03282018 | 03202018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03222018 | 2018-03-22T11:19:10+00:00 |  | 000021461-01 | JOHN | AUER | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322026 | R109 | Unspecified abdominal pain | ICD10 | 03282018 | 03212018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T14:47:27+00:00 |  | 000036717-01 | JEANNETTE | LECRONE | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322060 | A419 | Sepsis, unspecified organism | ICD10 | 03282018 | 03212018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03222018 | 2018-03-22T21:23:05+00:00 |  | 000024833-01 | RICHARD | WAITE | HOSPITALIST MEDICINE PHY | 952663 | JESSE | DION | 1619383734 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323002 | A419, I10, I441, I700, N179, N400 | Enlarged prostate without lower urinary tract symptoms | ICD10 | 03282018 | 03212018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T22:14:05+00:00 |  | 000066313-01 | DOLORES | THOMPSON | APOGEE MED GRP OHIO INC | 915074 | ARINZE E | AKUSOBA | 1366517591 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03212018 | 03252018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323005 | I509 | Heart failure, unspecified | ICD10 | 03282018 | 03212018 | 03252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T11:02:06+00:00 |  | 000003536-01 | CHARLES | CHAMBERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 03232018 | 03262018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326054 | J159, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03282018 | 03232018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03262018 | 2018-03-26T12:21:37+00:00 |  | 000073850-01 | Janet | Cole | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03282018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 03252018 | 03262018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326064 | I4891, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03282018 | 03252018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03262018 | 2018-03-26T10:13:41+00:00 |  | 000104769-01 | Kenneth | Albright | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03282018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03252018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326105 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03282018 | 03252018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03262018 | 2018-03-26T17:00:46+00:00 |  | 000070879-01 | Charles | Walters | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03282018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180327014 | I639 | Cerebral infarction, unspecified | ICD10 | 03282018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03262018 | 2018-03-26T17:20:32+00:00 |  | 000015235-01 | GERTRUDE | RASOR | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03282018 | Denied | MediGold Classic Preferred | Fax | Criteria Not Met | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180327018 | M4800 | Spinal stenosis, site unspecified | ICD10 | 03282018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03262018 | 2018-03-26T16:15:12+00:00 |  | 000117066-01 | LILLIE | MONTGOMERY | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03282018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03262018 | 03272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327049 | M170 | Bilateral primary osteoarthritis of knee | ICD10 | 03282018 | 03262018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03262018 | 2018-03-26T16:36:18+00:00 |  | 000075118-01 | Clarence | Sink Jr | APOGEE MED GRP OHIO INC | 932655 | ABDULMAJID | ADAM | 1528362258 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03282018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03262018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327052 | I4891 | Unspecified atrial fibrillation | ICD10 | 03282018 | 03262018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
