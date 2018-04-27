Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-24_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-24_URGEMERG
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
| 04112018 | 2018-04-11T11:36:57+00:00 |  | 000097877-01 | Paul | Charles | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04082018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411064 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04242018 | 04082018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 04172018 | 2018-04-17T16:38:58+00:00 |  | 000023075-01 | GENE | HOSEY | HOSPITALIST MEDICINE PHY | 928116 | ONMA A | AMEH | 1578884565 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418008 | G9340 | Encephalopathy, unspecified | ICD10 | 04242018 | 04162018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T16:36:31+00:00 |  | 000070373-01 | Patricia | Sexton | OHIOHEALTH PHYS GRP | 937345 | CHARLES A | PUE | 1447228705 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418005 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 04242018 | 04162018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04122018 | 2018-04-12T13:01:45+00:00 |  | 000118544-01 | NINA | SEITER | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172018 | 04232018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412053 | D352 | Benign neoplasm of pituitary gland | ICD10 | 04242018 | 04172018 | 04232018 | 62165, 62272, 61782, 20926 | OBT. OTHER TIS. FOR GRAFT, | CPT | 1, 1, 1, 1 | 1, 1, 1, 1 | Approved, Approved, Approved, Approved | 7, 7, 7, 7 | CPT | C4 |  |  |  | 6.0 |
| 04172018 | 2018-04-17T11:25:46+00:00 |  | 000066498-01 | MARY | DAY | MADISON COUNTY COMMU ER | 900949 | BERNARD K | OPPONG | 1184619041 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417055 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04242018 | 04172018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04122018 | 2018-04-12T14:30:05+00:00 |  | 000010281-01 | MARY | SCHLANGER | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04202018 | 04232018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412059 | N8110 | Cystocele, unspecified | ICD10 | 04242018 | 04202018 | 04232018 | 57260, 57267, 57282, 57288, 52000 | CYSTOURETHOSCOPY | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved Observation, Approved Observation, Approved Observation, Approved Observation, Approved Observation | 4, 4, 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 03092018 | 2018-03-09T12:10:40+00:00 |  | 000101618-01 | Clara | Heitfeld | BUTLER COUNTY COMMUNITY | 925524 | MICHAEL | ARMENTROUT | 1205994688 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04242018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03082018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309040 | I050, I4891 | Unspecified atrial fibrillation | ICD10 | 04242018 | 03082018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 37.0 |
| 03262018 | 2018-03-26T17:00:25+00:00 |  | 000065929-01 | NANCY | GRIMM | SPFLD ORTHO SPORTS MED L | 927402 | KEVIN C | ZARTMAN | 1710173885 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327063 | M1611, T8484XA | Pain due to internal orthopedic prosth dev/grft, init | ICD10 | 04242018 | 04202018 | 04232018 | 27130, 20680 | REMOVAL OF IMPLANT; DEEP(EG, BURIED WIRE, PIN, SCREW, ROD, PLATE) | CPT | 1, 1 | 1, 1 | Approved, Approved | 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 04172018 | 2018-04-17T10:11:40+00:00 |  | 000097261-01 | Marilyn | Burky | GENERAL SURG ASSOC INC | 935086 | JEFFREY K | YENCHAR | 1619963196 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04162018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417074 | K5792 | Dvtrcli of intest, part unsp, w/o perf or abscess w/o bleed | ICD10 | 04242018 | 04162018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04172018 | 2018-04-17T12:07:44+00:00 |  | 000119708-01 | Burl | Ashcraft | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04242018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04162018 | 04232018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417092 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 04242018 | 04162018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04172018 | 2018-04-17T12:38:16+00:00 |  | 000025086-01 | ISHMAEL | SKAGGS | OHIOHEALTH PHYS GRP | 936930 | PATRICIA F | HOLLINGSWORTH | 1730117276 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04152018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417111 | I5043, N179 | Acute kidney failure, unspecified | ICD10 | 04242018 | 04152018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04182018 | 2018-04-18T09:17:17+00:00 |  | 000029707-01 | DAISY | SEEVERS | LICKING MEM HLTH PROF | 903753 | PHILLIP G | SAVAGE | 1609875202 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418020 | K5660 | Unspecified intestinal obstruction | ICD10 | 04242018 | 04172018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04192018 | 2018-04-19T15:17:55+00:00 |  | 000077391-01 | Helen | Foster | CENTRAL OHIO SURG ASSOC | 937001 | JASON C | KEITH | 1740208511 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419070 | K5669 | Other intestinal obstruction | ICD10 | 04242018 | 04192018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03312018 | 2018-03-31T08:12:46+00:00 |  | 000113682-01 | Paul | Winstead | DUBLIN SPRINGS LLC | 926803 | JENNIFER L | WILSON | 1801141734 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03312018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402024 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 04242018 | 03312018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04112018 | 2018-04-11T07:42:46+00:00 |  | 000102522-01 | Larry | Fouty | WRIGHT STATE PHYSICIANS | 904060 | JAMES R | OUELLETTE | 1245288422 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04192018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411032 | K8050 | Calculus of bile duct w/o cholangitis or cholecyst w/o obst | ICD10 | 04242018 | 04192018 | 04212018 | 47562 | LAPAROSCOPIC CHOLECYSTECTOMY | CPT | 0 | 1 |  | 3 | CPT | C4 |  |  |  | 2.0 |
| 04122018 | 2018-04-12T15:17:12+00:00 |  | 000111728-01 | Virginia | Ruppersburg | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04112018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412061 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 04242018 | 04112018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04132018 | 2018-04-13T08:56:31+00:00 |  | 000097165-01 | Ronald | Brewer | INTERNAL MED CARE INC | 942842 | JOSEPH R | CRAWFORD | 1811242571 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04122018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413022 | J189 | Pneumonia, unspecified organism | ICD10 | 04242018 | 04122018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04142018 | 2018-04-14T15:10:05+00:00 |  | 000116631-01 | George | Bishop | HMP OF RICHLAND COUNTY L | 918510 | HARMANPREET S | SHINH | 1578729174 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04242018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416029 | S72011S | Unspecified intracapsular fracture of right femur, sequela | ICD10 | 04242018 | 04132018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04152018 | 2018-04-15T12:39:34+00:00 |  | 000097545-01 | Barbara | Bryan | COLS INPATIENT CARE INC | 952413 | ARAM | GABRIELYAN | 1770901985 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04132018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416047 | R0600, R079 | Chest pain, unspecified | ICD10 | 04242018 | 04132018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04182018 | 2018-04-18T10:25:53+00:00 |  | 000113757-01 | Joyce | Mcintire | OHIOHEALTH PHYS GRP | 914616 | NATHAN D | LOTT | 1124291000 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418027 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04242018 | 04172018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T10:43:18+00:00 |  | 000086427-01 | Jack | Huddleston | CENTRAL OH HSPISTS INC | 905865 | MICHAEL E | BANG | 1245349463 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04242018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418036 | J9690 | Respiratory failure, unsp, unsp w hypoxia or hypercapnia | ICD10 | 04242018 | 04172018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04192018 | 2018-04-19T08:28:45+00:00 |  | 000025903-01 | MARY | DODRILL | ORTHOPEDIC & NEUROLOGICA | 916556 | BRUCE R | COMISAR | 1063407765 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04242018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04202018 | 04222018 | Expedited |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419011 | S42292D | Oth disp fx of upper end l humer, subs for fx w routn heal | ICD10 | 04242018 | 04202018 | 04222018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04192018 | 2018-04-19T08:29:43+00:00 |  | 000118640-01 | Stevie | Wright | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04242018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04202018 | 04222018 | Expedited |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419012 | T84498A | Mech compl of internal orth devices, implnt and grafts, init | ICD10 | 04242018 | 04202018 | 04222018 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04192018 | 2018-04-19T10:17:09+00:00 |  | 000110989-01 | John | Doneff | ORTHO & NEURO CONSULTS I | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04242018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 04232018 | 04242018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419026 | M25512 | Pain in left shoulder | ICD10 | 04242018 | 04232018 | 04242018 | 23472, 23420, 23440, 23406, 23395, 23020 | RELEASE CAPSULAR CONTRACTURE | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04202018 | 2018-04-20T13:42:50+00:00 |  | 000051416-01 | Richard | Robinson | BRUCE L AUERBACH MD LLC | 936633 | BRUCE L | AUERBACH | 1235139932 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04182018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420061 | R001 | Bradycardia, unspecified | ICD10 | 04242018 | 04182018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04202018 | 2018-04-20T13:46:53+00:00 |  | 000048480-01 | RUTH | DUNN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Reports | ACO - Cardiology | Inpatient | 04182018 | 04202018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420063 | I200 | Unstable angina | ICD10 | 04242018 | 04182018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04202018 | 2018-04-20T13:55:37+00:00 |  | 000078465-01 | Edward | Gabriel | HOSPITALIST MEDICINE PHY | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04242018 | Approved | MediGold Classic Preferred | Fax | ACO - Atrial Fib | Inpatient | 04202018 | 04212018 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423020 | I4891, S42301A | Unsp fracture of shaft of humerus, right arm, init | ICD10 | 04242018 | 04202018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202018 | 2018-04-20T17:23:32+00:00 |  | 000049483-01 | ROY | MAPLE | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423023 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 04242018 | 04192018 | 04222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04222018 | 2018-04-22T12:36:47+00:00 |  | 000081905-01 | Mary | Maynard | HOSPITALIST MEDICINE PHY | 926900 | ANIRBAN | BISWAS | 1871891614 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 04242018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423036 | G8193, R4701 | Aphasia | ICD10 | 04242018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T16:58:32+00:00 |  | 000051447-01 | JOYCE | SMITH | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04242018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04212018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424031 | I2119 | STEMI involving oth coronary artery of inferior wall | ICD10 | 04242018 | 04212018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
