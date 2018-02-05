Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-01_OBS
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-01_OBS
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
| 01262018 | 2018-01-26T09:22:16+00:00 |  | 000080676-01 | Elizabeth | Oelgoetz | WATSON CLINIC LLP | 916476 | JIMENEZ | GENAO | 1801095054 | LAKELAND REG MED CTR INC | 934680 | 1144228446 | LAKELAND REG MED CTR INC | 1144228446 | Observation | OBSV | Concurrent Review | CONC |  | LAKELAND REG MED CTR INC | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01252018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126014 | E860, N390, R55 | Syncope and collapse | ICD10 | 02012018 | 01252018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01152018 | 2018-01-15T09:43:08+00:00 |  | 000015484-01 | ARTHUR | NEWMAN | SOUND INPATIENT PHYS | 915600 |  | SOUND INPATIENT PHYSICIANS | 1639311996 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01122018 | 01132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115060 | E860, J101, K529, N390 | Urinary tract infection, site not specified | ICD10 | 02012018 | 01122018 | 01132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01172018 | 2018-01-17T09:35:55+00:00 |  | 000039737-01 | JERRY | LANDRY | SOUND INPATIENT PHYS | 915600 |  | SOUND INPATIENT PHYSICIANS | 1639311996 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01162018 | 01162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117015 | G809 | Cerebral palsy, unspecified | ICD10 | 02012018 | 01162018 | 01162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01222018 | 2018-01-22T10:26:15+00:00 |  | 000069562-01 | SANDRA | SLONAKER | SOUND INPATIENT PHYS | 915600 |  | SOUND INPATIENT PHYSICIANS | 1639311996 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01202018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180122076 | T819XXA | Unspecified complication of procedure, initial encounter | ICD10 | 02012018 | 01202018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01222018 | 2018-01-22T16:57:43+00:00 |  | 000088584-01 | Roger | Boles | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01202018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123005 | R42, R531 | Weakness | ICD10 | 02012018 | 01202018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01232018 | 2018-01-23T09:40:51+00:00 |  | 000070937-01 | JoDee | Schmalstig | S DAYTON ACUTE CARE CNSL | 907795 | MANJULA | SATYANARAYAN | 1558412866 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Observation | OBSV | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01222018 | 01252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123029 | R296, R410 | Disorientation, unspecified | ICD10 | 02012018 | 01222018 | 01252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T08:55:40+00:00 |  | 000097754-01 | Barbara | Warmoth | COMMUNITY HSPIST LLC | 932655 | ABDULMAJID | ADAM | 1528362258 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01282018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129035 | G43A1 | Cyclical vomiting, intractable | ICD10 | 02012018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T17:27:28+00:00 |  | 000012612-01 | DONALD | COLLINS | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01292018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131038 | R079 | Chest pain, unspecified | ICD10 | 02012018 | 01292018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01032018 | 2018-01-03T10:03:16+00:00 |  | 000112789-01 | Douglas | Lee | HOSPITALIST MEDICINE PHY | 942960 | TAMARA J | SCOTT | 1871852863 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01012018 | 01022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180103042 | F14121, R4182 | Altered mental status, unspecified | ICD10 | 02012018 | 01012018 | 01022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01092018 | 2018-01-09T13:04:56+00:00 |  | 000006394-01 | BILLIE | FINEGAN | CEN OH PRIMARY CARE SPEC | 902423 | ARADHI U | PANDYA | 1306829908 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Observation | OBSV | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01082018 | 01262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109110 | F0390 | Unspecified dementia without behavioral disturbance | ICD10 | 02012018 | 01082018 | 01262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 01232018 | 2018-01-23T10:50:52+00:00 |  | 000115415-01 | Darlene | Marentette | SOUND INPATIENT PHYS | 915600 |  | SOUND INPATIENT PHYSICIANS | 1639311996 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01222018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123037 | G459 | Transient cerebral ischemic attack, unspecified | ICD10 | 02012018 | 01222018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01232018 | 2018-01-23T10:50:52+00:00 |  | 000112607-01 | Patricia | Lauck | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01222018 | 01222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123040 | R079 | Chest pain, unspecified | ICD10 | 02012018 | 01222018 | 01222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01232018 | 2018-01-23T11:48:37+00:00 |  | 000105592-01 | Paul | Wilson | KNOX COMMUNITY HSP PHYS | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02012018 | Approved | MediGold Southeast OH Essential Care | Fax | Observation | Inpatient | 01222018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123053 | I214, J09X2, J208 | Acute bronchitis due to other specified organisms | ICD10 | 02012018 | 01222018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01262018 | 2018-01-26T13:52:31+00:00 |  | 000024375-01 | Debra | Craft | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01252018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126058 | N10 | Acute tubulo-interstitial nephritis | ICD10 | 02012018 | 01252018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01272018 | 2018-01-27T11:52:43+00:00 |  | 000045006-01 | MABEL | MILLER | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01262018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129029 | R079 | Chest pain, unspecified | ICD10 | 02012018 | 01262018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01272018 | 2018-01-27T18:04:20+00:00 |  | 000088298-01 | Wanda | Roffe | INDEPENDENT INPATIENT PH | 907729 | MARK | DELLINGER | 1710924410 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01262018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129046 | A419, L0390 | Cellulitis, unspecified | ICD10 | 02012018 | 01262018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01282018 | 2018-01-28T10:55:54+00:00 |  | 000010015-01 | PAUL | GROVE | COLS INPATIENT CARE INC | 927568 | KARTHIK S | MULKANOOR | 1720390859 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01272018 | 01282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129052 | H8149 | Vertigo of central origin, unspecified ear | ICD10 | 02012018 | 01272018 | 01282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01282018 | 2018-01-28T18:17:43+00:00 |  | 000034946-01 | PATRICIA | THOMAS | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01272018 | 01302018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129103 | R55 | Syncope and collapse | ICD10 | 02012018 | 01272018 | 01302018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01302018 | 2018-01-30T12:42:51+00:00 |  | 000024673-01 | WILMA | GRAY | HOSPITALIST MEDICINE PHY | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01272018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130065 | I639 | Cerebral infarction, unspecified | ICD10 | 02012018 | 01272018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01312018 | 2018-01-31T10:50:40+00:00 |  | 000096921-01 | ANDREA | ANGLE | BERGER HOSPITAL | 936479 |  | BERGER HOSPITAL | 1326020447 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131065 | I509 | Heart failure, unspecified | ICD10 | 02012018 | 01302018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01232018 | 2018-01-23T13:11:37+00:00 |  | 000060980-01 | KENNETH | BAER | INDU & RAJ SOIN MEDICAL CENTER | 919117 |  | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Observation | OBSV | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01222018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123067 | J189 | Pneumonia, unspecified organism | ICD10 | 02012018 | 01222018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01242018 | 2018-01-24T12:58:29+00:00 |  | 000097027-01 | James | Manns | THE CHRIST HSP MED ASSOC | 944349 | NAUM | KRIMERMAN | 1003872573 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Observation | OBSV | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 02012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01232018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124050 | I255, R0902, R609 | Edema, unspecified | ICD10 | 02012018 | 01232018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01242018 | 2018-01-24T14:47:34+00:00 |  | 000109418-01 | CHARLES | BROWN | COLS INPATIENT CARE INC | 910646 | MAGDALENA | GASIOROVA | 1134389000 | KNOX COMMUNITY HOSPITAL | 936422 | 1295761963 | KNOX COMMUNITY HOSPITAL | 1295761963 | Observation | OBSV | Concurrent Review | CONC |  | KNOX COMMUNITY HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01222018 | 01232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124064 | E875 | Hyperkalemia | ICD10 | 02012018 | 01222018 | 01232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01262018 | 2018-01-26T12:04:11+00:00 |  | 000060129-01 | BARBARA | JONES | MIAMI VALLEY HSPISTS GRP | 947756 | NIKHIL | PRASAD | 1114364460 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01262018 | 01272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126045 | N179 | Acute kidney failure, unspecified | ICD10 | 02012018 | 01262018 | 01272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01292018 | 2018-01-29T07:55:19+00:00 |  | 000111203-01 | Brenda | Knisley | APOGEE MED GRP OHIO INC | 944985 | CHANDRA M | PALLA | 1992084727 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Observation | OBSV | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02012018 | Approved | MediGold Essential Care | Fax | Observation | Inpatient | 01282018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129027 | S0990XA | Unspecified injury of head, initial encounter | ICD10 | 02012018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T09:48:14+00:00 |  | 000020381-01 | MABEL | HUPP | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129085 | I959, J159, N19 | Unspecified kidney failure | ICD10 | 02012018 | 01282018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T12:56:35+00:00 |  | 000030936-01 | RONALD | MATHERS | LICKING MEM INPATIENT ME | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01272018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129093 | J449 | Chronic obstructive pulmonary disease, unspecified | ICD10 | 02012018 | 01272018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T09:48:14+00:00 |  | 000048809-01 | GARRY | PIERCE | HOSPITALIST MEDICINE PHY | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01282018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129095 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02012018 | 01282018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01292018 | 2018-01-29T12:58:36+00:00 |  | 000083269-01 | Pamela | Walker | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Observation | OBSV | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01262018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129096 | D649, R531 | Weakness | ICD10 | 02012018 | 01262018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01312018 | 2018-01-31T09:55:52+00:00 |  | 000038514-01 | JUDITH | CLOKEY | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Observation | OBSV | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131044 | J159 | Unspecified bacterial pneumonia | ICD10 | 02012018 | 01302018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01312018 | 2018-01-31T10:49:51+00:00 |  | 000026873-01 | DOROTHY | MYERS | HOSPITALIST MEDICINE PHY | 934211 | HUI | ZHU | 1336464932 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Observation | OBSV | Concurrent Review | CONC |  | BERGER HOSPITAL | 02012018 | Approved | MediGold Classic Preferred | Fax | Observation | Inpatient | 01302018 | 02012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131064 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 02012018 | 01302018 | 02012018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
