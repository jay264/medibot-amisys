Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-30_thru_2018-04-01_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-30_thru_2018-04-01_OBS
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
| 03212018 | 2018-03-21T14:56:03+00:00 |  | 000059584-01 | RAYMOND | SZYMANSKI | FAIRFIELD HLTHCARE PROFS | 925523 | MICHAEL G | REINIG | 1770510927 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321087 | I4891 | Unspecified atrial fibrillation | ICD10 | 03302018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T15:23:51+00:00 |  | 000067253-01 | BRENT | MILLER | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03202018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208078 | T84012A | Broken internal right knee prosthesis, initial encounter | ICD10 | 03302018 | 03202018 | 03232018 | 27486 | REVSN TOT KNEE ARTHPLSTY/ONE COMP | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03212018 | 2018-03-21T12:54:32+00:00 |  | 000003361-01 | BEATRICE | BEAM | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03202018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321074 | I480 | Paroxysmal atrial fibrillation | ICD10 | 03302018 | 03202018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03232018 | 2018-03-23T13:50:54+00:00 |  | 000082899-01 | Charlotte | Asbury | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03222018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323068 | J189, J441, J90, R079 | Chest pain, unspecified | ICD10 | 03302018 | 03222018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03282018 | 2018-03-28T08:12:25+00:00 |  | 000028043-01 | BILLIE | KALL | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328001 | A419, D469, D6489, D696, J189 | Pneumonia, unspecified organism | ICD10 | 03302018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T10:15:33+00:00 |  | 000070105-01 | Ruth | Steele | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328030 | E860 | Dehydration | ICD10 | 03302018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02272018 | 2018-02-27T16:03:46+00:00 |  | 000079483-01 | Mary | Daly | ORTHOCINCY | 924293 | MICHAEL L | SWANK | 1982641999 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 03302018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03212018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180227093 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 03302018 | 03212018 | 03242018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03192018 | 2018-03-19T08:32:20+00:00 |  | 000095247-01 | Robert | Levy | MERCY HEALTH CLERMONT HO | 917916 |  | MERCY HOSPITAL CLERMONT | 1568562551 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 03302018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03182018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319066 | D72829, K353, R1031 | Right lower quadrant pain | ICD10 | 03302018 | 03182018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03212018 | 2018-03-21T14:59:51+00:00 |  | 000102646-01 | Shirl | Curry | FAIRFIELD INTERNAL MED | 934614 | JOHNNY J | ABIDIN | 1902885403 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03202018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321088 | R109 | Unspecified abdominal pain | ICD10 | 03302018 | 03202018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03222018 | 2018-03-22T08:16:36+00:00 |  | 000101430-01 | Judy | George | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322015 | M19012 | Primary osteoarthritis, left shoulder | ICD10 | 03302018 | 03262018 | 03282018 | 23473 | REVIS RECONST SHOULDER JOINT | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03252018 | 2018-03-25T12:55:09+00:00 |  | 000025384-01 | LENORA | FORD | HOSPITALIST MEDICINE PHY | 907805 | HELLEN Y | BIHONEGN | 1477503324 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326035 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03302018 | 03242018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T10:22:16+00:00 |  | 000029609-01 | DORIS | GELLNER | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328033 | A419 | Sepsis, unspecified organism | ICD10 | 03302018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03282018 | 2018-03-28T10:42:54+00:00 |  | 000085601-01 | Loretta | Fitzpatrick | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180328041 | E860 | Dehydration | ICD10 | 03302018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03292018 | 2018-03-29T09:26:05+00:00 |  | 000026386-01 | ESTELLE | BRISTOW | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03272018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329017 | R0600 | Dyspnea, unspecified | ICD10 | 03302018 | 03272018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T09:54:59+00:00 |  | 000043096-01 | MARY | MIKLOSIK | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03302018 | Approved | TRINITY HEALTH | Fax | Observation | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330011 | I10, R079 | Chest pain, unspecified | ICD10 | 03302018 | 03282018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03302018 | 2018-03-30T09:59:21+00:00 |  | 000074175-01 | Paula | Wetzel | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330012 | L03818 | Cellulitis of other sites | ICD10 | 03302018 | 03282018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03292018 | 2018-03-29T13:00:25+00:00 |  | 000066201-01 | BARBARA | MILLER | HOSPITALIST MEDICINE PHY | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03292018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330015 | R6889 | Other general symptoms and signs | ICD10 | 03302018 | 03292018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03292018 | 2018-03-29T13:52:55+00:00 |  | 000071979-01 | Susan | Church | LICKING MEMORIAL HOSPITAL | 936497 |  | LICKING MEMORIAL HOSPITAL | 1568446755 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03272018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330020 | R6889 | Other general symptoms and signs | ICD10 | 03302018 | 03272018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T16:08:25+00:00 |  | 000066731-01 | JAMES | MARTIN | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Medical Only | Fax | Observation | Inpatient | 03162018 | 03312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322065 | R6889 | Other general symptoms and signs | ICD10 | 04012018 | 03162018 | 03312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 03262018 | 2018-03-26T09:51:12+00:00 |  | 000053741-01 | WILLIAM | SHULL | FAIRFIELD INTERNAL MED | 904235 | MICHAEL J | MURRAY | 1346275104 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Observation | OBSV | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03242018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326088 | I4891, J439, R0600 | Dyspnea, unspecified | ICD10 | 03302018 | 03242018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03262018 | 2018-03-26T15:02:17+00:00 |  | 000100775-01 | Ruby | Morgan | S DAYTON ACUTE CARE CNSL | 932487 | SRAVAN K | METLA | 1851713879 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327034 | M25552, M62838, R532 | Functional quadriplegia | ICD10 | 03302018 | 03252018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 03262018 | 2018-03-26T15:49:38+00:00 |  | 000087931-01 | Patricia | Bellitt | S DAYTON ACUTE CARE CNSL | 918029 | GEORGE N | MWANDIA | 1457664344 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03252018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327044 | I10, I2699 | Other pulmonary embolism without acute cor pulmonale | ICD10 | 03302018 | 03252018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03262018 | 2018-03-26T16:48:19+00:00 |  | 000100053-01 | Patricia | Smith | CLERMONT INTERNISTS ASSO | 921368 | ANIL K | KAKUMANU | 1922287515 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 03302018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327053 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 03302018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03272018 | 2018-03-27T08:54:35+00:00 |  | 000103642-01 | James | Price Jr | MERCY HOSPITAL FAIRFIELD | 936431 |  | MERCY HOSPITAL FAIRFIELD | 1467552471 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Observation | OBSV | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03302018 | Approved | MediGold Southwest OH Essential Care | Fax | Observation | Inpatient | 03262018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327067 | A419, E872, J181, N186, Z992 | Dependence on renal dialysis | ICD10 | 03302018 | 03262018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03272018 | 2018-03-27T09:30:10+00:00 |  | 000071218-01 | Richard | Szulewski | S DAYTON ACUTE CARE CNSL | 947829 | KIRTI | SANDERS | 1700227113 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 03302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03262018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327084 | D469, D539, I509, J95822 | Acute and chronic postprocedural respiratory failure | ICD10 | 03302018 | 03262018 | 03282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03282018 | 2018-03-28T08:44:49+00:00 |  | 000097620-01 | Athol | Meadows | LICKING MEM HLTH PROF | 923291 | BASHAR | ALAWAD | 1396024121 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03262018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329001 | E875 | Hyperkalemia | ICD10 | 03302018 | 03262018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03282018 | 2018-03-28T10:39:10+00:00 |  | 000079281-01 | Gary | Knaul | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03302018 | Approved | MediGold Medical Only | Fax | Secondary Only | Inpatient | 03262018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329006 | I6200, R51, R9089 | Oth abnormal findings on diagnostic imaging of cnsl | ICD10 | 03302018 | 03262018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03292018 | 2018-03-29T08:12:15+00:00 |  | 000103876-01 | SUSAN | COOK | HOSPITALIST MEDICINE PHY | 926861 | MOTAZ | HOSSEIN | 1922377977 | CLINTON MEMORIAL HOSPITAL | 917905 | 1063713659 | CLINTON MEMORIAL HOSPITAL | 1063713659 | Observation | OBSV | Concurrent Review | CONC |  | CLINTON MEMORIAL HOSPITAL | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03272018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180329058 | R0602 | Shortness of breath | ICD10 | 03302018 | 03272018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03302018 | 2018-03-30T09:46:16+00:00 |  | 000024375-01 | Debra | Craft | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03302018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 03282018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330009 | R6889 | Other general symptoms and signs | ICD10 | 03302018 | 03282018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03292018 | 2018-03-29T13:31:10+00:00 |  | 000115793-01 | Edith | Reese | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03282018 | 03302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330017 | I639 | Cerebral infarction, unspecified | ICD10 | 04012018 | 03282018 | 03302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03302018 | 2018-03-30T12:02:14+00:00 |  | 000102957-01 | Arlene | Hilling | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03302018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 03262018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330037 | R6889 | Other general symptoms and signs | ICD10 | 03302018 | 03262018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03302018 | 2018-03-30T12:06:44+00:00 |  | 000085877-01 | Elton | Moose | COMMUNITY MERCY HEALTH P | 906699 |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 03302018 | Approved | Flexible Choice PPO | Fax | Observation | Inpatient | 03292018 | 03292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180330039 | R6889 | Other general symptoms and signs | ICD10 | 03302018 | 03292018 | 03292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
