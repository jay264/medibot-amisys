Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-03_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-03_URGEMERG
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
| 05152017 | 2017-05-15T09:22:12+00:00 | 026185759-7130 | 000102003-01 | Hattie | McKinney | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515019 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08032017 | 07312017 | 08022017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07252017 | 2017-07-25T09:18:45+00:00 | 250132077205 | 000079633-01 | Billie | Bradley | SOUND PHYSICIANS OF OHI | 917943 | GIRMA A | MESHESHA | 1912111501 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 07252017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725010 | S1121XA, T18128A | Food in esophagus causing other injury, initial encounter | ICD10 | 08032017 | 07252017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08012017 | 2017-08-01T09:28:16+00:00 | 258632367212 | 000068548-01 | DONNA | FOOR | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 07312017 | 08022017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801022 | R0609, R601 | Generalized edema | ICD10 | 08032017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07262017 | 2017-07-26T15:46:59+00:00 | 262447977208 | 000051419-01 | DIANA | GUISINGER | COLON & RECTAL SURG INC | 937269 | ANANTHA | PADMANABHAN | 1689674780 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07262017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726070 | K5660 | Unspecified intestinal obstruction | ICD10 | 08032017 | 07262017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 07282017 | 2017-07-28T09:49:39+00:00 | 256434997208 | 000001952-01 | NORA | VONAU | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07272017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728014 | T148 | Other injury of unspecified body region | ICD10 | 08032017 | 07272017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08022017 | 2017-08-02T13:40:56+00:00 |  | 000117652-01 | Richard | Patterson | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 08032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08012017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802090 | I4901, K922, R791 | Abnormal coagulation profile | ICD10 | 08032017 | 08012017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07252017 | 2017-07-25T10:16:44+00:00 | 250977767205 | 000082467-01 | John | Rowley | CHARLES FAHRIG MD | 936389 | CHARLES M | FAHRIG | 1306856695 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07242017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725030 | R0902 | Hypoxemia | ICD10 | 08032017 | 07242017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08012017 | 2017-08-01T09:57:50+00:00 | 265561707213 | 000038214-01 | SANDRA | EBERT | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 07312017 | 08022017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801037 | R079 | Chest pain, unspecified | ICD10 | 08032017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07282017 | 2017-07-28T10:32:12+00:00 |  | 000085038-01 | Dick | McCoy | SOUND INPATIENT PHYS OF | 900017 | MOHAMUD S | MOHAMED | 1700869377 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 07272017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731028 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 08032017 | 07272017 | 07302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T10:38:33+00:00 |  | 000093789-01 | Leila | Hollett | OSU SURGERY LLC | 932344 | DANIEL E | VAZQUEZ | 1265611297 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07302017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801031 | M726 | Necrotizing fasciitis | ICD10 | 08032017 | 07302017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05302017 | 2017-05-30T14:14:00+00:00 |  | 000087336-01 | William | Ford | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Transplant | IN TRPLNT | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07192017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170530187 | C9000 | Multiple myeloma not having achieved remission | ICD10 | 08032017 | 07192017 | 08022017 | 36558, 76937, 38241, 96416 | CHEMO PROLONG INFUSE W/PUMP | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 15, 15, 15, 15 | CPT | C4 |  |  |  | 2.0 |
| 06272017 | 2017-06-27T08:47:00+00:00 |  | 000084135-01 | Mabel | Rhinehart | COPC CENTRAL OHIO PRIMAR | 902423 | ARADHI U | PANDYA | 1306829908 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08032017 | 10022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170627051 | K222 | Esophageal obstruction | ICD10 | 08032017 | 06262017 | 07032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08012017 | 2017-08-01T11:31:19+00:00 |  | 000101519-01 | James | Wilson | OSU INTERNAL MED LLC | 948086 | SANDIPKUMAR H | PATEL | 1265849657 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 08032017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 07282017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801062 | C159, R1310 | Dysphagia, unspecified | ICD10 | 08032017 | 07282017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08032017 | 2017-08-03T09:16:50+00:00 | 250336807215 | 000074164-01 | Marlene | Elekes | EMERGENCY SERVICES INC | 908216 | EMILY | SENG | 1417984212 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08022017 | 08032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170803013 | K3580 | Unspecified acute appendicitis | ICD10 | 08032017 | 08022017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05312017 | 2017-05-31T09:38:13+00:00 |  | 000111679-01 | Theodore | Zakany | UNIVERSITY OF CINCINNATI | 924925 | ROCKY E | PITTMAN | 1881884997 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05312017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170531046 | I10, I214, I469, I482, M25562, N183, R748, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 08032017 | 05312017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08012017 | 2017-08-01T08:55:36+00:00 |  | 000065912-01 | LEO | CULPEPPER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08012017 | 08032017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801013 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 08032017 | 08012017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T15:49:42+00:00 |  | 000092424-01 | Margaret | Ward | APOGEE MED GRP OHIO INC | 948317 | MANJINDER | PANNU | 1396091062 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07292017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731100 | D649, S72001A, W19XXXA | Unspecified fall, initial encounter | ICD10 | 08032017 | 07292017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08022017 | 2017-08-02T11:52:33+00:00 |  | 000014755-01 | LETHA | CANTRELL | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802081 | A419, R6521 | Severe sepsis with septic shock | ICD10 | 08032017 | 08012017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08012017 | 2017-08-01T08:32:57+00:00 | 250132907214 | 000070256-01 | Mary | Breedlove | SOUND PHYSICIANS OF OHI | 944089 | SHANTI | SUBBARAO | 1487910295 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801006 | E871, E876 | Hypokalemia | ICD10 | 08032017 | 07312017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 06022017 | 2017-06-02T10:13:44+00:00 | 026524451-7153 | 000049128-01 | SANDRA | FOSS | ORTHOPEDIC ONE INC | 937143 | ROBERT | MARTIN | 1174516371 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170602045 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08032017 | 08012017 | 08032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07312017 | 2017-07-31T10:37:22+00:00 | 254877797210 | 000029800-01 | JOY | LIVINGSTON | COPC CENTRAL OHIO PRIMAR | 905425 | SVITLANA | HAYNES | 1457307837 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07292017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731029 | A419 | Sepsis, unspecified organism | ICD10 | 08032017 | 07292017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07212017 | 2017-07-21T15:31:23+00:00 |  | 000083241-01 | Jane | Snoke | LANCASTER SURGICAL ASSOC | 936219 | TIMOTHY J | CUSTER | 1144211418 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07212017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170721069 | A419, K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 08032017 | 07212017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07312017 | 2017-07-31T13:10:05+00:00 | 251038377209 | 000049489-01 | SANDRA | STOTTLEMIRE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07292017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731056 | D61818, I509, K7290 | Hepatic failure, unspecified without coma | ICD10 | 08032017 | 07292017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08012017 | 2017-08-01T12:32:02+00:00 |  | 000101359-01 | RICKY | CRAIG | ONCOLOGY HEMATOLOGY CARE | 923344 | JAMES | ESSELL | 1265425078 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 08032017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07312017 | 08012017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801115 | C801 | Malignant (primary) neoplasm, unspecified | ICD10 | 08032017 | 07312017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07312017 | 2017-07-31T08:20:55+00:00 |  | 000109569-01 | Willa | Glaskin | LICKING MEM INPATIENT ME | 901182 | DAVID W | KOONTZ | 1730193137 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07302017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731109 | E872, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 08032017 | 07302017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07122017 | 2017-07-12T11:10:39+00:00 | 016952940-7193 | 000077736-01 | Dennis | Mccort | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07182017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170712019 | C3412 | Malignant neoplasm of upper lobe, left bronchus or lung | ICD10 | 08032017 | 07182017 | 08032017 | 32480, 31622, 38746 | THORACIC LYMPHADENECTOMY, REGIONAL, INCLUDING MEDIASTINAL AND | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 17, 17, 17 | CPT | C4 |  |  |  | 16.0 |
| 05262017 | 2017-05-26T01:12:04+00:00 |  | 000069899-01 | Russell | Karlen III | NORTH CENTRAL OHIO HEALT | 905685 | RASHID | PERVEZ | 1528144177 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05252017 | 06032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526002 | F328 | Other depressive episodes | ICD10 | 08032017 | 05252017 | 06032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05182017 | 2017-05-18T16:08:22+00:00 |  | 000010172-01 | GEORGE | STRODE | HOLY CROSS HOSPITAL | 906642 |  | HOLY CROSS HOSPITAL | 1194751958 | HOLY CROSS HOSPITAL | 906642 | 1194751958 | HOLY CROSS HOSPITAL | 1194751958 | Inpatient | IP | Concurrent Review | CONC |  | HOLY CROSS HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05172017 | 05282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519001 | G9340, N390 | Urinary tract infection, site not specified | ICD10 | 08032017 | 05172017 | 05282017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 07312017 | 2017-07-31T12:58:40+00:00 |  | 000051048-01 | LARRY | PRICE | ADENA MEDICAL GROUP LLC | 913549 | KEVIN J | COCHRAN | 1902879976 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07282017 | 07292017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801054 | I472, R55 | Syncope and collapse | ICD10 | 08032017 | 07282017 | 07302017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 07142017 | 2017-07-14T11:10:25+00:00 | 256203197194 | 000035507-01 | DREAMA | RIDDLE | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07132017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170714029 | N179 | Acute kidney failure, unspecified | ICD10 | 08032017 | 07132017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 07312017 | 2017-07-31T10:23:14+00:00 |  | 000075795-01 | Maxine | Thomas | GENESIS MEDICAL GRP LLC | 913879 | PHILIP | FIELDS | 1932155330 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08032017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07292017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801023 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 08032017 | 07292017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07282017 | 2017-07-28T15:42:40+00:00 |  | 000032546-01 | ROBERT | BREECKNER | SOUND PHYSICIANS OF OHI | 920505 | PRASANTHI | ARETI | 1255654679 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07282017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728051 | R6521 | Severe sepsis with septic shock | ICD10 | 08032017 | 07282017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08032017 | 2017-08-03T07:18:14+00:00 |  | 000076113-01 | Melvin | Steigleder | STEPHEN D HEISE MD & ASS | 923512 | STEPHEN D | HEIS | 1407859010 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 08032017 | Denied | MediGold Southwest OH Essential Care | Fax | Criteria Not Met | Inpatient | 08032017 | 08042017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170803004 | T8451XA | Infect/inflm reaction due to internal right hip prosth, init | ICD10 | 08032017 | 08032017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08012017 | 2017-08-01T09:46:05+00:00 | 250674357213 | 000072011-01 | Marjorie | Lott | COPC CENTRAL OHIO PRIMAR | 936972 | NISHIT G | JHAVERI | 1356400659 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801032 | I4891 | Unspecified atrial fibrillation | ICD10 | 08032017 | 07312017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07262017 | 2017-07-26T09:56:56+00:00 | 263687217206 | 000022846-01 | ELOISE | DENNY | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07252017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170726019 | E1310 | Oth diabetes mellitus with ketoacidosis without coma | ICD10 | 08032017 | 07252017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 08022017 | 2017-08-02T13:07:35+00:00 |  | 000096178-01 | Arthur | Connors | WRIGHT STATE PHYSICIANS | 948466 | MICHAEL | SMITH | 1104169697 | GOOD SAMARITAN MEDICAL CENTER | 934714 | 0 | GOOD SAMARITAN MEDICAL CENTER | 0 | Inpatient | IP | Concurrent Review | CONC |  | GOOD SAMARITAN MEDICAL CENTER | 08032017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 07262017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802071 | I209, R0609 | Other forms of dyspnea | ICD10 | 08032017 | 07262017 | 08022017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 06202017 | 2017-06-20T16:22:24+00:00 |  | 000003305-01 | NANCE | EVANS | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170620121 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08032017 | 08012017 | 08032017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08022017 | 2017-08-02T10:32:41+00:00 | 256277067214 | 000080725-01 | Peggy | Pedigo | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 08022017 | 08032017 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802036 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 08032017 | 08022017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 07282017 | 2017-07-28T11:19:30+00:00 | 164972627208 | 000081557-01 | WILLIAM | TUITE | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07272017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170728032 | S72009A | Fracture of unsp part of neck of unsp femur, init | ICD10 | 08032017 | 07272017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08012017 | 2017-08-01T10:38:24+00:00 |  | 000063516-01 | JAMES | GREGG | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 07312017 | 08032017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801051 | R55 | Syncope and collapse | ICD10 | 08032017 | 07312017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07252017 | 2017-07-25T11:29:13+00:00 |  | 000093212-01 | Pamela | Smith | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07232017 | 07312017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725040 | J9601, R0602, R079 | Chest pain, unspecified | ICD10 | 08032017 | 07232017 | 08012017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 07242017 | 2017-07-24T16:25:32+00:00 |  | 000096169-01 | Paul | Brown | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 08032017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 07212017 | 07302017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725069 | M6281 | Muscle weakness (generalized) | ICD10 | 08032017 | 07212017 | 07312017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 07312017 | 2017-07-31T11:32:16+00:00 | 252036037210 | 000077350-01 | Leslie | Mcguire | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | ACO - CHF | Inpatient | 07292017 | 08032017 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170731039 | R0602 | Shortness of breath | ICD10 | 08032017 | 07292017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08012017 | 2017-08-01T14:12:32+00:00 |  | 000002383-01 | PATRICIA | ECKEL | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08032017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 07312017 | 08032017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170801093 | N210 | Calculus in bladder | ICD10 | 08032017 | 07312017 | 08032017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
