Feature: Process Essette Extract NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: NEWEssetteDailyExtractReport-Inpatient(NEWADD)-2017-03-27_URGEMERG
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
	And in the "Certification" page I use the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds

	And in the "Functions Menu" page I click on "Hospital Svcs"
	And the test pauses for "3" seconds
	And in the "hospital_services" page I should see the "est_admit" image
	And the test pauses for "3" seconds
	#And in the "hospital_services" page I enter "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I enter the first element from "<care_date>" into the "est_admit" image
	And in the "hospital_services" page I subtract one from the "<auth_approval_days>" days and put the result in the "auth_days" image
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
	And in the "hospital_services" page I click on the "save" image
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "5" seconds

	And in the "certification" page I should see the "loaded_blue_sidebar" image
	And the test pauses for "5" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "5" seconds
	And in the "authorized_services" page I should see the "amounts_and_dates" image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I convert "<care_date>" into the "dates_begin_requested" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_requested" image and subtract one
	And the test pauses for "2" seconds
	And in the "authorized_services" page I add the "<auth_approval_days>" to the "<care_date>" and put the result in the "dates_end_approved" image and subtract one
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<care_date>" into the "dates_begin_approved" image
	And in the "authorized_services" page I enter the first element from "<care_date>" into the "dates_begin_approved" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_requested" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_requested" image
	And the test pauses for "2" seconds
	#And in the "authorized_services" page I enter "<auth_approval_days>" into the "how_many_authorized" image
	And in the "authorized_services" page I enter the first element from "<auth_approval_days>" into the "how_many_authorized" image
	And the test pauses for "3" seconds
	And I use the sub class "<sub_class>" to determine what location to enter into the location image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub-class "<sub_class>" to determine what to enter into the "auth_type_ar" image and save the variable
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter "AD" into the "count" image

	And the test pauses for "2" seconds
	And in the "authorized_services" page I enter the primary diagnosis code into the "diag_number_2" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I click on the "save" image
	And the test pauses for "10" seconds

	And I press "F8"
	And the test pauses for "5" seconds
	And I press "F8"
	And the test pauses for "3" seconds

	And I input the notes if any are contained in "<notes>"
	And the test pauses for "5" seconds

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
		| requested_date  | military_date      | other_reference_# |	member_id | member_first_name |	member_last_name | practice_name | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name  | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	| servicing_provider_npi_# |	sub_class  | sub_class_code | type  |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm | auth_for_payment | days_used_prior | dc | denc_date | mds_date | nomnc_date | total_days | total_skilled_days | auth_type      | auth_status    |	auth_number |	diagnosis_code     |	diagnosis                                          			|	diagnosis_type |	auth_modified_date | service_code       | service_description                                                    | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                  | care_date | actual_level_of_care | approved_level_of_care | determination | auth_approval_days |
| 03062017 | 2017-03-06T08:00:15+00:00 |  | 000077332-01 | Jerome | Keller | SOUND KENWOOD HSPISTS OF | 927326 | UMASANKAR | KAKUMANU | 1699068312 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03272017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03042017 | 03172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170308049 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical received and reviewed. Meets MediGold guidelines for PNU failed OP Tx of Z-pak and worsening symptoms Pneumonia right lower lobe due to infectious organism and COPD exacerbation. Resp 24 elevated Trop. Next day continued with SOB., INPT, LVMM for UR dept requested dc date., PC from Sharon Scott at Mercy Fairfield  member remains in the hospital., LVMM requesting clinical update and/or discharge date., Fax sent requesting dc date | 03042017, 03052017, 03062017, 03072017, 03082017, 03092017, 03102017, 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14 |
| 03132017 | 2017-03-13T09:12:40+00:00 |  | 000084056-01 | Elvino | Dibartolomeo | STEVEN R LUNZ MD INC | 921394 | STEVEN R | LUNZ | 1710981089 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03272017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03112017 | 03232017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170315007 | M4646, M6281, W19XXXA | Unspecified fall, initial encounter | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical received and reviewed., L4-5 discitis/osteomyelitis with anterior paraspinal and epifuarl phlegmon. Needs to be admitted for cool down with ATB prior to being taken to OR, LVMM requesting clinical update and/or discharge date., Fax sent requesting dc date | 03112017, 03122017, 03132017, 03142017, 03152017, 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13 |
| 03202017 | 2017-03-20T10:21:49+00:00 | 256056157077 | 000024687-01 | GARLAND | TATTERSON JR | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03192017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170320006 | N390 | Urinary tract infection, site not specified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03192017, 03202017, 03212017, 03222017, 03232017, 03242017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03202017 | 2017-03-20T10:38:51+00:00 | 251574657078 | 000043900-01 | JERRY | DOSSETT | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03192017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170320015 | I4891 | Unspecified atrial fibrillation | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03192017, 03202017, 03212017, 03222017, 03232017, 03242017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03202017 | 2017-03-20T10:55:00+00:00 | 250234117078 | 000067973-01 | MERLIN | CRIPPEN | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03192017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170320024 | K5669 | Other intestinal obstruction | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03192017, 03202017, 03212017, 03222017, 03232017, 03242017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03202017 | 2017-03-20T10:46:18+00:00 |  | 000057932-01 | PEGGY | RADER | CENTRAL OHIO SURG ASSOC | 927595 | MAURICE P | PAGE | 1013177815 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL MEDICAL CENTER | 03272017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 04172017 | 05172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Pre-Service | Approved | A170320038 | E6601, I10, J45909, K219 | Gastro-esophageal reflux disease without esophagitis | ICD10 | 03272017 | 43644 | LAP GASTRIC BYPASS/ROUX-EN-Y | CPT | 1 | 1 | Approved | 31 | CPT | C4 | REQUESTED CLINICAL NOTES REFLECTING NUTRITION/DIET EDUCATION, NUTRITION EDUCATION NOTED TO HAVE BEEN RECEIVED W/INITIAL REQUEST.  SHE COMPLETE CLASS 9/10/16 |  |  |  |  | 0 |
| 03172017 | 2017-03-17T14:57:57+00:00 |  | 000111520-01 | Eugene | Ramey | OSU SURGERY LLC | 915562 | ELMADI | ELKHAMMAS | 1780635847 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03162017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170322014 | K7460 | Unspecified cirrhosis of liver | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | PMH Hep C Cirrhosis s/o liver transplant on 11/24/16 presents as direct admit for DMV viremia. IV Ganciclovir.  PICC line and dc home on IV ATB with HHC. | 03162017, 03172017, 03182017, 03192017, 03202017, 03212017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved,  | 6, 6, 6, 6, 6, 6 |
| 03172017 | 2017-03-17T09:39:44+00:00 |  | 000077898-01 | Willard | Hatfield | GENESIS MEDICAL GRP LLC | 918994 | PATRICK W | RENAUD | 1548296833 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03272017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03162017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170322052 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Multiple acute medical issues including acute on chronic resp failure  AECOPD  HCAP  Delerim  open venus ulcers  AKI.  Tx: bipap  IV atb's  Duonebs  Pulmicort  steroids, To date  6-day LOS, Approved as IP | 03162017, 03172017, 03182017, 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 10, 10, 10, 10, 10, 10, 10, 10, 10, 10 |
| 03202017 | 2017-03-20T11:30:44+00:00 |  | 000007421-01 | CHARLES | NORTHINGTON | THE OH STATE UNIVERSITY | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03272017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03182017 | 03212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170323059 | E119, I480, S12112A | Nondisplaced Type II dens fracture, init for clos fx | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Mechanical Fall resulting in cervical spine fx. C-Collar. No surgical intervention. DC to SNF. | 03182017, 03192017, 03202017, 03212017 | Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03222017 | 2017-03-22T10:17:15+00:00 |  | 000074287-01 | Buddy | Mayfield | GENESIS MEDICAL GRP LLC | 907832 | PHILIP L | GARBER | 1730131921 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 03272017 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 03212017 | 03242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324008 | R319 | Hematuria, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  |  | 03212017, 03222017, 03232017, 03242017 | Observation, Observation, Observation, Observation | Observation, Observation, Observation, Observation | Approved, Approved, Approved,  | 4, 4, 4, 4 |
| 03242017 | 2017-03-24T10:52:03+00:00 | 251201577082 | 000057219-01 | JANET | WISE | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03232017 | 03252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170324039 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03232017, 03242017, 03252017 | Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient | Approved, Approved,  | 3, 3, 3 |
| 03202017 | 2017-03-20T17:08:18+00:00 | 256672587078 | 000026449-01 | JOSIE | CLAY | HMP OF OHIO PC | 908530 | OLENA M | DUTTON | 1104964584 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03272017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 03192017 | 03262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 | Concurrent Review | Approved | A170327194 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 03272017 |  |  |  | 0 | 0 |  | 0 |  |  | Clinical documentation reviewed in PowerChart | 03192017, 03202017, 03212017, 03222017, 03232017, 03242017, 03252017, 03262017 | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient, Inpatient | Approved, Approved, Approved, Approved, Approved, Approved, Approved,  | 8, 8, 8, 8, 8, 8, 8, 8 |
