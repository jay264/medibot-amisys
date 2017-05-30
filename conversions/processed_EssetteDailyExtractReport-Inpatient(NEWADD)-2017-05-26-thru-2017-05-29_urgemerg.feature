Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-26-thru-2017-05-29_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-05-26-thru-2017-05-29_URGEMERG
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

	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_authorized" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I subtract the auth admission date "<auth_admission_date>" from the auth discharge date "<auth_discharge_date>" and put the result plus 1 in the "how_many_requested" image
	And the test pauses for "2" seconds

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
| 04112017 | 2017-04-11T16:39:10+00:00 |  | 000094451-01 | Tanya | Jasinski | UNIVERSITY OF CINCINNATI | 943877 | DONALD R | LYNCH JR | 1285891481 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 944170 | 1689618423 | UNIVERSITY OF CINCINNATI MEDICAL CEN | 1689618423 | Inpatient | IP | Concurrent Review | CONC |  | UNIVERSITY OF CINCINNATI MEDICAL CEN | 05262017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04112017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170413006 | I509, R55 | Syncope and collapse | ICD10 | 05262017 | 04112017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 44.0 |
| 04142017 | 2017-04-14T11:03:30+00:00 | 026554453-7138 | 000081646-01 | Jodi | Cooperrider | ORTHO & NEURO CONSULTS I | 927297 | NICHOLAS A | CHENEY | 1477752970 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170414041 | E1140, M86371 | Chronic multifocal osteomyelitis, right ankle and foot | ICD10 | 05262017 | 05222017 | 05252017 | 27880 | AMPUTATION LEG THRU TIBIA & FIBULA | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04242017 | 2017-04-24T06:26:00+00:00 |  | 000115915-01 | VALLA | ODELL | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170424100 | A419, C9110 | Chronic lymphocytic leuk of B-cell type not achieve remis | ICD10 | 05262017 | 04222017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262017 | 2017-04-26T10:46:34+00:00 |  | 000072109-01 | Linda | Bond | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 04252017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426024 | J159 | Unspecified bacterial pneumonia | ICD10 | 05262017 | 04252017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 30.0 |
| 04252017 | 2017-04-25T12:21:01+00:00 |  | 000116637-01 | Janis | Stout | MOUNT CARMEL HLTH PRVDRS | 910451 | MICHAEL G | MONCMAN | 1114927571 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170426072 | M4310, M4806 | Spinal stenosis, lumbar region | ICD10 | 05262017 | 05222017 | 05262017 | 22612, 22842, 20930, 63047, 63048 | LMCTMY;DCMP CRD/NRV RT,@ ADDTL SEG | CPT | 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved | 5, 5, 5, 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 04282017 | 2017-04-28T14:03:34+00:00 |  | 000085074-01 | Susan | Arnold | MERCY HEALTH PHYSICIANS | 901746 | PAMELA S | BUCKLEW-WILDER | 1639175524 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05012017 | 05152017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170428041 | C187, K432 | Incisional hernia without obstruction or gangrene | ICD10 | 05262017 | 05012017 | 05152017 | 44140, 49560 | HERNIA-VENTRAL-INCISIONAL | CPT | 1, 1 | 1, 1 | Approved, Approved | 15, 15 | CPT | C4 |  |  |  | 14.0 |
| 05112017 | 2017-05-11T09:00:20+00:00 | 026632622-7066 | 000028689-01 | LEOTA | LAWHORN | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05252017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511044 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05262017 | 05252017 | 05262017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05112017 | 2017-05-11T09:07:23+00:00 |  | 000113274-01 | Barbara | Wilson | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05102017 | 05142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170511059 | F250, F419 | Anxiety disorder, unspecified | ICD10 | 05262017 | 05102017 | 05142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05122017 | 2017-05-12T09:27:38+00:00 |  | 000107972-01 | Barbara | Wolf | ALLIANCE PHYSICIANS INC | 916479 | CAREY C | BROWN | 1639162449 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05112017 | 05132017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170512061 | K458 | Oth abdominal hernia without obstruction or gangrene | ICD10 | 05262017 | 05112017 | 05132017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05152017 | 2017-05-15T09:55:21+00:00 |  | 000108044-01 | Donna | Hill | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 05262017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05132017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515045 | A419, J9600, S32601A, S62601A | Fracture of unsp phalanx of left index finger, init | ICD10 | 05262017 | 05132017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05152017 | 2017-05-15T12:07:57+00:00 |  | 000041765-01 | CLAUDE | ELKINS | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05262017 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 05122017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515080 | J939 | Pneumothorax, unspecified | ICD10 | 05262017 | 05122017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05152017 | 2017-05-15T15:42:16+00:00 |  | 000028939-01 | CHARLES | HIXSON | MOUNT CARMEL HLTH SYS | 935780 | DEBORAH J | WOIDTKE | 1457339806 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05142017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515111 | R4182 | Altered mental status, unspecified | ICD10 | 05292017 | 05142017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05152017 | 2017-05-15T14:21:11+00:00 |  | 000072501-01 | Penny | Lescalleet | BUCKEYE FAMILY HEALTH | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05262017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05132017 | 05162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170515133 | I214, J189, R0902 | Hypoxemia | ICD10 | 05262017 | 05132017 | 05162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05162017 | 2017-05-16T10:07:04+00:00 |  | 000073445-01 | Peggy | Francies | ADENA MEDICAL GROUP LLC | 906079 | KEVIN M | RADECKI | 1194724260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05242017 | 05282017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516035 | R918 | Other nonspecific abnormal finding of lung field | ICD10 | 05292017 | 05242017 | 05282017 | 32666, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 05162017 | 2017-05-16T13:38:16+00:00 |  | 000006892-01 | JOSEPHINE | GOODY | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 05262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05252017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170516086 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05262017 | 05252017 | 05262017 | 27446 | ARTHROPLASTY KNEE MEDIL/LAT CMPRT. | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 05172017 | 2017-05-17T10:59:52+00:00 |  | 000039580-01 | BARBARA | STAFFORD | S DAYTON ACUTE CARE CNSL | 917403 | ADAM A | FERSHKO | 1780833244 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05162017 | 05192017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517030 | J449, R42 | Dizziness and giddiness | ICD10 | 05262017 | 05162017 | 05192017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05172017 | 2017-05-17T12:02:22+00:00 |  | 000010244-01 | Bernard | Williams | ELECTROPHYSIOLOGY | 908604 | RALPH S | AUGOSTINI | 1104821552 | THE OH STATE UNIVERSITY | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05262017 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05182017 | 05202017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170517084 | I471 | Supraventricular tachycardia | ICD10 | 05262017 | 05182017 | 05202017 | 93224 | ECG 24 HRS.;INCLUDES RECORDING, SCANNING ANANLYSIS C REP., REV. & INT. | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05172017 | 2017-05-17T17:28:31+00:00 |  | 000036631-01 | MARY | TAYLOR | CEN OH NEURO SURGEONS IN | 904970 | ROBERT J | GEWIRTZ | 1316944689 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05232017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518005 | D496 | Neoplasm of unspecified behavior of brain | ICD10 | 05262017 | 05232017 | 05252017 | 61570 | CRANIECTOMY OR CRANIOTOMY; WITH EXCISION OF FOREIGN BODY FROM BRAIN | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 05182017 | 2017-05-18T09:15:20+00:00 |  | 000101588-01 | Eileen | Bentley | GENESIS MEDICAL GRP LLC | 918994 | PATRICK W | RENAUD | 1548296833 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05262017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 05172017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518019 | R0602 | Shortness of breath | ICD10 | 05262017 | 05172017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05182017 | 2017-05-18T11:43:39+00:00 | 016857987-7138 | 000091287-01 | Edward | Ausborn | IMMEDIATE HEALTH ASSOC | 907866 | JAMES DAVID | LEONARD III | 1881881480 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05182017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170518034 | R600 | Localized edema | ICD10 | 05262017 | 05182017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05192017 | 2017-05-19T09:43:15+00:00 | 025945130-7138 | 000015307-01 | ROY | BELL | BARNETT JR, GEORGE W | 900431 | GEORGE W | BARNETT JR | 1487602389 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05182017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519007 | J189 | Pneumonia, unspecified organism | ICD10 | 05262017 | 05182017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05192017 | 2017-05-19T09:51:07+00:00 |  | 000058103-01 | FERN | SMITH | APOGEE MED GRP OHIO INC | 944991 | HESHAM | OMAR | 1407152366 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05192017 | 05212017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519011 | M25559 | Pain in unspecified hip | ICD10 | 05262017 | 05192017 | 05212017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05192017 | 2017-05-19T14:41:45+00:00 |  | 000074627-01 | Ronald | Zapfe | ALLIANCE PHYSICIANS INC | 942508 | ADAM | BRULE | 1356626238 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 05262017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05192017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170519071 | F329 | Major depressive disorder, single episode, unspecified | ICD10 | 05262017 | 05192017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05222017 | 2017-05-22T07:54:12+00:00 |  | 000046174-01 | PAUL | BUSSEY | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05212017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522001 | M542 | Cervicalgia | ICD10 | 05292017 | 05212017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T08:10:20+00:00 |  | 000115231-01 | R | WIANT | APOGEE MED GRP OHIO INC | 948862 | JASMINDER | SINGH | 1851731525 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05262017 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05212017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522027 | S72011A | Unsp intracapsular fracture of right femur, init for clos fx | ICD10 | 05262017 | 05212017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05202017 | 2017-05-20T09:44:37+00:00 |  | 000022640-01 | SUE | MCCOY | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05192017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522029 | R410 | Disorientation, unspecified | ICD10 | 05262017 | 05192017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05212017 | 2017-05-21T09:52:42+00:00 |  | 000111547-01 | KENNETH | GRESSIERER | ORTHOPEDIC ONE INC | 936019 | DEREK L | SNOOK | 1508859752 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05202017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522033 | R1310 | Dysphagia, unspecified | ICD10 | 05262017 | 05202017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T12:07:21+00:00 |  | 000041186-01 | ROBERT | GORNALL | OBERLANDER & ASSOC INTL | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05212017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522069 | A047 | Enterocolitis due to Clostridium difficile | ICD10 | 05262017 | 05212017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T13:24:15+00:00 |  | 000050134-01 | SHERYL | MEADE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05212017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522092 | E1310 | Oth diabetes mellitus with ketoacidosis without coma | ICD10 | 05262017 | 05212017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T15:06:05+00:00 |  | 000081536-01 | Deborah | Graves | COMMUNITY HSPIST LLC | 905161 | LEON D | HUGHES | 1083696207 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05192017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170522112 | I213, J189, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05262017 | 05192017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 05222017 | 2017-05-22T07:27:23+00:00 |  | 000084059-01 | Carl | Cathel | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05262017 | Approved | MediGold Essential Care | EMR | Secondary Only | Inpatient | 05222017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523001 | I639 | Cerebral infarction, unspecified | ICD10 | 05262017 | 05222017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05232017 | 2017-05-23T09:41:55+00:00 |  | 000117517-01 | JUDITH | HAMILTON | MUSKINGUM MED GRP LTD | 923003 | RAUL A | HERNANDEZ | 1588678684 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 05262017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523036 | T8130XA | Disruption of wound, unspecified, initial encounter | ICD10 | 05262017 | 05222017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05232017 | 2017-05-23T10:46:53+00:00 |  | 000063801-01 | PHILLIP | ROBERTS | FAIRFIELD MEDICAL CENTER | 936439 |  | FAIRFIELD MEDICAL CENTER | 1467433763 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05222017 | 05242017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523044 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 05262017 | 05222017 | 05242017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05232017 | 2017-05-23T11:35:29+00:00 |  | 000049874-01 | ALVIN | BOGGS | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05222017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170523048 | K8080 | Other cholelithiasis without obstruction | ICD10 | 05262017 | 05222017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05242017 | 2017-05-24T11:31:08+00:00 |  | 000034098-01 | SYLVIA | ISAACS | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | EMR | ACO - Atrial Fib | Inpatient | 05232017 | 05272017 | Standard | Atrial Fib - $6,140 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524026 | I480 | Paroxysmal atrial fibrillation | ICD10 | 05292017 | 05242017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 05242017 | 2017-05-24T12:08:40+00:00 |  | 000053881-01 | WILLIAM | HENRY | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05232017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524032 | A419 | Sepsis, unspecified organism | ICD10 | 05262017 | 05232017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05242017 | 2017-05-24T14:50:45+00:00 |  | 000072054-01 | Virginia | Schneider | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 05242017 | 05262017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170524065 | N201 | Calculus of ureter | ICD10 | 05262017 | 05242017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05252017 | 2017-05-25T09:44:19+00:00 |  | 000061059-01 | WANDA | EWELL | CEN OH PRIMARY CARE PHYS | 917687 |  | CENTRAL OH PRIMARY CARE PHYSICIANS | 0 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05242017 | 05262017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525019 | I998 | Other disorder of circulatory system | ICD10 | 05262017 | 05242017 | 05262017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05252017 | 2017-05-25T09:57:12+00:00 |  | 000072233-01 | Linda | Payette | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05262017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 05242017 | 05252017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170525025 | N289 | Disorder of kidney and ureter, unspecified | ICD10 | 05262017 | 05242017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05262017 | 2017-05-26T08:14:58+00:00 |  | 000035467-01 | ROGER | HART | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05262017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05252017 | 05252017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526001 | I469 | Cardiac arrest, cause unspecified | ICD10 | 05262017 | 05252017 | 05252017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05262017 | 2017-05-26T10:36:07+00:00 |  | 000102147-01 | Jacqulyn | Rinehart | MOUNT CARMEL HLTH SYS | 947112 | CHARLES H | DABBS | 1992020598 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | EMR | EIS | Inpatient | 05252017 | 05272017 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526024 | R1011 | Right upper quadrant pain | ICD10 | 05292017 | 05252017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05262017 | 2017-05-26T15:03:23+00:00 |  | 000096673-01 | Roberta | Mitchell | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05292017 | Approved | MediGold Classic Preferred | EMR | Inpatient | Inpatient | 05262017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170526065 | I441 | Atrioventricular block, second degree | ICD10 | 05292017 | 05262017 | 05272017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05262017 | 2017-05-26T13:25:48+00:00 |  | 000080721-01 | James | Paisley | MID STATE PHYSICIANS LLP | 911023 | ARMAND A | BERMUDEZ | 1952341117 | SELECT SPECIALTY HOSPITA | 915731 | 1861492217 | SELECT SPECIALTY HOSPITAL ZANESVILLE | 1861492217 | Long Term Acute Care Hospital | LTACH | Concurrent Review | CONC |  | SELECT SPECIALTY HOSPITAL ZANESVILLE | 05262017 | Denied | MediGold Southeast OH Essential Care | Fax | Criteria Not Met | Inpatient | 05262017 | 05272017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A170526054 | K5660, N178 | Other acute kidney failure | ICD10 | 05262017 | 05262017 |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
