Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-23_thru_2018-03-25_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-23_thru_2018-03-25_URGEMERG
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
| 03202018 | 2018-03-20T12:30:43+00:00 |  | 000100929-01 | Melvin | Shetler | CEN OH UROLOGY GRP INC | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03192018 | 03212018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320056 | N210 | Calculus in bladder | ICD10 | 03232018 | 03192018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03192018 | 2018-03-19T10:34:21+00:00 |  | 000082108-01 | Carolyn | Searls | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319076 | A419 | Sepsis, unspecified organism | ICD10 | 03232018 | 03182018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03202018 | 2018-03-20T11:00:48+00:00 |  | 000102088-01 | CECILIA | MILLER | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320042 | E870, R4182 | Altered mental status, unspecified | ICD10 | 03232018 | 03202018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03092018 | 2018-03-09T11:49:04+00:00 |  | 000101409-01 | Carol | Lowe | ADENA MEDICAL GROUP LLC | 936969 | STEPHEN J | JEPSEN | 1871534057 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309055 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 03232018 | 03202018 | 03212018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02132018 | 2018-02-13T09:25:23+00:00 |  | 000105600-01 | Dawn | Powell | ORTHO SPEC & SPORTS MED | 935034 | EDWARD L | WESTERHEIDE | 1821019258 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 03232018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03212018 | 03222018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213056 | M12811 | Oth specific arthropathies, NEC, right shoulder | ICD10 | 03232018 | 03212018 | 03222018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02072018 | 2018-02-07T15:06:45+00:00 |  | 000111045-01 | Gloria | Butler | ORTHOPEDIC ONE INC | 934876 | ROBERT N | STEENSEN | 1487647665 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03232018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03202018 | 03222018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207069 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 03232018 | 03202018 | 03222018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02212018 | 2018-02-21T13:24:36+00:00 |  | 000074941-01 | Patricia | Guevara | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03212018 | 03222018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221060 | N8111 | Cystocele, midline | ICD10 | 03232018 | 03212018 | 03222018 | 57240, 57267, 52000 | CYSTOURETHOSCOPY | CPT | 0, 0, 0 | 1, 1, 1 | Auth Not Required, Auth Not Required, Auth Not Required | 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 02212018 | 2018-02-21T15:27:50+00:00 |  | 000055946-01 | Joan | Anderson | ALLIANCE PHYSICIANS INC | 904501 | CAROL J | SAWMILLER | 1043235070 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03192018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180221088 | C50912 | Malignant neoplasm of unspecified site of left female breast | ICD10 | 03232018 | 03192018 | 03202018 | 19271 | EX CHST WALL TMR WO MEDSTNL LYMPH | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03082018 | 2018-03-08T14:29:02+00:00 |  | 000040481-01 | SUSIE | KLINGMAN | HOSPITALIST MEDICINE PHY | 939944 | HELEN | KATSMAN | 1093704280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03072018 | 03222018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308040 | G809, I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03232018 | 03072018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 03102018 | 2018-03-10T10:22:52+00:00 |  | 000031682-01 | WILLIAM | BOWLING | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03092018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312010 | I2101, I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 03232018 | 03092018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 03132018 | 2018-03-13T13:53:16+00:00 |  | 000115887-01 | Thomas | Knoblauch | KNOX COMMUNITY HSP PHYS | 924378 | DAVID A | DELORENZO | 1942285051 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Inpatient | IP | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03132018 | 03172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313080 | I4891 | Unspecified atrial fibrillation | ICD10 | 03232018 | 03132018 | 03172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03142018 | 2018-03-14T13:10:55+00:00 |  | 000028978-01 | BETTYE | PENDLETON | CENTRAL OHIO SURG ASSOC | 932260 | IRINA C | ARP | 1558625780 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03232018 | Approved | TRINITY HEALTH | Fax | EIS | Inpatient | 03202018 | 03222018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314055 | C50911 | Malignant neoplasm of unsp site of right female breast | ICD10 | 03232018 | 03202018 | 03222018 | 19307, 36561 | INSERT TUNNELED CV CATH | CPT | 0, 0 | 1, 1 | ,  | 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03172018 | 2018-03-17T10:43:39+00:00 |  | 000079012-01 | Joyce | Fellows | HOSPITALIST MEDICINE PHY | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03162018 | 03182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319017 | I619 | Nontraumatic intracerebral hemorrhage, unspecified | ICD10 | 03232018 | 03162018 | 03182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03202018 | 2018-03-20T18:34:07+00:00 |  | 000005237-01 | Charles | Daugherty | SOUND INPATIENT PHYS OF | 917248 | NATHANIEL D | RUSSELL | 1740401470 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Medical Only | Fax | Inpatient | Inpatient | 03192018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321018 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03232018 | 03192018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03042018 | 2018-03-04T17:25:24+00:00 |  | 000103550-01 | Herbert | Allen | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03032018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305050 | I639 | Cerebral infarction, unspecified | ICD10 | 03232018 | 03032018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 03122018 | 2018-03-12T12:10:46+00:00 |  | 000108212-01 | Richard | Stuckey | HMP OF FRANKLIN CTY LTD | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03102018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312067 | J9610, R0902 | Hypoxemia | ICD10 | 03232018 | 03102018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T16:11:43+00:00 |  | 000040207-01 | JAMES | MORRIS JR | GREENE MEM HSP SRVS INC | 900736 | LATHA | VENKATESH | 1760487979 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Inpatient | IP | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312114 | R1013, R1084 | Generalized abdominal pain | ICD10 | 03232018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03132018 | 2018-03-13T13:31:49+00:00 |  | 000109792-01 | Patty | Rojas | TRIHEALTH G LLC | 953089 | JONATHAN L | HASSEL | 1871814202 | BETHESDA NORTH HOSPITAL | 936487 | 1396714663 | BETHESDA NORTH HOSPITAL | 1396714663 | Inpatient | IP | Concurrent Review | CONC |  | BETHESDA NORTH HOSPITAL | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03122018 | 03152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313067 | R0602 | Shortness of breath | ICD10 | 03232018 | 03122018 | 03152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03142018 | 2018-03-14T11:09:12+00:00 |  | 000029722-01 | HAZEL | BERRY | LICKING MEM HLTH PROF | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314035 | S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 03232018 | 03132018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03142018 | 2018-03-14T12:44:24+00:00 |  | 000089936-01 | Elizabeth | Boles | WRIGHT STATE PHYSICIANS | 944902 | ALYSSA J | GANS | 1962638080 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03132018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314054 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03232018 | 03132018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03142018 | 2018-03-14T13:49:22+00:00 |  | 000045684-01 | NORMA | FISHER | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314061 | A419, J189 | Pneumonia, unspecified organism | ICD10 | 03232018 | 03132018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03142018 | 2018-03-14T16:14:47+00:00 |  | 000077270-01 | Robert | Hudson | SOUND INPATIENT PHYS OF | 914136 | RAM MOHAN | CHIDURALA | 1023218484 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314079 | A419, R579 | Shock, unspecified | ICD10 | 03232018 | 03132018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03162018 | 2018-03-16T15:38:14+00:00 |  | 000057092-01 | RONALD | EGGLESTON | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319007 | I200 | Unstable angina | ICD10 | 03232018 | 03142018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03202018 | 2018-03-20T10:18:04+00:00 |  | 000031488-01 | LEONARD | PRESTON | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320038 | D6949, D72819, J111, J209 | Acute bronchitis, unspecified | ICD10 | 03232018 | 03192018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03202018 | 2018-03-20T11:53:18+00:00 |  | 000000192-01 | PATRICIA | WILSON | CEN OH UROLOGY GRP INC | 936050 | JEFFREY M | CAREY | 1942241260 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03192018 | 03222018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320050 | N3281 | Overactive bladder | ICD10 | 03232018 | 03192018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03192018 | 2018-03-19T15:00:06+00:00 |  | 000012900-01 | GLORIA | DERRICK | MOUNT CARMEL HLTH SYS | 934949 | JEFFREY L | TURNER | 1831131077 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03212018 | 03222018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320051 | K460 | Unsp abdominal hernia with obstruction, without gangrene | ICD10 | 03232018 | 03212018 | 03222018 | 49561 | REPAIR INITIAL INCISIONAL HERNIA; INCARCERATED OR STRANGULATED | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03202018 | 2018-03-20T15:04:25+00:00 |  | 000061027-01 | FRED | JONES | KETTERING MEDICAL CENTER | 936443 |  | KETTERING MEDICAL CENTER | 1043233984 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321006 | B349, I4891, M791, R0902 | Hypoxemia | ICD10 | 03232018 | 03192018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03212018 | 2018-03-21T14:04:18+00:00 |  | 000068835-01 | KATIGENE | MCMILLIN | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03202018 | 03222018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321065 | I509, R0602 | Shortness of breath | ICD10 | 03232018 | 03202018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03222018 | 2018-03-22T08:43:58+00:00 |  | 000111332-01 | Debra | Ewry | BRENDA J SICKLE SANTANGE | 939104 |  | BRENDA J SICKLE SANTANGELLO MD INC | 1962564401 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03232018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 03212018 | 03222018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322017 | C50411 | Malig neoplm of upper-outer quadrant of right female breast | ICD10 | 03232018 | 03212018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T10:35:44+00:00 |  | 000060919-01 | Mary | Nichols | MOUNT CARMEL HLTH PRVDRS | 912451 | WILLIAM H | PHILLIPS | 1356343586 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03232018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03212018 | 03222018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322046 | I129 | Hypertensive chronic kidney disease w stg 1-4/unsp chr kdny | ICD10 | 03232018 | 03212018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T15:11:35+00:00 |  | 000113706-01 | Mathias | Orndorf Jr | OHIOHEALTH PHYS GRP | 944464 | SUMIT | KAPOOR | 1376777433 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03162018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322067 | R0602 | Shortness of breath | ICD10 | 03232018 | 03162018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03072018 | 2018-03-07T09:16:33+00:00 |  | 000064064-01 | LOUISE | GOMPF | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307012 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 03232018 | 03192018 | 03222018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03122018 | 2018-03-12T10:47:42+00:00 |  | 000039564-01 | HERMAN | SHARP SR | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03112018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312076 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 03232018 | 03112018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 03142018 | 2018-03-14T13:51:03+00:00 |  | 000087043-01 | Douglas | Jackson | SPFLD ORTHO SPORTS MED L | 927402 | KEVIN C | ZARTMAN | 1710173885 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01042018 | 01082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314049 | M25551 | Pain in right hip | ICD10 | 03232018 | 01042018 | 01082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03152018 | 2018-03-15T09:22:54+00:00 |  | 000064273-01 | HELEN | STARR | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03232018 | Approved | THE TIMKEN COMPANY | Fax | ACO - Pulmonary | Inpatient | 03142018 | 03192018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315003 | R0902 | Hypoxemia | ICD10 | 03232018 | 03142018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03152018 | 2018-03-15T09:57:50+00:00 |  | 000091986-01 | F Howard | Houldsworth | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315024 | R4182 | Altered mental status, unspecified | ICD10 | 03232018 | 03142018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03152018 | 2018-03-15T10:24:48+00:00 |  | 000084699-01 | David | Riley Jr | APOGEE MED GRP OHIO INC | 944159 | RAMBABU | THALLAPANENI | 1043521255 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315026 | R6889 | Other general symptoms and signs | ICD10 | 03232018 | 03142018 | 03192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03162018 | 2018-03-16T14:03:49+00:00 |  | 000110676-01 | Ann | Bobanich | FAIRFIELD HLTHCARE PROFS | 943186 | MAJIDA B | GIANCOLA | 1457612061 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03162018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316069 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 03232018 | 03162018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03192018 | 2018-03-19T13:12:03+00:00 |  | 000014664-01 | PATRICK | AGOSTA | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03162018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319073 | I4439 | Other atrioventricular block | ICD10 | 03232018 | 03162018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03192018 | 2018-03-19T15:38:14+00:00 |  | 000043283-01 | PATRICIA | SHARP | FAIRFIELD MED ASSOC LLC | 936765 | MICHELLE L | GRAHAM | 1164408258 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03162018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320003 | E875, N179, N390 | Urinary tract infection, site not specified | ICD10 | 03232018 | 03162018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03192018 | 2018-03-19T15:18:49+00:00 |  | 000029753-01 | CHARLES | WALKER | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03182018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320004 | S72141A | Displaced intertrochanteric fracture of right femur, init | ICD10 | 03232018 | 03182018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03192018 | 2018-03-19T15:25:09+00:00 |  | 000117408-01 | Wayne | Radigan | HALL G CANTER JR MD | 921998 | HALL G | CANTER JR | 1962491316 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03232018 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 03182018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320009 | A419, I10, I259, J189, J9601, N179 | Acute kidney failure, unspecified | ICD10 | 03232018 | 03182018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03202018 | 2018-03-20T13:46:48+00:00 |  | 000002588-01 | WILLIAM | LAMMERS | GULF COAST MEDICAL CENTER | 900576 |  | GULF COAST MEDICAL CENTER | 0 | GULF COAST MEDICAL CENTER | 900576 | 0 | GULF COAST MEDICAL CENTER | 0 | Inpatient | IP | Concurrent Review | CONC |  | GULF COAST MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320092 | I824Z2 | Ac emblsm and thombos unsp deep veins of left dist low extrm | ICD10 | 03232018 | 03192018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03202018 | 2018-03-20T15:25:42+00:00 |  | 000099682-01 | Reed | Jewett | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03232018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321011 | I959, N179, R748, R7889 | Finding of oth substances, not normally found in blood | ICD10 | 03232018 | 03202018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03212018 | 2018-03-21T13:19:25+00:00 |  | 000078092-01 | Charles | Kucharski | BEERS, RICHARD T | 903798 | RICHARD T | BEERS | 1316912306 | KETTERING MEDICAL CENTER | 912043 | 1043233984 | KETTERING MEDICAL CTR REHABILITATION | 1952324899 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | KETTERING MEDICAL CTR REHABILITATION | 03232018 | Denied | MediGold Essential Care | Fax | Not Medically Necessary | Inpatient | 03232018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180321064 | A419, R6521 | Severe sepsis with septic shock | ICD10 | 03262018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03212018 | 2018-03-21T12:47:27+00:00 |  | 000047818-01 | WANDA | BROWN | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03232018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321070 | R0602 | Shortness of breath | ICD10 | 03232018 | 03202018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03232018 | 2018-03-23T12:26:02+00:00 |  | 000039594-01 | ELEANOR | ST CLAIR | NAPLES COMMUNITY HOSPITA | 934630 |  | NAPLES COMMUNITY HOSPITAL | 1720085137 | NAPLES COMMUNITY HOSPITA | 934630 | 1720085137 | NAPLES COMMUNITY HOSPITAL | 1720085137 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | NAPLES COMMUNITY HOSPITAL | 03232018 | Denied | MediGold Classic Preferred | Fax | Not Medically Necessary | Inpatient | 03232018 | 03242018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180323027 | I10, S32519A | Fracture of superior rim of unsp pubis, init for clos fx | ICD10 | 03232018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
