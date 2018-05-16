Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-15_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-05-15_URGEMERG
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
| 03222018 | 2018-03-22T10:46:38+00:00 |  | 000010994-01 | CAROLYN | BAILEY | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05092018 | 05142018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322033 | G930, G950 | Syringomyelia and syringobulbia | ICD10 | 05152018 | 05092018 | 05142018 | 63047, 62190, 62272 | SPNL PUNC FOR DRAINAGE SPNL FLUID | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 6, 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 04172018 | 2018-04-17T11:46:27+00:00 |  | 000082795-01 | LAWRENCE | RIESTENBERG | MERCY HEALTH PHYSICIANS | 921248 | GREGORY C | ZENNI | 1285664789 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 05152018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04242018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180502170411.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417085 | I6523 | Occlusion and stenosis of bilateral carotid arteries | ICD10 | 05152018 | 04242018 | 04252018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04192018 | 2018-04-19T16:03:07+00:00 |  | 000106408-01 | Ernest | Erickson | MERCY HEALTH PHYSICIANS | 942669 | AMELIA J | WIGGINS | 1407099195 | MERCY HEALTH CLERMONT HO | 917916 | 1568562551 | MERCY HOSPITAL CLERMONT | 1568562551 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL CLERMONT | 05152018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 05072018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419073 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 05152018 | 05072018 | 05102018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 2.0 |
| 05012018 | 2018-05-01T11:41:46+00:00 |  | 000008715-01 | JOYCE | SHIVENER | OHIOHEALTH PHYS GRP | 909718 | KEVIN J | PUGH | 1043204704 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04302018 | 05102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502019 | S0083XA | Contusion of other part of head, initial encounter | ICD10 | 05152018 | 04302018 | 05102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05032018 | 2018-05-03T09:05:03+00:00 |  | 000115067-01 | Darlene | Schaeffer-Bryant | OSU SURGERY LLC | 932344 | DANIEL E | VAZQUEZ | 1265611297 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05152018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 05022018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503015 | R1310 | Dysphagia, unspecified | ICD10 | 05152018 | 05022018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 04302018 | 2018-04-30T15:45:12+00:00 |  | 000051800-01 | RAYMOND | ULMER | MOUNT CARMEL HLTH PRVDRS | 907862 | ALEXANDRU M | VAIDA | 1285703124 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05092018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430093 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 05152018 | 05092018 | 05142018 | 31622, 32666, 32484 | REMOVAL OF LUNG, OTHER THAN TOTAL PNEUMONECTOMY; | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 6, 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 04202018 | 2018-04-20T10:16:06+00:00 |  | 000026516-01 | WAYNE | LUST | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04192018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420018 | R42 | Dizziness and giddiness | ICD10 | 05152018 | 04192018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04242018 | 2018-04-24T10:18:02+00:00 |  | 000089285-01 | Sharon | Nusser | CENTRAL OHIO SURG ASSOC | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424037 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 05152018 | 05072018 | 05142018 | 48150 | PANCREATECTOMY-SUBTOTAL-WHIPPLE | CPT | 1 | 1 | Approved | 8 | CPT | C4 |  |  |  | 7.0 |
| 04262018 | 2018-04-26T14:56:00+00:00 |  | 000041201-01 | ROGER | SMITH | OSU HLTH SYSTEM NEUROSUR | 911215 | MILIND | DEOGAONKAR | 1780871327 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426064 | G20 | Parkinson's disease | ICD10 | 05152018 | 05082018 | 05112018 | 61867, 20660, 77002 | FLUOROSCOPIC GUIDANCE FOR NEEDLE PLACEMENT | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 4, 4, 4 | CPT | C4 |  |  |  | 3.0 |
| 04302018 | 2018-04-30T11:49:18+00:00 |  | 000040824-01 | CHARLES | DERENBERGER | COPC CENTRAL OHIO PRIMAR | 919351 | SABREEN O | ABU OBAID | 1700026556 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04292018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430063 | R748 | Abnormal levels of other serum enzymes | ICD10 | 05152018 | 04292018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05022018 | 2018-05-02T15:42:32+00:00 |  | 000032559-01 | LARRY | MILACEK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 05012018 | 05082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502078 | M79662 | Pain in left lower leg | ICD10 | 05152018 | 05012018 | 05082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05022018 | 2018-05-02T14:00:59+00:00 |  | 000017153-01 | DONALD | BISHOP | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05012018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180502090 | R4182 | Altered mental status, unspecified | ICD10 | 05152018 | 05012018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 05032018 | 2018-05-03T11:33:58+00:00 |  | 000006245-01 | HELEN | HANEY | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503023 | L03116, L97909 | Non-prs chronic ulc unsp prt of unsp low leg w unsp severity | ICD10 | 05152018 | 05042018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 05032018 | 2018-05-03T14:36:45+00:00 |  | 000039232-01 | LOUIS | RAINER | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05022018 | 05142018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180503044 | I200, J159 | Unspecified bacterial pneumonia | ICD10 | 05152018 | 05022018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 05032018 | 2018-05-03T16:23:12+00:00 |  | 000049513-01 | PAUL | RAMEY | KIM S HAMELBERG MD DBA T | 938531 |  | KIM S HAMELBERG MD DBA THE SURGEONS | 1710069711 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 05102018 | 05132018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180504001 | D490 | Neoplasm of unspecified behavior of digestive system | ICD10 | 05152018 | 05102018 | 05132018 | 44160 | COLECTOMY, RMVL TERM ILEUM & ILEOCO | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 1.0 |
| 05062018 | 2018-05-06T10:58:31+00:00 |  | 000034686-01 | GEORGIA | HUFFER | OHIOHEALTH PHYS GRP | 946385 | KESHAV | DESHPANDE | 1285958611 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05042018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507020 | G969, I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 05152018 | 05042018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05062018 | 2018-05-06T10:59:08+00:00 |  | 000032824-01 | JUDITH | HOOK | CHOWDHURY, LUCIA | 939540 | LUCIA | CHOWDHURY | 1851346647 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507027 | J9610, R9431 | Abnormal electrocardiogram [ECG] [EKG] | ICD10 | 05152018 | 05052018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T08:45:10+00:00 |  | 000058376-01 | JO | RIDDLE | MOUNT CARMEL HLTH SYS | 940524 | PATRICK P | YOUSSEF | 1144343484 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509040 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 05152018 | 05082018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05142018 | 2018-05-14T11:28:18+00:00 |  | 000040909-01 | NAOMI | KNOTTS | ADENA MEDICAL GROUP LLC | 910661 | HAVAL M | SAADLLA | 1659458156 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514101 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 05152018 | 05112018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05072018 | 2018-05-07T14:07:27+00:00 |  | 000053246-01 | JO | ROBINSON | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05052018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180507052 | R112, R7881 | Bacteremia | ICD10 | 05152018 | 05052018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 05082018 | 2018-05-08T15:36:24+00:00 |  | 000073280-01 | Larry | Hardbarger | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05072018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180508086 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 05152018 | 05072018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 05082018 | 2018-05-08T12:43:35+00:00 |  | 000097200-01 | Adrian | Bowen | HOSPITALIST MEDICINE PHY | 912176 | AMISH S | OZA | 1396953956 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509010 | D72829, R109, R112, K56609 | K56609 | ICD10 | 05152018 | 05082018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 05082018 | 2018-05-08T17:23:54+00:00 |  | 000082021-01 | Roger | Pulley | SOUND INPATIENT PHYS OF | 927320 | SAMATHA | PALADUGU | 1154635753 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 05152018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 05072018 | 05112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509016 | R109 | Unspecified abdominal pain | ICD10 | 05152018 | 05072018 | 05112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05092018 | 2018-05-09T09:46:30+00:00 |  | 000002716-01 | JOYCE | BARBOUR | LICKING MEM INPATIENT ME | 918520 | JAMIE A | RHODES | 1619120276 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05082018 | 05132018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180509051 | N390, R509 | Fever, unspecified | ICD10 | 05152018 | 05082018 | 05132018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 05122018 | 2018-05-12T19:23:15+00:00 |  | 000058127-01 | SANDRA | ROBSON | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 05152018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 05112018 | 05142018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180514038 | J189, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 05152018 | 05112018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 05142018 | 2018-05-14T15:33:05+00:00 |  | 000064031-01 | FRANCES | DEELY | ST VINCENT HOSPITAL | 935308 |  | ST VINCENT HOSPITAL | 1306898960 | ST VINCENT HOSPITAL | 935308 | 1306898960 | ST VINCENT HOSPITAL | 1306898960 | Inpatient | IP | Concurrent Review | CONC |  | ST VINCENT HOSPITAL | 05152018 | Approved | TRINITY HEALTH | Fax | Inpatient | Inpatient | 05112018 | 05122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515041 | E875, G9341, N179, N390 | Urinary tract infection, site not specified | ICD10 | 05152018 | 05112018 | 05122018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 05142018 | 2018-05-14T16:55:32+00:00 |  | 000093877-01 | Cheryl | Hill | PROVIDER, UNKNOWN | 999999999 | UNKNOWN | PROVIDER | 0 | PROVIDER, UNKNOWN | 999999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC | UNKNOWN | PROVIDER | 05152018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 05112018 | 05142018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180515043 | N201 | Calculus of ureter | ICD10 | 05152018 | 05112018 | 05142018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
