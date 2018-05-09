Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-04_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-04_OBS
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
	And in the "Certification" page I enter "OB" into the "Auth Type" field
	And the test pauses for "2" seconds
	And in the "Certification" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "EX" field
	And the test pauses for "3" seconds
	And I press "Control + S"

	And in the "certification" page I should see the "medibots" image
	And the test pauses for "3" seconds
	And in the "Functions Menu" page I click on "Authorized Svcs"
	And the test pauses for "3" seconds
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
	And in the "authorized_services" page I enter "M" into the "claim_type" image
	And the test pauses for "2" seconds
	And in the "authorized_services" page I use the sub class "<sub_class>" and the status "<status>" and the status reason "<status_reason>" to determine what to enter into the "ex" image
	And the test pauses for "2" seconds
	And I use the sub class "<sub_class>" to determine what count to enter into the count image
	And the test pauses for "3" seconds
	And in the "authorized_services" page I enter "$" into the "prov" image
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
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I should see the "table_headers" image
	And the test pauses for "10" seconds
	And in the "provider_affiliation_list" page I enter "HM" into the "pg_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "<facility_name>" into the "facility_name_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "M" into the "cp_search_cell" image
	And I press ENTER graphically
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I click on the "scrollbar" image
	And the test pauses for "1" seconds
	And in the "provider_affiliation_list" page I enter "9999" into the "date_search_cell" image
	And I press ENTER graphically
	And the test pauses for "3" seconds
	And in the "provider_affiliation_list" page I click on the "return_lookup" image
	And the test pauses for "3" seconds
	And I press "Control + S"
	And the test pauses for "3" seconds
	And I edit myself if I am a NONPAR
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press "F8"
	And the test pauses for "3" seconds
	And I press ENTER graphically

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
| 04172018 | 2018-04-17T11:19:47+00:00 |  | 000010217-01 | MARY | BROWER | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04122018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417042 | G809 | Cerebral palsy, unspecified | ICD10 | 05042018 | 04122018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05012018 | 2018-05-01T09:51:12+00:00 |  | 000072202-01 | Garry | MORTON | LICKING MEM INPATIENT ME | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501069 | I509, J9601, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 05042018 | 04302018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04112018 | 2018-04-11T14:44:50+00:00 |  | 000090942-01 | Patricia | Johnson | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04102018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411080 | R42 | Dizziness and giddiness | ICD10 | 05042018 | 04102018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04132018 | 2018-04-13T11:04:46+00:00 |  | 000042257-01 | ANITA | CLEMENTE | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04112018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413024 | R17 | Unspecified jaundice | ICD10 | 05042018 | 04112018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04132018 | 2018-04-13T13:57:05+00:00 |  | 000102285-01 | SHARON | LEGUE | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04122018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413052 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 05042018 | 04122018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04042018 | 2018-04-04T16:04:46+00:00 |  | 000068571-01 | CAROLINE | GOOD | S DAYTON ACUTE CARE CNSL | 913547 | SVEN E | RAYMOND | 1609830876 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04032018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405010 | R531 | Weakness | ICD10 | 05042018 | 04032018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04102018 | 2018-04-10T13:38:03+00:00 |  | 000110797-01 | Jo | Ross | ALLIANCE PHYSICIANS INC | 908147 | ZIWAR F | KARABATAK | 1831172329 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05042018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04092018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410101 | I739 | Peripheral vascular disease, unspecified | ICD10 | 05042018 | 04092018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T13:31:31+00:00 |  | 000079815-01 | Martha | Walker | APOGEE MED GRP OHIO INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03212018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322055 | K529 | Noninfective gastroenteritis and colitis, unspecified | ICD10 | 05042018 | 03212018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 03302018 | 2018-03-30T08:32:46+00:00 |  | 000048382-01 | CAROLYN | SYLVESTER | FAIRFIELD HLTHCARE PROFS | 947849 | JASON T | WEINGART | 1114188273 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330053 | I200 | Unstable angina | ICD10 | 05042018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T08:34:56+00:00 |  | 000077131-01 | James | Wright | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330055 | R0600 | Dyspnea, unspecified | ICD10 | 05042018 | 03292018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04102018 | 2018-04-10T08:18:59+00:00 |  | 000032125-01 | AUDREY | FAIGLEY | GENERAL SURG ASSOC INC | 910801 | MARGARET S | SAWYER | 1972722494 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04092018 | 04102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410061 | N6320 | N6320 | ICD10 | 05042018 | 04092018 | 04102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04112018 | 2018-04-11T12:50:41+00:00 |  | 000079919-01 | William | Day | HOSPITALIST MEDICINE PHY | 925424 | CHALANA U | GUNAWARDENA | 1023276821 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 05042018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04102018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411074 | J441, J45901 | Unspecified asthma with (acute) exacerbation | ICD10 | 05042018 | 04102018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 04122018 | 2018-04-12T10:28:05+00:00 |  | 000111342-01 | Larry | Tackett | ALLIANCE PHYSICIANS INC | 925008 | ARCHIE D | ENOCH JR | 1780683755 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 05042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04112018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412029 | R2681, R42 | Dizziness and giddiness | ICD10 | 05042018 | 04112018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202018 | 2018-04-20T09:12:41+00:00 |  | 000070726-01 | Verla | Martin | LICKING MEM OTOLARYNGOLO | 903845 | KENNETH C | PARKER | 1841256765 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Pre-Service | PRE |  | LICKING MEMORIAL HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05092018 | 06092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A180420025 | E041, E042 | Nontoxic multinodular goiter | ICD10 | 05042018 |  |  | 60240 | THYROIDECTOMY-TOTAL OR COMPLETE | CPT | 1 | 1 | Approved Observation | 32 | CPT | C4 |  |  | No child records to display. |  |
| 04292018 | 2018-04-29T12:03:17+00:00 |  | 000082788-01 | Doris | Gruebel | COPC CENTRAL OHIO PRIMAR | 904883 | NILESH V | VARMA | 1558303545 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04282018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430005 | R4182 | Altered mental status, unspecified | ICD10 | 05042018 | 04282018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03272018 | 2018-03-27T14:51:11+00:00 |  | 000106042-01 | Sandra | Doup | KNOX COMMUNITY HSP PHYS | 928353 | JARRETT B | HELMING | 1891995072 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328029 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 05042018 | 05012018 | 05032018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 04242018 | 2018-04-24T13:38:23+00:00 |  | 000031770-01 | GENEVA | ANDERSON | FAIRFIELD HLTHCARE PROFS | 910541 | KRISHNA S | MANNAVA | 1780727255 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424072 | I6521 | Occlusion and stenosis of right carotid artery | ICD10 | 05042018 | 04302018 | 05012018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04272018 | 2018-04-27T10:23:19+00:00 |  | 000059584-01 | RAYMOND | SZYMANSKI | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04262018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427030 | I4891 | Unspecified atrial fibrillation | ICD10 | 05042018 | 04262018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T13:39:28+00:00 |  | 000083739-01 | Betty | Baxter | ADENA MEDICAL GROUP LLC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427048 | A419 | Sepsis, unspecified organism | ICD10 | 05042018 | 04252018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04302018 | 2018-04-30T09:52:18+00:00 |  | 000045402-01 | KAREN | ERISMAN | SAMARITAN HSPIST GRP | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04272018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430039 | R0781 | Pleurodynia | ICD10 | 05042018 | 04272018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T09:52:25+00:00 |  | 000048583-01 | GENE | OBRYAN | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04282018 | 04302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430045 | S72414A | Nondisp unsp condyle fx lower end of right femur, init | ICD10 | 05042018 | 04282018 | 04302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04302018 | 2018-04-30T11:59:04+00:00 |  | 000051411-01 | Carolyn | Berry | APOGEE MED GRP OHIO INC | 947249 | YINZHONG | ZHANG | 1194147785 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04282018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430059 | I4891 | Unspecified atrial fibrillation | ICD10 | 05042018 | 04282018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04302018 | 2018-04-30T17:42:18+00:00 |  | 000056592-01 | GLENN | NEWLAND | ABDUL-RHEEM GHANEM | 953730 | ABDUL-RHEEM | GHANEM | 1780096081 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180501050 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05042018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T08:33:11+00:00 |  | 000074024-01 | Carol | Herman | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502038 | R001 | Bradycardia, unspecified | ICD10 | 05042018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T10:35:33+00:00 |  | 000050635-01 | PATRICIA | LONG | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502062 | R4182 | Altered mental status, unspecified | ICD10 | 05042018 | 05012018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T11:49:52+00:00 |  | 000081593-01 | Nancy | White | MOUNT CARMEL HLTH SYS | 910322 | BHAVESH P | PATEL | 1669632469 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Observation | OBSV | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 05042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05022018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502066 | R6520 | Severe sepsis without septic shock | ICD10 | 05042018 | 05022018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05022018 | 2018-05-02T15:33:42+00:00 |  | 000082360-01 | Melvin | Hobbs | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05042018 | Approved | MediGold Essential Care | Reports | Observation | Inpatient | 04302018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502072 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 05042018 | 04302018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05022018 | 2018-05-02T15:59:23+00:00 |  | 000058239-01 | IDA | DEVAULT | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04282018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502089 | I509 | Heart failure, unspecified | ICD10 | 05042018 | 04282018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T16:01:09+00:00 |  | 000029589-01 | PEGGY | BURNS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502091 | R109 | Unspecified abdominal pain | ICD10 | 05042018 | 05012018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05032018 | 2018-05-03T13:04:58+00:00 |  | 000052285-01 | WOODFORD | SCOTT | OHIOHEALTH PHYS GRP | 917686 | JAYDEEP V | PATEL | 1578785903 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503043 | R739 | Hyperglycemia, unspecified | ICD10 | 05042018 | 05022018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T12:15:23+00:00 |  | 000065011-01 | FREDA | HILL | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504021 | M25559 | Pain in unspecified hip | ICD10 | 05042018 | 04252018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05042018 | 2018-05-04T12:20:49+00:00 |  | 000090998-01 | Nicholas | Spitzer | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504022 | R58 | Hemorrhage, not elsewhere classified | ICD10 | 05042018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T12:28:57+00:00 |  | 000093794-01 | Juanita | Smith | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504024 | I10, R51 | Headache | ICD10 | 05042018 | 04302018 | 05012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T13:31:27+00:00 |  | 000063513-01 | CECELIA | CISCO | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504029 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 05042018 | 04302018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05042018 | 2018-05-04T13:35:44+00:00 |  | 000029726-01 | Bernard | Edwards | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04302018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504030 | D649, R531 | Weakness | ICD10 | 05042018 | 04302018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05042018 | 2018-05-04T13:46:12+00:00 |  | 000086117-01 | Randall | Yoakum | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504032 | R109 | Unspecified abdominal pain | ICD10 | 05042018 | 05012018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T14:24:59+00:00 |  | 000003964-01 | BERNADINE | GROSS | COLS INPATIENT CARE INC | 948518 | LUIZA | BALABANYAN | 1174866404 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05022018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504046 | K5900 | Constipation, unspecified | ICD10 | 05042018 | 05022018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 05042018 | 2018-05-04T14:38:38+00:00 |  | 000115139-01 | Sushma | Pandey | COPC CENTRAL OHIO PRIMAR | 909037 | STEVCO | STEFANOSKI | 1023233111 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05042018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 05012018 | 05022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504052 | R079 | Chest pain, unspecified | ICD10 | 05042018 | 05012018 | 05022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05042018 | 2018-05-04T15:52:59+00:00 |  | 000036870-01 | FLOYD | SAMSON | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05042018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 05012018 | 05032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504071 | R6889 | Other general symptoms and signs | ICD10 | 05042018 | 05012018 | 05032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
