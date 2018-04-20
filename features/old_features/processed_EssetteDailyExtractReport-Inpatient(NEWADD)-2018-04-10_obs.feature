Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-10_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-10_OBS
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
| 04032018 | 2018-04-03T14:48:01+00:00 |  | 000111465-01 | Beverly | Price | MOUNT CARMEL HLTH PRVDRS | 947622 | WILLIAM R | WALKER | 1427390905 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03272018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404030 | I4891 | Unspecified atrial fibrillation | ICD10 | 04102018 | 03272018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 04082018 | 2018-04-08T11:55:46+00:00 |  | 000062734-01 | JON | NOE | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04062018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409046 | I509 | Heart failure, unspecified | ICD10 | 04102018 | 04062018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02232018 | 2018-02-23T14:40:33+00:00 |  | 000102459-01 | Dorothy | Ridenbaugh | LICKING MEM HLTH PROF | 936036 | ROBERT W | MUELLER | 1316916752 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04102018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04042018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223064 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 04102018 | 04042018 | 04062018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03272018 | 2018-03-27T15:54:31+00:00 |  | 000117472-01 | GLORIA | BROWN | FAIRFIELD HLTHCARE PROFS | 941890 | MUSSARET | ZUBERI | 1639123409 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328073 | K529, R109 | Unspecified abdominal pain | ICD10 | 04102018 | 03262018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03302018 | 2018-03-30T14:22:20+00:00 |  | 000064754-01 | BARBARA | UHL | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330056 | K5900 | Constipation, unspecified | ICD10 | 04102018 | 03292018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04042018 | 2018-04-04T08:09:31+00:00 |  | 000011998-01 | WILLIAM | TOOTLE | FAIRFIELD HLTHCARE PROFS | 943236 | TALAL M | SABBAGH | 1508127564 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04042018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404045 | I10, R079 | Chest pain, unspecified | ICD10 | 04122018 | 04032018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04042018 | 2018-04-04T13:03:08+00:00 |  | 000106760-01 | BETTY | SAPP | KNOX COMMUNITY HOSP GRP | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04032018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404070 | N390, R55 | Syncope and collapse | ICD10 | 04102018 | 04032018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04062018 | 2018-04-06T10:53:23+00:00 |  | 000086032-01 | Bill | Pollock | APOGEE MED GRP OHIO INC | 948289 | TOMMIE | EASLEY | 1336395003 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04062018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406029 | J189 | Pneumonia, unspecified organism | ICD10 | 04102018 | 04062018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04062018 | 2018-04-06T17:21:59+00:00 |  | 000040764-01 | Lewis | Swearingen | HOSPITALIST MEDICINE PHY | 948978 | IMRAN | SHAIKH | 1760798268 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409017 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04102018 | 04052018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04072018 | 2018-04-07T10:28:59+00:00 |  | 000111360-01 | Janie | Geiger | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04062018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409022 | I771, I82401, I998 | Other disorder of circulatory system | ICD10 | 04102018 | 04062018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04092018 | 2018-04-09T10:38:05+00:00 |  | 000115561-01 | Mary | Oliver | KNOX COMMUNITY HOSP GRP | 912844 | OSHANA | ALAHAKOON | 1285793745 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410009 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04102018 | 04062018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04022018 | 2018-04-02T10:17:33+00:00 |  | 000112978-01 | Gloria | Masterson | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 04022018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180402071 | I639 | Cerebral infarction, unspecified | ICD10 | 04102018 | 04022018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04042018 | 2018-04-04T09:34:55+00:00 |  | 000079134-01 | Terry | Wilson | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04022018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404013 | N201 | Calculus of ureter | ICD10 | 04102018 | 04022018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04042018 | 2018-04-04T11:37:31+00:00 |  | 000096001-01 | Helen | Fite | CLERMONT INTERNISTS ASSO | 924704 | SUSHEELA | RAJAN | 1144273673 | MERCY HOSPITAL CLERMONT | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 04102018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04042018 | 04052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404064 | R42, R748, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 04102018 | 04042018 | 04052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04042018 | 2018-04-04T14:12:42+00:00 |  | 000051721-01 | Gary | Young | FAIRFIELD HLTHCARE PROFS | 910541 | KRISHNA S | MANNAVA | 1780727255 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04052018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180404079 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 04102018 | 04052018 | 04062018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04052018 | 2018-04-05T13:40:04+00:00 |  | 000101248-01 | James | Key | S DAYTON ACUTE CARE CNSL | 910703 | SUSAN M | GRANDHI | 1073686838 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04042018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405063 | R0602 | Shortness of breath | ICD10 | 04102018 | 04042018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04052018 | 2018-04-05T17:01:32+00:00 |  | 000039494-01 | ROBERT | STAUFFER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04042018 | 04042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180405073 | J159 | Unspecified bacterial pneumonia | ICD10 | 04102018 | 04042018 | 04042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04062018 | 2018-04-06T11:54:26+00:00 |  | 000109640-01 | Vera | Kenney | MERCY HEALTH PHYSICIANS | 942669 | AMELIA J | WIGGINS | 1407099195 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04102018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04062018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406010 | R52, S42291A | Oth disp fx of upper end of right humerus, init for clos fx | ICD10 | 04102018 | 04062018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04062018 | 2018-04-06T08:27:57+00:00 |  | 000044295-01 | THOMAS | GEIGER | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04062018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406011 | R079 | Chest pain, unspecified | ICD10 | 04102018 | 04062018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04062018 | 2018-04-06T14:11:13+00:00 |  | 000116817-01 | Nancy | Gragg | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04052018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406040 | R42 | Dizziness and giddiness | ICD10 | 04102018 | 04052018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04062018 | 2018-04-06T15:04:46+00:00 |  | 000038034-01 | JACK | BROWN | CENTRAL OH HSPISTS INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180406050 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 04102018 | 04052018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04092018 | 2018-04-09T08:21:08+00:00 |  | 000105618-01 | George | Rice | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409002 | R55 | Syncope and collapse | ICD10 | 04102018 | 04052018 | 04062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04092018 | 2018-04-09T08:24:41+00:00 |  | 000023032-01 | LOWELL | WOOLWINE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04052018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409003 | J159, R000, R0600 | Dyspnea, unspecified | ICD10 | 04102018 | 04052018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04072018 | 2018-04-07T16:29:48+00:00 |  | 000053273-01 | JANE | REYNOLDS | MOUNT CARMEL HLTH SYS | 917932 | DANIEL G | GORBETT JR | 1487816518 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04062018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409030 | I270, T82868A, Z452 | Encounter for adjustment and management of VAD | ICD10 | 04102018 | 04062018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04082018 | 2018-04-08T10:18:13+00:00 |  | 000090733-01 | Dale | Lambert | S DAYTON ACUTE CARE CNSL | 908510 | MICHAEL | TUCHFARBER | 1467422865 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 04102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04062018 | 04072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409043 | K5780 | Dvtrcli of intest, part unsp, w perf and abscess w/o bleed | ICD10 | 04102018 | 04062018 | 04072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04082018 | 2018-04-08T12:44:14+00:00 |  | 000029536-01 | GLADYS | PRATT | VASU MEDICAL GROUP | 904634 | VEENA A | GADDAM | 1346256930 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04072018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409052 | J9600, N179 | Acute kidney failure, unspecified | ICD10 | 04102018 | 04072018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04092018 | 2018-04-09T06:50:52+00:00 |  | 000057408-01 | MARY | SAYRE | HOSPITALIST MEDICINE PHY | 914484 | KANAN AKHIL | PATEL | 1205096195 | DILEY RIDGE MEDICAL CENTER | 913681 | 1225361181 | DILEY RIDGE MEDICAL CENTER | 1225361181 | Observation | OBSV | Concurrent Review | CONC |  | DILEY RIDGE MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04082018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409057 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 04102018 | 04082018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04092018 | 2018-04-09T13:57:49+00:00 |  | 000027319-01 | DAVID | THOMAS | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04062018 | 04082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410019 | R0602 | Shortness of breath | ICD10 | 04102018 | 04062018 | 04082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04102018 | 2018-04-10T07:58:37+00:00 |  | 000082729-01 | Anthony | Marzullo | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04102018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04092018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410056 | R6889 | Other general symptoms and signs | ICD10 | 04102018 | 04092018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04102018 | 2018-04-10T09:26:33+00:00 |  | 000035734-01 | RUTH | BROWNE | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Observation | OBSV | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 04102018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04072018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180410077 | R112 | Nausea with vomiting, unspecified | ICD10 | 04102018 | 04072018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
