Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-14_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-14_OBS
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
| 02232018 | 2018-02-23T14:17:41+00:00 |  | 000110802-01 | Wilbur | Buchanan Jr | MARIETTA MEM HSP | 952163 | MICHAEL | VASILAKIS | 1356570287 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 03142018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180223059 | M4722, M4802, M5412, M542 | Cervicalgia | ICD10 | 03142018 | 03072018 | 03082018 | 22855, 63081, 22554, 22585, 20930, 22585, 20936, 22845, 22551, 22853, 22849 | REINSRTION SPINAL FIXATION DEVICE | CPT | 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 | 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved, , ,  | 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 03122018 | 2018-03-12T13:31:15+00:00 |  | 000024434-01 | ARNETTA | SEYMOUR | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312093 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 03142018 | 03112018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T13:29:37+00:00 |  | 000117731-01 | Mark | Chaffin | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03092018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312094 | E871 | Hypo-osmolality and hyponatremia | ICD10 | 03142018 | 03092018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03132018 | 2018-03-13T09:18:03+00:00 |  | 000098225-01 | Claudine | Shelfo | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313005 | I509, R229 | Localized swelling, mass and lump, unspecified | ICD10 | 03142018 | 03112018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03132018 | 2018-03-13T09:28:06+00:00 |  | 000023756-01 | RICHARD | HACKETT | MOUNT CARMEL HLTH PRVDRS | 915092 | CHRISTOPHER M | FRANK | 1699942474 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313007 | Z45010 | Encntr for checking and test of card pacemaker pulse gnrtr | ICD10 | 03142018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02162018 | 2018-02-16T11:13:04+00:00 |  | 000018295-01 | HILDA | ADDISON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02152018 | 02162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180216022 | E876 | Hypokalemia | ICD10 | 03142018 | 02152018 | 02162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T13:45:05+00:00 |  | 000087612-01 | Margy | Weber | HOSPITALIST MEDICINE PHY | 945746 | SIMMI | SHARMA | 1356699946 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03142018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 02212018 | 02232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222073 | M25561, M25562, R262, R531, R630, Z8739 | Personal history of diseases of the ms sys and conn tiss | ICD10 | 03142018 | 02212018 | 02232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02272018 | 2018-02-27T10:58:26+00:00 |  | 000112241-01 | Kathy | Jackson | FAIRFIELD HLTHCARE PROFS | 946665 | JAMES | PAN | 1235316589 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227048 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 03142018 | 03122018 | 03132018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03012018 | 2018-03-01T10:51:43+00:00 |  | 000088363-01 | Lee | Rowland | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180301029 | I714 | Abdominal aortic aneurysm, without rupture | ICD10 | 03142018 | 03122018 | 03132018 | 34701 | EVASC RPR A-AO NDGFT | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03052018 | 2018-03-05T08:37:10+00:00 |  | 000070142-01 | Joan | Cowens | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | GREENE MEMORIAL HOSPITAL | 939279 | 1255317848 | GREENE MEMORIAL HOSPITAL | 1255317848 | Observation | OBSV | Concurrent Review | CONC |  | GREENE MEMORIAL HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03032018 | 03052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305066 | R0902, R7989 | Other specified abnormal findings of blood chemistry | ICD10 | 03142018 | 03032018 | 03052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T11:21:38+00:00 |  | 000096006-01 | BARBARA | MOORE | MIAMI VALLEY HSPISTS GRP | 906983 | SYLVIA | POLENAKOVIK | 1003842550 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306070 | I160 | HYPERTENSIVE URGENCY | ICD10 | 03142018 | 03052018 | 03062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03062018 | 2018-03-06T14:26:51+00:00 |  | 000035223-01 | BONNIE | POLING | ADENA REGIONAL MED CTR | 936475 |  | ADENA REGIONAL MEDICAL CENTER | 1902839673 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03052018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306088 | R0602 | Shortness of breath | ICD10 | 03142018 | 03052018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T08:02:21+00:00 |  | 000095082-01 | Patricia | Hicks | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03142018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03062018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307024 | J189, J441, R911, Z9981 | Dependence on supplemental oxygen | ICD10 | 03142018 | 03062018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T09:26:18+00:00 |  | 000071528-01 | Thomas | Smith | GRANDVIEW HOSPITAL & SOU | 904949 | INGRID M | BROWN | 1952309726 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307032 | R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 03142018 | 03062018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03072018 | 2018-03-07T12:42:42+00:00 |  | 000032935-01 | CLAUDE | WISECUP | APOGEE MED GRP OHIO INC | 948097 | ROBIN A | THOMAS | 1912955808 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307065 | R29810 | Facial weakness | ICD10 | 03142018 | 03062018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03072018 | 2018-03-07T12:52:51+00:00 |  | 000120378-01 | Lawana | Mccorkle | APOGEE MED GRP OHIO INC | 944116 | TRACI | MONTGOMERY | 1992190037 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03062018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307068 | R0602 | Shortness of breath | ICD10 | 03142018 | 03062018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03082018 | 2018-03-08T09:13:14+00:00 |  | 000090094-01 | David | Mccann | ORTHO INSTITUTE OF DAYTO | 902339 | PAUL A | NITZ | 1023017886 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308026 | M19119, S46009S | Unsp inj musc/tend the rotator cuff of unsp shldr, sequela | ICD10 | 03142018 | 03072018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03132018 | 2018-03-13T10:51:33+00:00 |  | 000039710-01 | JAMES | LONEY | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 |  | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Observation | OBSV | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313060 | I4892, R55 | Syncope and collapse | ICD10 | 03142018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03132018 | 2018-03-13T12:38:32+00:00 |  | 000031217-01 | KENNETH | SCHOOLEY | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313061 | I639 | Cerebral infarction, unspecified | ICD10 | 03142018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03142018 | 2018-03-14T09:46:14+00:00 |  | 000118635-01 | Michael | Clemens | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03092018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314009 | R6889 | Other general symptoms and signs | ICD10 | 03142018 | 03092018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03082018 | 2018-03-08T11:03:41+00:00 |  | 000100258-01 | Gloria | Morgan | GRANDVIEW HOSPITAL & SOU | 912219 | DAVID E | BRUCE | 1083611792 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308046 | S0101XA | Laceration without foreign body of scalp, initial encounter | ICD10 | 03142018 | 03072018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03082018 | 2018-03-08T11:32:14+00:00 |  | 000012745-01 | SALLY | SPEAKS | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308052 | E860, R0602 | Shortness of breath | ICD10 | 03142018 | 03072018 | 03072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T13:55:35+00:00 |  | 000110770-01 | MARK | WEBER | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03142018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312074 | M21371, M549, R200 | Anesthesia of skin | ICD10 | 03142018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T10:53:27+00:00 |  | 000038168-01 | MONA | BOGGS | OSU SURGERY LLC | 947363 | IHAB O | ELHASSAN | 1043415755 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Observation | OBSV | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03092018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312078 | W010XXA | Fall same lev from slip/trip w/o strike against object, init | ICD10 | 03142018 | 03092018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03132018 | 2018-03-13T10:00:44+00:00 |  | 000004179-01 | THOMAS | WEBB | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03142018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03102018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313014 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03142018 | 03102018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T16:06:02+00:00 |  | 000117191-01 | Thomas | Mcclure | ALLIANCE PHYSICIANS INC | 939986 | CHRISTOPHER R | SCHNEIDER | 1588689475 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03142018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03102018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313027 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 03142018 | 03102018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03132018 | 2018-03-13T13:21:17+00:00 |  | 000063855-01 | CURTIS | UPTON | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313063 | R079 | Chest pain, unspecified | ICD10 | 03142018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03132018 | 2018-03-13T16:00:31+00:00 |  | 000046176-01 | KRISTY | BURKHAMMER | MOUNT CARMEL EAST PHYS | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03142018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313088 | R55 | Syncope and collapse | ICD10 | 03142018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03142018 | 2018-03-14T15:55:16+00:00 |  | 000120024-01 | EDWARD | MOORE | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03142018 | Approved | THE TIMKEN COMPANY | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314067 | R6889 | Other general symptoms and signs | ICD10 | 03142018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
