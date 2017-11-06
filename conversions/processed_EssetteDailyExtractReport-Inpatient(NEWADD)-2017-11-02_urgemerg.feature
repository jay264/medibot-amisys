Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-02_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-02_URGEMERG
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
| 10272017 | 2017-10-27T16:23:07+00:00 | 026130241-7300 | 000103109-01 | Frank | Acton | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030089 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11022017 | 10312017 | 11012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10172017 | 2017-10-17T15:09:00+00:00 | 026372180-7284 | 000045640-01 | ANGELA | CARR | COSHOCTON COUNTY MEM HSP | 935912 | LARRY T | TODD | 1649254087 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018053 | M5136, M48062 | M48062 | ICD10 | 11022017 | 10312017 | 11012017 | 63047, 22633, 22853, 22840, 20936, 20930, 22852, 22830 | EXPLORATION OF SPINAL FUSION | CPT | 1, 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 10202017 | 2017-10-20T14:21:32+00:00 | 025415036-7292 | 000021738-01 | YVONNE | COSIMATI | ORTHO & NEURO CONSULTS I | 937363 | CARL C | BERASI | 1861476368 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023074 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11022017 | 10312017 | 10312017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10312017 | 2017-10-31T15:49:33+00:00 | 025300329-7303 | 000087889-01 | Fred | Harper | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | EMR | ACO - CHF | Inpatient | 10302017 | 11012017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031094 | I509 | Heart failure, unspecified | ICD10 | 11022017 | 10302017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10112017 | 2017-10-11T14:56:52+00:00 | 026355727-7278 | 000077829-01 | Laura | Taylor | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171012013 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11022017 | 10312017 | 11012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10272017 | 2017-10-27T09:14:19+00:00 | 263512957299 | 000052750-01 | CHARLOTTE | BALL | MOUNT CARMEL HLTH SYS | 907180 | GREGORY S | MANGEN | 1386856581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10272017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027011 | S82852B | Displaced trimalleol fx l low leg, init for opn fx type I/2 | ICD10 | 11022017 | 10262017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08242017 | 2017-08-24T16:35:39+00:00 | 025171888-7297 | 000087079-01 | Sandra | Gensure | CEN OH NEURO SURGEONS IN | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11022017 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 10272017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170825018 | M4802 | Spinal stenosis, cervical region | ICD10 | 11022017 | 10272017 | 11012017 | 63081, 22554, 22585, 20936, 22551, 22552, 20930 | ALLOGRAFT FOR SPINE SURGERY ONLY; MORSELIZED | CPT | 1, 1, 3, 1, 1, 1, 1 | 1, 1, 3, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 6, 6, 6, 6, 6, 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 10232017 | 2017-10-23T16:09:01+00:00 |  | 000030752-01 | THERESA | GIDDINGS | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024002 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11022017 | 10302017 | 11012017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09182017 | 2017-09-18T13:05:14+00:00 | 016983777-7251 | 000067728-01 | SANDRA | JOHNSON | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170920097 | T8489XA | Oth comp of internal orthopedic prosth dev/grft, init | ICD10 | 11022017 | 10312017 | 11012017 | 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10172017 | 2017-10-17T13:49:50+00:00 |  | 000103174-01 | Mary | Fiorilli | GENESIS MEDICAL GRP LLC | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 11022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10162017 | 10202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017073 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 11022017 | 10162017 | 10202017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10302017 | 2017-10-30T15:50:05+00:00 |  | 000109611-01 | Joe | Hawke | FAM PHYS OF SPRINGFIELD | 907237 | JOSEPH M | MORMAN | 1508881053 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10292017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030124 | R569 | Unspecified convulsions | ICD10 | 11022017 | 10292017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10252017 | 2017-10-25T13:23:06+00:00 |  | 000027225-01 | GISELA | MCDONALD | HOLLAND, GREGORY C | 936925 | GREGORY C | HOLLAND | 1316991268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026020 | Z853 | Personal history of malignant neoplasm of breast | ICD10 | 11022017 | 10312017 | 11012017 | 19357, 19361 | BREAST RECONSTRUCT. WITH LATISSMUS DORSI FLAP,C/CO PROSTHETIC IMPLANT | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 10312017 | 2017-10-31T07:58:58+00:00 |  | 000119256-01 | JEFFREY | ZIRKLE | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031045 | F419 | Anxiety disorder, unspecified | ICD10 | 11022017 | 10312017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10262017 | 2017-10-26T10:28:59+00:00 | 251015827298 | 000033486-01 | GEORGE | SYKES | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10252017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026045 | A419 | Sepsis, unspecified organism | ICD10 | 11022017 | 10252017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10302017 | 2017-10-30T07:51:34+00:00 |  | 000075515-01 | Anna | Steinmetz | APOGEE MED GRP OHIO INC | 946158 | ZHINENG J | YANG | 1285920694 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10272017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030072 | I4891, I509, R0600 | Dyspnea, unspecified | ICD10 | 11022017 | 10272017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10252017 | 2017-10-25T13:57:21+00:00 |  | 000073972-01 | David | Kilbarger | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 10252017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025064 | I509, R0902, R092 | Respiratory arrest | ICD10 | 11022017 | 10252017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10202017 | 2017-10-20T13:20:38+00:00 |  | 000070112-01 | Gene | Lowery | APOGEE MED GRP OHIO INC | 947342 | RAZVAN I | DUCU | 1093017790 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10192017 | 10272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020062 | R0600 | Dyspnea, unspecified | ICD10 | 11022017 | 10192017 | 10272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10252017 | 2017-10-25T12:48:35+00:00 |  | 000059431-01 | JUDITH | DAILEY | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10242017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025053 | J90, R748, S2239XA | Fracture of one rib, unsp side, init for clos fx | ICD10 | 11022017 | 10242017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T14:56:58+00:00 |  | 000099026-01 | Charlotte | Fife | ADENA MEDICAL GROUP LLC | 920163 | MUHAMMAD K | AHSAN | 1467408344 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10282017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030116 | K649, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11022017 | 10282017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10182017 | 2017-10-18T09:53:15+00:00 |  | 000109642-01 | Clarence | Steele Jr. | SOUND KENWOOD HSPISTS OF | 925740 | WAQAS | AHMED | 1700065091 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10172017 | 10262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018042 | R404 | Transient alteration of awareness | ICD10 | 11022017 | 10172017 | 10262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10292017 | 2017-10-29T17:08:51+00:00 |  | 000053741-01 | WILLIAM | SHULL | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10262017 | 10312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030035 | I4891, J449, N189, R0600 | Dyspnea, unspecified | ICD10 | 11022017 | 10262017 | 10312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10312017 | 2017-10-31T13:41:48+00:00 |  | 000022924-01 | RALPH | LOVE | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031081 | C9110, D591, D696 | Thrombocytopenia, unspecified | ICD10 | 11022017 | 10302017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10162017 | 2017-10-16T10:00:57+00:00 |  | 000076130-01 | Richard | Sayatovich | OHIOHEALTH PHYS GRP | 944650 | ADERONKE O | ONINKU | 1962631465 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10142017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016091 | I959 | Hypotension, unspecified | ICD10 | 11022017 | 10142017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T09:39:14+00:00 | 254190307304 | 000047252-01 | JAMES | RITCHIE JR | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 10312017 | 11022017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031019 | I4891 | Unspecified atrial fibrillation | ICD10 | 11022017 | 10312017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T09:37:03+00:00 | 256664167304 | 000025738-01 | ROSELYN | JAKEWAY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 10312017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101017 | J159 | Unspecified bacterial pneumonia | ICD10 | 11022017 | 10312017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11022017 | 2017-11-02T13:06:36+00:00 |  | 000115421-01 | Timothy | Sexton | HOSP SVC MED GRP OF MARY | 901412 | YOICHI C | IMAMURA | 1679687479 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 11022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 06192017 | 06292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102040 | R6511 | SIRS of non-infectious origin w acute organ dysfunction | ICD10 | 11022017 | 06192017 | 06292017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10272017 | 2017-10-27T08:54:51+00:00 |  | 000044450-01 | MARGARET | NICOLIA | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10262017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027026 | R110 | Nausea | ICD10 | 11022017 | 10262017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 10312017 | 2017-10-31T10:14:21+00:00 | 259957857303 | 000054521-01 | EDGAR | TAYLOR | COPC CENTRAL OHIO PRIMAR | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 10302017 | 11022017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031032 | J189 | Pneumonia, unspecified organism | ICD10 | 11022017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10312017 | 2017-10-31T06:52:20+00:00 |  | 000110489-01 | SHIRLEY | JACKS | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11022017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10292017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031042 | R0902 | Hypoxemia | ICD10 | 11022017 | 10292017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10312017 | 2017-10-31T09:53:15+00:00 |  | 000083845-01 | Norman | Brooks | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 11022017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031063 | I998 | Other disorder of circulatory system | ICD10 | 11022017 | 10302017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T10:16:18+00:00 |  | 000106209-01 | Mary | Baughman | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11022017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731046 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11022017 | 10302017 | 11012017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10192017 | 2017-10-19T12:48:09+00:00 | 026743264-7264 | 000111018-01 | Mary | Morris | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11022017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019072 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11022017 | 11012017 | 11022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10312017 | 2017-10-31T10:52:21+00:00 | 018001828-7297 | 000079354-01 | Loretta | Zolman | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11022017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 11012017 | 11022017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031049 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 11022017 | 11012017 | 11022017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 06062017 | 2017-06-06T14:37:38+00:00 |  | 000010994-01 | CAROLYN | BAILEY | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11022017 | Approved | MediGold Classic Preferred | Fax | Medical Criteria Met | Inpatient | 06072017 | 06272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 170629113576.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170606073 | G9619 | Other disorders of meninges, not elsewhere classified | ICD10 | 11022017 | 06072017 | 06272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
