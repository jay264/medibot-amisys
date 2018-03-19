Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-15_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-15_OBS
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
| 02012018 | 2018-02-01T09:51:55+00:00 |  | 000109880-01 | Kathy | Spicer | WILMINGTON PHYS GRP LLC | 952220 | PETER A | SNITOVSKY | 1710951520 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 03152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201034 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 03152018 | 03122018 | 03132018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02192018 | 2018-02-19T16:55:06+00:00 |  | 000099876-01 | Leslie | Roberts | ADENA MEDICAL GROUP LLC | 906142 | RICHARD D | MIZER | 1811977788 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 02162018 | 02172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180220052 | E876 | Hypokalemia | ICD10 | 03152018 | 02162018 | 02172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02132018 | 2018-02-13T12:35:02+00:00 |  | 000069373-01 | NANCY | THIES | ALLIANCE PHYSICIANS INC | 926594 | JANELLE M | EVANS | 1912058041 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02122018 | 02132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180213087 | N819 | Female genital prolapse, unspecified | ICD10 | 03152018 | 02122018 | 02132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02222018 | 2018-02-22T10:54:22+00:00 |  | 000072645-01 | Cedora | Merrick | FAIRFIELD HLTHCARE PROFS | 943028 | RYAN K | HARRISON | 1528295169 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180222033 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03152018 | 03122018 | 03142018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02262018 | 2018-02-26T12:23:01+00:00 |  | 000081559-01 | Bobby | Stanley | CENTRAL OH HSPISTS INC | 911172 | JOO A | LEE | 1598924524 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 02232018 | 02242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180226091 | R079 | Chest pain, unspecified | ICD10 | 03152018 | 02232018 | 02242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03052018 | 2018-03-05T16:27:16+00:00 |  | 000070625-01 | Margaret | Mccoy | FAIRFIELD HLTHCARE PROFS | 910541 | KRISHNA S | MANNAVA | 1780727255 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306005 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 03152018 | 03122018 | 03132018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03072018 | 2018-03-07T11:40:01+00:00 |  | 000081960-01 | John | Moore | KNOX COMMUNITY HOSP GRP | 912126 | BARRY S | GEORGE | 1386605319 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 03152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03062018 | 03102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180307023 | I219 | I219 | ICD10 | 03152018 | 03062018 | 03102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03082018 | 2018-03-08T08:24:33+00:00 |  | 000100462-01 | Alice | Stevens | FAIRFIELD HLTHCARE PROFS | 951685 | JUSTIN J | ZAMOYSKI | 1801236872 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308020 | R079 | Chest pain, unspecified | ICD10 | 03152018 | 03072018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T09:00:59+00:00 |  | 000047559-01 | ALEATHEA | JONES | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 03082018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309014 | R079 | Chest pain, unspecified | ICD10 | 03152018 | 03082018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T09:02:04+00:00 |  | 000031680-01 | ROBERT | MIESSE | FAIRFIELD HLTHCARE PROFS | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03082018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309016 | R319 | Hematuria, unspecified | ICD10 | 03152018 | 03082018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03092018 | 2018-03-09T09:03:09+00:00 |  | 000108495-01 | Robert | Smith | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03072018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309017 | I10 | Essential (primary) hypertension | ICD10 | 03152018 | 03072018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03092018 | 2018-03-09T10:01:00+00:00 |  | 000104910-01 | Roger | Corvin | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03082018 | 03092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309028 | J441, R002 | Palpitations | ICD10 | 03152018 | 03082018 | 03092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T10:55:41+00:00 |  | 000070819-01 | Franklin | Isaac | S DAYTON ACUTE CARE CNSL | 908033 | INDU | RAO | 1447242045 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03082018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309030 | G255 | Other chorea | ICD10 | 03152018 | 03082018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T15:35:41+00:00 |  | 000086786-01 | Alberta | Lutz | ORTHO & SPORTS MED CTR I | 937082 | MICHAEL S | LEFKOWITZ | 1932280906 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03142018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309069 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03152018 | 03122018 | 03142018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03092018 | 2018-03-09T14:49:53+00:00 |  | 000103781-01 | TERRY | MOORE | HIGHLAND DISTRICT HSP PR | 906405 | ANTHONY P | WETHERINGTON | 1831177302 | HIGHLAND DISTRICT HSP - | 904201 | 1225053119 | HIGHLAND DISTRICT HOSPITAL - CAH | 1225053119 | Observation | OBSV | Concurrent Review | CONC |  | HIGHLAND DISTRICT HOSPITAL - CAH | 03152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03092018 | 03112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309076 | J189 | Pneumonia, unspecified organism | ICD10 | 03152018 | 03092018 | 03112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T13:32:05+00:00 |  | 000120921-01 | Sondra | Klontz | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312105 | I160 | HYPERTENSIVE URGENCY | ICD10 | 03152018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03132018 | 2018-03-13T09:12:07+00:00 |  | 000059490-01 | LANA | SMITH | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313004 | E876 | Hypokalemia | ICD10 | 03152018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03152018 | 2018-03-15T10:00:28+00:00 |  | 000078404-01 | Carolyn | Gartner | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03152018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03142018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315008 | R6889 | Other general symptoms and signs | ICD10 | 03152018 | 03142018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03152018 | 2018-03-15T10:08:34+00:00 |  | 000104323-01 | Edith | Gilmore | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03152018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 03132018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315010 | R6889 | Other general symptoms and signs | ICD10 | 03152018 | 03132018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T07:24:30+00:00 |  | 000114525-01 | Joyce | Thompson | DR. RICHARD B DARR M.D. | 908667 | RICHARD B | DARR | 1477565133 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03152018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03102018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312048 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03152018 | 03102018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03122018 | 2018-03-12T07:54:03+00:00 |  | 000096801-01 | Sarah | Haynes | MERCY MEMORIAL HOSPITAL - CAH | 902498 |  | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 03152018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312053 | J441, J90 | Pleural effusion, not elsewhere classified | ICD10 | 03152018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T08:19:40+00:00 |  | 000058284-01 | DOROTHY | CORDLE | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03102018 | 03122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312055 | J159 | Unspecified bacterial pneumonia | ICD10 | 03152018 | 03102018 | 03122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T10:48:56+00:00 |  | 000042503-01 | ELEANOR | KASLER | ARBOR VIEW FAM MED INC | 934765 | DAVID M | SCOGGIN | 1891766259 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312077 | R509 | Fever, unspecified | ICD10 | 03152018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03132018 | 2018-03-13T09:32:00+00:00 |  | 000038808-01 | LARRY | MITTMAN | HOSPITALIST MEDICINE PHY | 928116 | ONMA A | AMEH | 1578884565 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313008 | R109 | Unspecified abdominal pain | ICD10 | 03152018 | 03122018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03132018 | 2018-03-13T10:06:09+00:00 |  | 000001547-01 | WILLIAM | HILL | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03112018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313015 | R17 | Unspecified jaundice | ICD10 | 03152018 | 03112018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T19:35:23+00:00 |  | 000029134-01 | ELIZABETH | WILSON | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313020 | T814XXA | Infection following a procedure, initial encounter | ICD10 | 03152018 | 03122018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03122018 | 2018-03-12T15:48:23+00:00 |  | 000080512-01 | Richard | Turnmire | APOGEE MED GRP OHIO INC | 947846 | ABHISHAKE | KAAPURAALA | 1841456316 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Observation | OBSV | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 03152018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03122018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313025 | J189 | Pneumonia, unspecified organism | ICD10 | 03152018 | 03122018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03132018 | 2018-03-13T10:11:08+00:00 |  | 000121483-01 | JUANITA | SOUMMERS | APOGEE MED GRP OHIO INC | 947810 | LEENA | KAVULURI | 1598002370 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313054 | R0600 | Dyspnea, unspecified | ICD10 | 03152018 | 03122018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03132018 | 2018-03-13T13:28:04+00:00 |  | 000091749-01 | Rebecca | Murphy | MEDICINE INPATIENT GROUP | 927693 | SIVANI S | PATHMARAJAH | 1336257666 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 03152018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 03122018 | 03132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313075 | E43, J910 | Malignant pleural effusion | ICD10 | 03152018 | 03122018 | 03132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03142018 | 2018-03-14T06:49:37+00:00 |  | 000071261-01 | Lloyd | Crosby | COPC CENTRAL OHIO PRIMAR | 937397 | RALPH R | ROMAKER | 1952380727 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03152018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03132018 | 03142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314016 | R29810 | Facial weakness | ICD10 | 03152018 | 03132018 | 03142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
