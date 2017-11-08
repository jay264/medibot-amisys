Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-03_thru_2017-11-05_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-03_thru_2017-11-05_URGEMERG
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
| 10312017 | 2017-10-31T09:33:05+00:00 | 257520737303 | 000034411-01 | HAROLD | BALL | SOUND PHYSICIANS OF OHI0 | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031015 | E222, E871 | Hypo-osmolality and hyponatremia | ICD10 | 11032017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10302017 | 2017-10-30T08:38:27+00:00 | 265351497301 | 000075878-01 | Sondra | Daugherty | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10282017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030014 | I214, I4892 | Unspecified atrial flutter | ICD10 | 11032017 | 10282017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10242017 | 2017-10-24T13:26:42+00:00 |  | 000100194-01 | Marvin | Henderson | CARDIOTHORACIC & VASC SU | 903781 | JAMES R | MANAZER | 1205860228 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025001 | I70612 | Athscl nonbiol bypass of the extrm w intrmt claud, left leg | ICD10 | 11032017 | 11012017 | 11022017 | 35371, 35303 | THROMBOENDARTERECTOMY INC PATCH GRAFT IF PERFORMED POPLITEAL ATRERY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11032017 | 2017-11-03T08:20:59+00:00 |  | 000095158-01 | Linda | Hersch | CENTRAL OHIO SURG ASSOC | 917979 | CHRISTOPHER | ZOCHOWSKI | 1487868014 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | TRINITY HEALTH | EMR | EIS | Inpatient | 11012017 | 11022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103007 | L988 | Oth disrd of the skin and subcutaneous tissue | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T10:12:11+00:00 | 025718105-7301 | 000030896-01 | GENEVA | BEE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10282017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030037 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11032017 | 10282017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11032017 | 2017-11-03T08:59:26+00:00 |  | 000000031-01 | JOHN | MONTIS | MOUNT CARMEL HLTH PRVDRS | 914408 | KAMEL N | ADDO | 1700864626 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11012017 | 11022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103010 | I4891 | Unspecified atrial fibrillation | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11012017 | 2017-11-01T15:42:13+00:00 | 259542657306 | 000036601-01 | FRANCES | PETERS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 11012017 | 11022017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101064 | I509 | Heart failure, unspecified | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10272017 | 2017-10-27T12:33:12+00:00 |  | 000086557-01 | Marthel | Slagle | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10252017 | 10302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027054 | I10, R319, R911 | Solitary pulmonary nodule | ICD10 | 11032017 | 10252017 | 10302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10302017 | 2017-10-30T13:40:28+00:00 |  | 000093734-01 | Michael | Bland | HOSPITAL MEDICINE SERVIC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10272017 | 11012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031003 | C259, D649, K921 | Melena | ICD10 | 11032017 | 10272017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10312017 | 2017-10-31T15:30:23+00:00 | 017972751-7271 | 000083569-01 | Thomas | Holmes | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031099 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11032017 | 11012017 | 11022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10252017 | 2017-10-25T10:09:29+00:00 | 025480433-7297 | 000038449-01 | TERESA | STIDHAM | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025070 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 11032017 | 11012017 | 11022017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10182017 | 2017-10-18T12:51:50+00:00 | 017964041-7264 | 000107614-01 | Charles | Teeters | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171019039 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11032017 | 11012017 | 11022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 10272017 | 2017-10-27T09:41:18+00:00 | 250948067299 | 000009747-01 | SANDRA | ROSSIO | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10262017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027028 | R0600 | Dyspnea, unspecified | ICD10 | 11032017 | 10262017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 10202017 | 2017-10-20T11:43:08+00:00 |  | 000081810-01 | Cheryl | Nichols | MOUNT CARMEL HLTH PRVDRS | 903018 | KEVIN V | WARE | 1609817980 | MOUNT CARMET WEST | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020058 | F250 | Schizoaffective disorder, bipolar type | ICD10 | 11032017 | 10192017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T13:39:16+00:00 |  | 000113732-01 | Vivian | Pfeifer | APOGEE MED GRP OHIO INC | 946966 | CHARLES A | BERKO | 1114363819 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10272017 | 10282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031002 | I639 | Cerebral infarction, unspecified | ICD10 | 11032017 | 10272017 | 10282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09272017 | 2017-09-27T09:25:28+00:00 | 256125647269 | 000108049-01 | Marjorie | Hill | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 09262017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927012 | J95811, K223 | Perforation of esophagus | ICD10 | 11032017 | 09262017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 37.0 |
| 09212017 | 2017-09-21T09:22:14+00:00 |  | 000006177-01 | RINFORD | RIFFE | ORTHOPEDIC ONE INC | 917927 | TERRY T | FOWLER | 1447474705 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10192017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170922001 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 11032017 | 10192017 | 11022017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 15 | CPT | C4 |  |  |  | 14.0 |
| 10252017 | 2017-10-25T09:06:55+00:00 | 251461827298 | 000006015-01 | RAYMOND | CHAPMAN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10242017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025009 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 11032017 | 10242017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 10182017 | 2017-10-18T09:49:20+00:00 | 164453247290 | 000067285-01 | LINDA | NEFF | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10172017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171018016 | I509 | Heart failure, unspecified | ICD10 | 11032017 | 10172017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 16.0 |
| 10312017 | 2017-10-31T08:04:11+00:00 |  | 000103295-01 | Robert | Tritle | AJAZ UMERANI MD INC | 902296 |  | AJAZ UMERANI MD INC | 1043587470 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10282017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031053 | N3000, R531, S39012A | Strain of muscle, fascia and tendon of lower back, init | ICD10 | 11032017 | 10282017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11022017 | 2017-11-02T10:42:50+00:00 |  | 000069906-01 | Carolyn | Burgess | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 11012017 | 11022017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103042 | K429, K439 | Ventral hernia without obstruction or gangrene | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10242017 | 2017-10-24T14:32:55+00:00 | 250245297297 | 000061031-01 | Sandra | Curtis | COPC CENTRAL OHIO PRIMAR | 936173 | KELLY L | CONKLIN | 1861475428 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10242017 | 11012017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024076 | I509 | Heart failure, unspecified | ICD10 | 11032017 | 10242017 | 11012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10272017 | 2017-10-27T09:20:45+00:00 | 251338727299 | 000033814-01 | JACK | BOGGS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10262017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171027013 | J9602 | Acute respiratory failure with hypercapnia | ICD10 | 11032017 | 10262017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10232017 | 2017-10-23T14:43:48+00:00 |  | 000102662-01 | Judith | Broughton | MERCY HEALTH PHYSICIANS | 920971 | SURESH | NAYAK | 1730184946 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11032017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171024004 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11032017 | 11012017 | 11022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10252017 | 2017-10-25T10:19:14+00:00 |  | 000101066-01 | Mary | Brunk | SOUND INPATIENT PHYS OF | 925203 | ASAD S | ALI | 1053386938 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 11032017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 10242017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025045 | N390, Z789 | Other specified health status | ICD10 | 11032017 | 10242017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 10112017 | 2017-10-11T12:10:06+00:00 |  | 000027274-01 | ROY | STONE JR | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171011051 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11032017 | 10302017 | 11032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 10192017 | 2017-10-19T16:04:10+00:00 |  | 000080978-01 | Lynda | Shutts | PARKERSBURG ORTHO ASSOC | 925373 | GEORGE E | HERRIOTT III | 1417923731 | SELBY GENERAL HOSPITAL | 936486 | 1124073465 | SELBY GENERAL HOSPITAL | 1124073465 | Inpatient | IP | Concurrent Review | CONC |  | SELBY GENERAL HOSPITAL | 11032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020088 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11032017 | 10302017 | 11022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 1.0 |
| 10302017 | 2017-10-30T09:03:36+00:00 |  | 000042979-01 | JULIA | SMART | LICKING MEM INPATIENT ME | 909055 | MAY U | MBAH | 1669428504 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10292017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030101 | N390 | Urinary tract infection, site not specified | ICD10 | 11032017 | 10292017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11022017 | 2017-11-02T10:03:55+00:00 | 251102617305 | 000010795-01 | NORMA | SMITH | SOUND PHYSICIANS OF OHI0 | 901165 | OLGA V | PYLAEVA | 1508811811 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11012017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102025 | G9340, K523 | INDETERMINATE COLITIS | ICD10 | 11032017 | 11012017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10232017 | 2017-10-23T12:30:16+00:00 | 252777617294 | 000025221-01 | THOMAS | CULLEY | SOUND PHYSICIANS OF OHI0 | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10212017 | 11032017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023096 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 11032017 | 10212017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 11012017 | 2017-11-01T16:35:29+00:00 |  | 000067831-01 | THOMAS | SCHWARTZ | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10312017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102010 | N390, R509, R531 | Weakness | ICD10 | 11032017 | 10312017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T16:45:10+00:00 |  | 000111202-01 | Edgar | Jansen | SYCAMORE PRIMARY CARE GR | 942247 | JEVEDE D | HARRIS | 1154687127 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10272017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031008 | L089 | Local infection of the skin and subcutaneous tissue, unsp | ICD10 | 11032017 | 10272017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 09122017 | 2017-09-12T10:04:13+00:00 |  | 000111771-01 | MARY | SCARBERRY | WEST VALLEY HOSPITAL | 903025 |  | WEST VALLEY HOSPITAL | 1093791170 | WEST VALLEY HOSPITAL | 903025 | 1093791170 | WEST VALLEY HOSPITAL | 1093791170 | Inpatient | IP | Concurrent Review | CONC |  | WEST VALLEY HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 09092017 | 09112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170913046 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 11032017 | 09092017 | 09112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T07:57:54+00:00 |  | 000040095-01 | OSCAR | SINES | LICKING MEM INPATIENT ME | 936224 | KHANH V | DANG | 1922007111 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101008 | R079 | Chest pain, unspecified | ICD10 | 11032017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T09:40:50+00:00 | 260954637301 | 000104640-01 | Dorothy | Nyswaner | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11032017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10282017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030022 | T148 | Other injury of unspecified body region | ICD10 | 11032017 | 10282017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11022017 | 2017-11-02T11:03:07+00:00 | 258449437305 | 000017535-01 | JOHN | RELICH | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11012017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102031 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 11032017 | 11012017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10302017 | 2017-10-30T10:34:41+00:00 | 265232147302 | 000104867-01 | Lynn | Rowe | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10292017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030047 | R55 | Syncope and collapse | ICD10 | 11032017 | 10292017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10302017 | 2017-10-30T10:45:35+00:00 | 253050117302 | 000009478-01 | JAMES | WELLS SR | CEN OH PRIMARY CARE SPEC | 935053 | IAN J | WILSON | 1760598239 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10292017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030051 | I4891 | Unspecified atrial fibrillation | ICD10 | 11032017 | 10292017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10232017 | 2017-10-23T12:35:02+00:00 | 256768097293 | 000034905-01 | BARBARA | FREEMAN | SOUND PHYSICIANS OF OHI0 | 946244 | BABER | GHAURI | 1669562914 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10202017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023098 | I472 | Ventricular tachycardia | ICD10 | 11032017 | 10202017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 10122017 | 2017-10-12T13:06:59+00:00 | 026012055-7289 | 000047828-01 | NANCY | ASBECK | ORTHOPEDIC ONE INC | 936025 | KENNETH J | WESTERHEIDE | 1679566889 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11032017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11022017 | 11032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171013057 | S42221D | 2-part disp fx of surg nk of r humer, 7thD | ICD10 | 11032017 | 11022017 | 11032017 | 23474 | REVIS RECONST SHOULDER JOINT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09262017 | 2017-09-26T15:52:00+00:00 | 025786077-7269 | 000066662-01 | DENNIS | CONNER | ORTHOPEDIC ONE INC | 936025 | KENNETH J | WESTERHEIDE | 1679566889 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11032017 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 11022017 | 11032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170927039 | M19011, M75121 | Complete rotatr-cuff tear/ruptr of r shoulder, not trauma | ICD10 | 11032017 | 11022017 | 11032017 | 23472, 23430 | RUPTURED LONG HEAD BICEPS | CPT | 0, 0 | 1, 1 | ,  | 2, 2 | CPT | C4 |  |  |  | 1.0 |
