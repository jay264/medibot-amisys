Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-18_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-18_OBS
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
| 03142018 | 2018-03-14T07:55:38+00:00 |  | 000066203-01 | KATHLEEN | FITZMAURICE | ADENA MEDICAL GROUP LLC | 935883 | BRIAN S | COHEN | 1801811096 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314006 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04182018 | 04162018 | 04172018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04062018 | 2018-04-06T11:45:44+00:00 |  | 000080281-01 | James | Williams | KHN IP MED | 917403 | ADAM A | FERSHKO | 1780833244 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04052018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406035 | I509, R2243 | Localized swelling, mass and lump, lower limb, bilateral | ICD10 | 04182018 | 04052018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04102018 | 2018-04-10T08:09:30+00:00 |  | 000073557-01 | Thomas | Holmes | MERCY HEALTH PHYSICIANS | 921387 | JOHN J | LEISGANG | 1407802754 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04182018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04092018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410060 | G939, N289, R0602, R079, R7989, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 04182018 | 04092018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04102018 | 2018-04-10T12:45:42+00:00 |  | 000084221-01 | Patricia | Barnes | THE CHRIST HSP MED ASSOC | 944497 | GERALDINE M | VEHR | 1306809736 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 04182018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04092018 | 04132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410093 | I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 04182018 | 04092018 | 04132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04112018 | 2018-04-11T09:47:22+00:00 |  | 000098525-01 | GARY | RODGERS | PREMIER INTEGRATED MED A | 910964 | SALEEM | AHMAD | 1013973429 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04102018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411061 | I482, I4891 | Unspecified atrial fibrillation | ICD10 | 04182018 | 04102018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04112018 | 2018-04-11T16:01:51+00:00 |  | 000097675-01 | Susan | Garrison | HOSPITALIST MEDICINE PHY | 947711 | PATEL | BHUMIT | 1114269222 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 04182018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04112018 | 04152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412003 | R4182 | Altered mental status, unspecified | ICD10 | 04182018 | 04112018 | 04152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04122018 | 2018-04-12T10:18:20+00:00 |  | 000036755-01 | CATHERINE | LEACH | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04112018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412034 | I214, I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04182018 | 04112018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04132018 | 2018-04-13T09:28:59+00:00 |  | 000108531-01 | Norma | Flack | KNOX COMMUNITY HOSP GRP | 920054 | TRENT J | TIMMONS | 1790957488 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04182018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04122018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413013 | J189 | Pneumonia, unspecified organism | ICD10 | 04182018 | 04122018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04132018 | 2018-04-13T11:10:03+00:00 |  | 000071245-01 | Mildred | Jewell | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04122018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413027 | M6281 | Muscle weakness (generalized) | ICD10 | 04182018 | 04122018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04132018 | 2018-04-13T14:51:13+00:00 |  | 000115935-01 | Clarence | Harper | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04182018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 04132018 | 04152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413081 | E871, I509, J90 | Pleural effusion, not elsewhere classified | ICD10 | 04182018 | 04132018 | 04152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T09:28:05+00:00 |  | 000111681-01 | David | Neal | ADENA MEDICAL GROUP LLC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04152018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416064 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 04182018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T10:32:31+00:00 |  | 000040814-01 | CARL | MCGRAW | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04142018 | 04152018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416078 | J189 | Pneumonia, unspecified organism | ICD10 | 04182018 | 04142018 | 04152018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04162018 | 2018-04-16T11:30:45+00:00 |  | 000041645-01 | JOHN | CROWLEY | LICKING MEM HLTH PROF | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04112018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416080 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04182018 | 04112018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04162018 | 2018-04-16T11:34:22+00:00 |  | 000119708-01 | Burl | Ashcraft | LICKING MEM HLTH PROF | 947717 | JESSE M | EWALD | 1104196591 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04182018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04132018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416086 | R079 | Chest pain, unspecified | ICD10 | 04182018 | 04132018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04162018 | 2018-04-16T13:07:24+00:00 |  | 000037992-01 | SONDRA | HINDEL | LICKING MEM INPATIENT ME | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04152018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416100 | N184 | Chronic kidney disease, stage 4 (severe) | ICD10 | 04182018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T09:28:31+00:00 |  | 000057518-01 | VIRGINIA | PACK | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04152018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417012 | R001, R222, R531 | Weakness | ICD10 | 04182018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T15:12:30+00:00 |  | 000119179-01 | Barbara | Taulbee | HOSPITALIST MEDICINE PHY | 922638 | YOUSIF S | SHAREEF | 1922235811 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04152018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417013 | R319, R5383 | Other fatigue | ICD10 | 04182018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T16:45:49+00:00 |  | 000021304-01 | FRED | SEVERS | MOUNT CARMEL HLTH SYS | 919184 | ASHITA | SINHA | 1821110693 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04152018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417029 | A419, N390, N433 | Hydrocele, unspecified | ICD10 | 04182018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T11:39:41+00:00 |  | 000053246-01 | JO | ROBINSON | FAIRFIELD PHYS INC | 937254 | RICHARD D | OBERLANDER | 1477581189 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04132018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417049 | N390 | Urinary tract infection, site not specified | ICD10 | 04182018 | 04132018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04172018 | 2018-04-17T09:06:30+00:00 |  | 000059368-01 | SCOTT | WALDRON | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417051 | I161 | HYPERTENSIVE EMERGENCY | ICD10 | 04182018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T11:50:27+00:00 |  | 000082747-01 | Nancy | Cruit | FAIRFIELD HLTHCARE PROFS | 909975 | SARAH | BONZA | 1487694709 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417086 | I4892, J441, J9601 | Acute respiratory failure with hypoxia | ICD10 | 04182018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04172018 | 2018-04-17T11:55:09+00:00 |  | 000110678-01 | Peggy | Espinosa | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04182018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04162018 | 04182018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417088 | G9340, R4182 | Altered mental status, unspecified | ICD10 | 04182018 | 04162018 | 04182018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04172018 | 2018-04-17T16:24:03+00:00 |  | 000043868-01 | STEVEN | POWELL | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04152018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417122 | R55 | Syncope and collapse | ICD10 | 04182018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04182018 | 2018-04-18T10:25:36+00:00 |  | 000040994-01 | Jane | Gischler | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04182018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418022 | R0600 | Dyspnea, unspecified | ICD10 | 04182018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T14:23:08+00:00 |  | 000028781-01 | AUDREY | ORR | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04182018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04162018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418043 | R6889 | Other general symptoms and signs | ICD10 | 04182018 | 04162018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
