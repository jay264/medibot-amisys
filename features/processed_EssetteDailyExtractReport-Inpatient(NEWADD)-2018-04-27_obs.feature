Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-27_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-27_OBS
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
| 04142018 | 2018-04-14T15:15:51+00:00 |  | 000096861-01 | Carol | Orahood | HOSPITALIST MEDICINE PHY | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04142018 | 04142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416024 | J189, R531 | Weakness | ICD10 | 04272018 | 04142018 | 04142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04182018 | 2018-04-18T11:35:04+00:00 |  | 000081323-01 | Ruth | Cashdollar | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04162018 | 04202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418030 | L03119 | Cellulitis of unspecified part of limb | ICD10 | 04272018 | 04162018 | 04202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04252018 | 2018-04-25T09:45:37+00:00 |  | 000113820-01 | Phyllis | Livingston | GABBARD, ALAN L | 902012 | ALAN L | GABBARD | 1518965896 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425014 | D631, R296 | Repeated falls | ICD10 | 04272018 | 04232018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04222018 | 2018-04-22T13:14:48+00:00 |  | 000115796-01 | Ola | Vanfossan | HOSPITALIST MEDICINE PHY | 932916 | SENAI | NEGASSI | 1255604609 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423040 | E119, E860, E876 | Hypokalemia | ICD10 | 04272018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04252018 | 2018-04-25T08:28:45+00:00 |  | 000106007-01 | William | Fausnaugh | GARY L GILLEN MD | 936683 | GARY L | GILLEN | 1851397236 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425021 | J9610 | Chronic respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04272018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252018 | 2018-04-25T14:06:07+00:00 |  | 000057753-01 | ANN | POWELL | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425067 | M25569 | Pain in unspecified knee | ICD10 | 04272018 | 04242018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03132018 | 2018-03-13T15:34:18+00:00 |  | 000075243-01 | Nancy | Wares | KNOX COMMUNITY HSP PHYS | 928353 | JARRETT B | HELMING | 1891995072 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314001 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 04272018 | 04242018 | 04262018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 1.0 |
| 04092018 | 2018-04-09T09:13:36+00:00 |  | 000088742-01 | Ruby | Fannon | WRIGHT STATE PHYSICIANS | 902808 | MBAGA S | WALUSIMBI | 1295791275 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Observation | OBSV | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04072018 | 04092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180409098 | S0292XA, W19XXXS | Unspecified fall, sequela | ICD10 | 04272018 | 04072018 | 04092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04112018 | 2018-04-11T13:25:08+00:00 |  | 000097191-01 | Jennifer | Snader | COMPREHENSIVE INTL MED A | 927576 | MANISH | SACHDEVA | 1649223074 | FORT HAMILTON HOSPITAL | 936461 | 1104867167 | FORT HAMILTON HOSPITAL | 1104867167 | Observation | OBSV | Concurrent Review | CONC |  | FORT HAMILTON HOSPITAL | 04272018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04102018 | 04122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180411086 | R42 | Dizziness and giddiness | ICD10 | 04272018 | 04102018 | 04122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04122018 | 2018-04-12T09:16:25+00:00 |  | 000084473-01 | Donald | Evans | FAIRFIELD HLTHCARE PROFS | 932438 | OMAR | AL-NOURI | 1770742264 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04262018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412019 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 04272018 | 04252018 | 04262018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04162018 | 2018-04-16T11:51:39+00:00 |  | 000109393-01 | James | Rivers | RUFO, KARLO A | 922839 | KARLO A | RUFO | 1194956581 | KETTERING MEDICAL CENTER SYCAMORE | 905903 | 1316966518 | KETTERING MEDICAL CENTER SYCAMORE | 1316966518 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER SYCAMORE | 04272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04152018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416092 | G459, R4182 | Altered mental status, unspecified | ICD10 | 04272018 | 04152018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04202018 | 2018-04-20T14:05:56+00:00 |  | 000092541-01 | Mary | Schirmer | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Observation | OBSV | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 04272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423010 | I639, R748 | Abnormal levels of other serum enzymes | ICD10 | 04272018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T14:31:34+00:00 |  | 000029921-01 | REVA | HARROW | MARIETTA MEMORIAL HSP | 936469 |  | MARIETTA MEMORIAL HOSPITAL | 1215936927 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Observation | OBSV | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 04272018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04202018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424014 | J154, J441, J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04272018 | 04202018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04242018 | 2018-04-24T10:55:29+00:00 |  | 000026288-01 | CAROLYN | WILLIAMS | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04212018 | 04232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424029 | R55 | Syncope and collapse | ICD10 | 04272018 | 04212018 | 04232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04242018 | 2018-04-24T10:59:37+00:00 |  | 000064603-01 | JOANN | BOOKER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04212018 | 04212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424030 | N823 | Fistula of vagina to large intestine | ICD10 | 04272018 | 04212018 | 04212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T07:24:32+00:00 |  | 000076365-01 | Dolores | Meyer | ONCOLOGY HEMATOLOGY CARE | 921876 | MIGUEL A | ISLAS-OHLMAYER | 1295917425 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Observation | OBSV | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 04272018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424049 | R6510 | SIRS of non-infectious origin w/o acute organ dysfunction | ICD10 | 04272018 | 04232018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04242018 | 2018-04-24T12:02:55+00:00 |  | 000116636-01 | Howard | Stout | ADENA MEDICAL GROUP LLC | 900441 | DAMIEN M | BENJAMIN | 1407881055 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Observation | OBSV | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424078 | R198 | Oth symptoms and signs involving the dgstv sys and abdomen | ICD10 | 04272018 | 04232018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04242018 | 2018-04-24T13:55:59+00:00 |  | 000104719-01 | Leo | Mcmanaman | INTERNAL MED CARE INC | 942842 | JOSEPH R | CRAWFORD | 1811242571 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Observation | OBSV | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04272018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 04232018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424101 | D62 | Acute posthemorrhagic anemia | ICD10 | 04272018 | 04232018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04252018 | 2018-04-25T07:24:55+00:00 |  | 000086053-01 | Lester | Upton | SPRINGFIELD HLTH CARE CT | 902363 | VIPUL K | PATEL | 1548233851 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425029 | E871, J111, N3000, R339, R5383 | Other fatigue | ICD10 | 04272018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T09:10:43+00:00 |  | 000041277-01 | Sue | Sanderell | COPC CENTRAL OHIO PRIMAR | 942147 | KEVIN P | MCANINCH | 1104183649 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425042 | R110, R531 | Weakness | ICD10 | 04272018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04252018 | 2018-04-25T09:06:16+00:00 |  | 000038537-01 | CAROLYN | PERRY | LICKING MEM HLTH PROF | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04242018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425046 | J180 | Bronchopneumonia, unspecified organism | ICD10 | 04272018 | 04242018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T09:27:17+00:00 |  | 000063253-01 | DARRELL | KEENER | LICKING MEM HLTH PROF | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426020 | A419, J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 04272018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04262018 | 2018-04-26T10:53:03+00:00 |  | 000097505-01 | Robert | Haslett | HOSPITALIST MEDICINE PHY | 911932 | NOSAYAB | AGIDIGBI | 1356572879 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426031 | N390, R42, T83511A | I/I REACT D/T INDWELLING URETHRAL CATHETER, INIT | ICD10 | 04272018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04262018 | 2018-04-26T10:55:06+00:00 |  | 000013206-01 | GUY | HITCHCOCK JR | HOSPITALIST MEDICINE PHY | 932916 | SENAI | NEGASSI | 1255604609 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426035 | R079 | Chest pain, unspecified | ICD10 | 04272018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04262018 | 2018-04-26T10:55:38+00:00 |  | 000117562-01 | LLOYD | BIXLER | GRANT MEDICAL CENTER | 936409 |  | GRANT MEDICAL CENTER | 1255377149 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Observation | OBSV | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 04272018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426036 | W19XXXA | Unspecified fall, initial encounter | ICD10 | 04272018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T10:59:07+00:00 |  | 000075405-01 | Janice | Coleman | HOSPITAL MEDICINE SERVIC | 932916 | SENAI | NEGASSI | 1255604609 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426039 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04272018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04262018 | 2018-04-26T15:56:20+00:00 |  | 000066469-01 | KATIE | SWOPE | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426062 | R410 | Disorientation, unspecified | ICD10 | 04272018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T09:51:32+00:00 |  | 000111382-01 | Robert | Vogt | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 04272018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427012 | G809 | Cerebral palsy, unspecified | ICD10 | 04272018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T13:43:38+00:00 |  | 000013047-01 | EFFIE | PARKER | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04252018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427040 | R079 | Chest pain, unspecified | ICD10 | 04272018 | 04252018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04272018 | 2018-04-27T13:49:08+00:00 |  | 000010217-01 | MARY | BROWER | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04272018 | Approved | MediGold Classic Preferred | Reports | Observation | Inpatient | 04222018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427043 | R079 | Chest pain, unspecified | ICD10 | 04272018 | 04222018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
