Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-08_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-11-08_URGEMERG
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
| 11032017 | 2017-11-03T08:57:00+00:00 | 025211412-7276 | 000093043-01 | Linda | Martin | ORTHO & NEURO CONSULTS I | 935727 | MICHAEL B | CANNONE | 1275517328 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11072017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103019 | M1711, M25561 | Pain in right knee | ICD10 | 11072017 | 11062017 | 11072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11012017 | 2017-11-01T17:20:47+00:00 | 025612380-7289 | 000081349-01 | Beulah | Sparks | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102060 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11072017 | 11062017 | 11072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11012017 | 2017-11-01T17:18:08+00:00 | 016760123-7278 | 000075474-01 | Betty | Vollmar | JOINT IMPLANT SURGEONS | 910893 | JASON M | HURST | 1760667810 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11072017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103060 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11072017 | 11062017 | 11072017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10302017 | 2017-10-30T10:46:43+00:00 | 026734365-7300 | 000045920-01 | JOHNATHAN | MILLER | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11072017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11062017 | 11072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031051 | T8489XS | Oth comp of internal orthopedic prosth dev/grft, sequela | ICD10 | 11072017 | 11062017 | 11072017 | 20680 | REMOVAL OF IMPLANT; DEEP(EG, BURIED WIRE, PIN, SCREW, ROD, PLATE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11022017 | 2017-11-02T11:08:13+00:00 | 267347197305 | 000067295-01 | JAMES | WILSON | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11072017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102033 | D631 | Anemia in chronic kidney disease | ICD10 | 11072017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11062017 | 2017-11-06T10:04:31+00:00 |  | 000118771-01 | JAMES | BACHUS | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11042017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106125 | K5900 | Constipation, unspecified | ICD10 | 11082017 | 11042017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11012017 | 2017-11-01T15:21:08+00:00 |  | 000053909-01 | RICHARD | TURNER | CLEVELAND CLINIC FNDN | 922853 | THOMAS D | CALLAHAN V | 1023004520 | CLEVELAND CLINIC FNDN | 936488 | 1679525919 | CLEVELAND CLINIC FNDN | 1679525919 | Inpatient | IP | Concurrent Review | CONC |  | CLEVELAND CLINIC FNDN | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102008 | I472 | Ventricular tachycardia | ICD10 | 11082017 | 10302017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10242017 | 2017-10-24T15:40:02+00:00 |  | 000070886-01 | Donald | Schlater | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10262017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171025054 | G9340 | Encephalopathy, unspecified | ICD10 | 11082017 | 10262017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 11082017 | 2017-11-08T08:13:19+00:00 |  | 000100972-01 | Riley | Coleman | COPC CENTRAL OHIO PRIMAR | 918098 | BHARATKUMAR I | PATEL | 1952692667 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 11072017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108001 | I229 | Subsequent STEMI of unsp site | ICD10 | 11082017 | 11072017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 10302017 | 2017-10-30T16:30:59+00:00 |  | 000068308-01 | THEODORE | NUNGESSER | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10282017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031006 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 11082017 | 10282017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10232017 | 2017-10-23T10:18:40+00:00 |  | 000119162-01 | Elizabeth | Yoho | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023090 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11082017 | 10302017 | 11022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 11062017 | 2017-11-06T08:58:50+00:00 |  | 000060665-01 | SARAH | COLLINS | SAMARITAN HSPIST GRP | 913747 | ATUL | KUTWAL | 1902136153 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11052017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106095 | J90, M7989, R0600, R0689, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 11082017 | 11052017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 10312017 | 2017-10-31T08:31:39+00:00 |  | 000073550-01 | Leota | Shook | HMP OF FRANKLIN CTY LTD | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10302017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171031059 | I509, R197 | Diarrhea, unspecified | ICD10 | 11082017 | 10302017 | 11022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10262017 | 2017-10-26T11:16:07+00:00 |  | 000115851-01 | TOR | GILBO | ALLIANCE PHYS BH INC | 950907 | CHRISTOPHER | HASSELTINE | 1205809001 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10262017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171026054 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 11082017 | 10262017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 10132017 | 2017-10-13T13:54:15+00:00 |  | 000093179-01 | Charles | Bailey Jr. | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10132017 | 11032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171016041 | J918, K922, R0902 | Hypoxemia | ICD10 | 11082017 | 10132017 | 11032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 11082017 | 2017-11-08T09:30:50+00:00 |  | 000076643-01 | Anna | Lang | SOUND PHYSICIANS OF OHI0 | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | EMR | ACO - CHF | Inpatient | 11042017 | 11072017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108019 | I480, I509 | Heart failure, unspecified | ICD10 | 11082017 | 11042017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11082017 | 2017-11-08T10:10:51+00:00 |  | 000044248-01 | BETTY | LEHMAN | CEN OH UROLOGY GRP INC | 935062 | MICHAEL A | WODARCYK | 1407827264 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 11062017 | 11072017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108031 | N200 | Calculus of kidney | ICD10 | 11082017 | 11062017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11032017 | 2017-11-03T14:46:06+00:00 |  | 000066152-01 | WILLIAM | IRWIN | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11022017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106011 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 11082017 | 11022017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11032017 | 2017-11-03T09:49:53+00:00 | 250679647306 | 000032393-01 | JOSEPHINE | LEIDINGER | SOUND PHYSICIANS OF OHI0 | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103024 | M6282, R4182 | Altered mental status, unspecified | ICD10 | 11082017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10172017 | 2017-10-17T09:53:54+00:00 | 262311477289 | 000112246-01 | John | Mackey | SOUND PHYSICIANS OF OHI0 | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10162017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171017022 | C9110, N179, R110, R509 | Fever, unspecified | ICD10 | 11082017 | 10162017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 10302017 | 2017-10-30T14:20:59+00:00 |  | 000080879-01 | Debra | Fisher | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 10282017 | 11042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030109 | L03319, R109 | Unspecified abdominal pain | ICD10 | 11082017 | 10282017 | 11042017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 11082017 | 2017-11-08T10:40:41+00:00 |  | 000069611-01 | ARLINE | RECHT | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Essential Care | EMR | Inpatient | Inpatient | 11072017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108035 | I248, I480 | Paroxysmal atrial fibrillation | ICD10 | 11082017 | 11072017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 11062017 | 2017-11-06T11:04:54+00:00 | 252868677309 | 000024690-01 | JOSEPHINE | KIBBEE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Reports | ACO - Atrial Fib | Inpatient | 11052017 | 11082017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106047 | R8290 | Unspecified abnormal findings in urine | ICD10 | 11082017 | 11052017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11032017 | 2017-11-03T10:08:02+00:00 | 252273747306 | 000057095-01 | PETER | REYNOLDS | SOUND PHYSICIANS OF OHI0 | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103030 | I724, L0390 | Cellulitis, unspecified | ICD10 | 11082017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11012017 | 2017-11-01T10:53:10+00:00 |  | 000081785-01 | Cora | Stevens | OH ONCOLOGY & HEMATOLOGY | 934970 | LUIS | VACCARELLO | 1225034622 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 11062017 | 11072017 | Expedited |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101033 | C541 | Malignant neoplasm of endometrium | ICD10 | 11082017 | 11062017 | 11072017 | 38571, 58571 | TLH W/T/O 250 G OR LESS,26.32,26.32 | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 11062017 | 2017-11-06T10:35:50+00:00 | 251067617307 | 000030358-01 | Joseph | Sullivan | SOUND PHYSICIANS OF OHI0 | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 11032017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106040 | E874, G9340 | Encephalopathy, unspecified | ICD10 | 11082017 | 11032017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10312017 | 2017-10-31T15:43:34+00:00 |  | 000069923-01 | Robert | Tartal | MOUNT CARMEL WEST PHYS | 935048 | MICHAEL B | WILLIARD | 1184617268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171102015 | M75121, Z96611 | Presence of right artificial shoulder joint | ICD10 | 11082017 | 11062017 | 11072017 | 23474 | REVIS RECONST SHOULDER JOINT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11082017 | 2017-11-08T11:15:04+00:00 |  | 000080313-01 | Janice | Widrig | SOUND PHYSICIANS OF OHI0 | 934036 | CORY K | HUSSAIN | 1952368409 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108041 | L0390 | Cellulitis, unspecified | ICD10 | 11082017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11032017 | 2017-11-03T15:24:12+00:00 | 025277761-7307 | 000025221-01 | THOMAS | CULLEY | SOUND PHYSICIANS OF OHI0 | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | EMR | Secondary Only | Inpatient | 11032017 | 11052017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171103088 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 11082017 | 11032017 | 11052017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 11082017 | 2017-11-08T09:44:01+00:00 |  | 000043533-01 | GLORIA | NICELY | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11072017 | 11082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108024 | M546, M961 | Postlaminectomy syndrome, not elsewhere classified | ICD10 | 11082017 | 11072017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 09072017 | 2017-09-07T11:25:58+00:00 |  | 000099098-01 | Nancy | Johnson | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11072017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170907071 | M1612 | Unilateral primary osteoarthritis, left hip | ICD10 | 11082017 | 11072017 | 11082017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11032017 | 2017-11-03T14:44:51+00:00 |  | 000005922-01 | VERA | TAYLOR | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11022017 | 11072017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106008 | D649, I509, R17 | Unspecified jaundice | ICD10 | 11082017 | 11022017 | 11072017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 10232017 | 2017-10-23T11:36:28+00:00 |  | 000036717-01 | JEANNETTE | LECRONE | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 10212017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023129 | C9000, D61818, M25551 | Pain in right hip | ICD10 | 11082017 | 10212017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 11062017 | 2017-11-06T11:15:14+00:00 |  | 000053137-01 | BARBARA | GERHARDT | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11032017 | 11062017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106111 | E871, E876, R197 | Diarrhea, unspecified | ICD10 | 11082017 | 11032017 | 11062017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 10192017 | 2017-10-19T14:42:28+00:00 | 026183655-7278 | 000082106-01 | Teresa | Morey | MOUNT CARMEL WEST PHYS | 937327 | JOEL R | POLITI | 1013900307 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171020084 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 11082017 | 11072017 | 11082017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 09192017 | 2017-09-19T11:45:20+00:00 |  | 000055087-01 | NORMA | SARGENT | MOUNT CARMEL WEST PHYS | 936646 | STEVEN | GAINES | 1235122573 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170919072 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 11082017 | 11072017 | 11082017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 08142017 | 2017-08-14T08:24:29+00:00 | 025044201-7220 | 000104740-01 | Michael | Gardner | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814021 | K635 | Polyp of colon | ICD10 | 11082017 | 11062017 | 11082017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10312017 | 2017-10-31T11:54:55+00:00 |  | 000079783-01 | Patricia | Hunter | MOUNT CARMEL WEST PHYS | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11062017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171101057 | C189 | Malignant neoplasm of colon, unspecified | ICD10 | 11082017 | 11062017 | 11082017 | 44204 | LAPARO PARTIAL COLECTOMY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 09262017 | 2017-09-26T11:48:45+00:00 |  | 000089649-01 | Kitty | Phillippi | ORTHO ASSOC SPFLD INC | 918581 | NOSHIR E | DEBOO | 1164609814 | OHIO VALLEY MEDICAL CENTER | 911366 | 1538304050 | OHIO VALLEY MEDICAL CENTER | 1538304050 | Inpatient | IP | Concurrent Review | CONC |  | OHIO VALLEY MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 11062017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170926078 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 11082017 | 11062017 | 11082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 10202017 | 2017-10-20T13:06:03+00:00 | 025218298-7305 | 000004214-01 | MARION | PANICO | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023027 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 11082017 | 11072017 | 11082017 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 10302017 | 2017-10-30T09:51:49+00:00 | 173010427302 | 000102871-01 | Barbara | Pence | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 10292017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030029 | R609 | Edema, unspecified | ICD10 | 11082017 | 10292017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 10302017 | 2017-10-30T08:42:50+00:00 | 256967767303 | 000089520-01 | Paul | Carter | CENTRAL OHIO SURG ASSOC | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 10292017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171030010 | S06360A | Traum hemor cereb, w/o loss of consciousness, init | ICD10 | 11082017 | 10292017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 11062017 | 2017-11-06T09:49:25+00:00 | 262461947308 | 000063043-01 | BEULA | MOXLEY | TRAUMA & CRITICAL CARE S | 912763 |  | TRAUMA & CRITICAL CARE SURGEONS LLC | 1386976462 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11042017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106020 | S7291XA | Unsp fracture of right femur, init for clos fx | ICD10 | 11082017 | 11042017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 10232017 | 2017-10-23T09:30:41+00:00 | 018002443-7297 | 000077036-01 | Irene | Matson | ORTHO SPEC & SPORTS MED | 924918 | ALEKSANDAR | TANCEVSKI | 1194974824 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 11082017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 11072017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171023063 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 11082017 | 11072017 | 11082017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 11062017 | 2017-11-06T09:27:33+00:00 | 251619797307 | 000017650-01 | EDITH | EVANS | COLS INPATIENT CARE INC | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11032017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106014 | J159 | Unspecified bacterial pneumonia | ICD10 | 11082017 | 11032017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 11082017 | 2017-11-08T08:18:11+00:00 |  | 000087354-01 | Tanya | Levering | ORTHOPEDIC ONE INC | 905410 | DAVID | HANNALLAH | 1225001183 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Essential Care | Reports | EIS | Inpatient | 11072017 | 11082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171108002 | M4802 | Spinal stenosis, cervical region | ICD10 | 11082017 | 11072017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05182017 | 2017-05-18T09:37:07+00:00 |  | 000111377-01 | James | Zavisin | CARY COPELAND, DPM, INC | 926068 | DOMINIC A | RIZZO | 1043283047 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 11082017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 05162017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518021 | L97329 | Non-pressure chronic ulcer of left ankle with unsp severity | ICD10 | 11082017 | 05162017 | 05212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 11062017 | 2017-11-06T09:15:09+00:00 | 253849727308 | 000002210-01 | SONYA | CHAFIN | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 11042017 | 11082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106007 | R296 | Repeated falls | ICD10 | 11082017 | 11042017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 11062017 | 2017-11-06T09:53:58+00:00 | 253245927309 | 000014018-01 | MARY | QUARANTO | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 11052017 | 11082017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171106022 | R079 | Chest pain, unspecified | ICD10 | 11082017 | 11052017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 11072017 | 2017-11-07T08:22:20+00:00 |  | 000072079-01 | Deborah | Large | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 11082017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 11062017 | 11082017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171107004 | Q790 | Congenital diaphragmatic hernia | ICD10 | 11082017 | 11062017 | 11082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
