Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-30_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-04-30_URGEMERG
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
| 03042018 | 2018-03-04T11:35:06+00:00 |  | 000081565-01 | Sandra | Ebright | AMERICAN HLTH NETWORK OF | 935954 | JAMES B | SOLDANO | 1356377345 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03032018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305048 | G919 | Hydrocephalus, unspecified | ICD10 | 04302018 | 03032018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 55.0 |
| 03192018 | 2018-03-19T11:41:08+00:00 |  | 000056514-01 | SALLY | MERLE | COLON & RECTAL SURG INC | 937012 | KARAMJIT S | KHANDUJA | 1093707960 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04252018 | 04282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319039 | Z85048 | Prsnl hx of malig neoplm of rectum, rectosig junct, and anus | ICD10 | 04302018 | 04252018 | 04282018 | 44620 | CLOSE ENTEROSTOMY-LARGE, SM INTEST | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 03212018 | 2018-03-21T14:49:26+00:00 |  | 000102202-01 | EDWARD | BABBITT | MOUNT CARMEL HLTH PRVDRS | 937221 | BRADFORD B | MULLIN | 1518964790 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321075 | M4802 | Spinal stenosis, cervical region | ICD10 | 04302018 | 04252018 | 04272018 | 20936, 20930, 63081, 63082, 22554, 22585, 22846, 22854 | INSJ BIOMECHANICAL DEVICE | CPT | 1, 1, 1, 1, 1, 2, 1, 1 | 1, 1, 1, 1, 1, 2, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 04122018 | 2018-04-12T10:13:55+00:00 |  | 000015867-01 | LOWELL | CUPP | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04112018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412033 | N179 | Acute kidney failure, unspecified | ICD10 | 04302018 | 04112018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 18.0 |
| 04122018 | 2018-04-12T10:18:20+00:00 |  | 000036755-01 | CATHERINE | LEACH | ADENA MEDICAL GROUP LLC | 948000 | ROHINI | CHAWLA | 1679915292 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04112018 | 04162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180420168191.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412034 | I214, I509, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04302018 | 04112018 | 04162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04122018 | 2018-04-12T16:17:46+00:00 |  | 000043251-01 | HARRIETTE | BULLOCK | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412071 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 04302018 | 04252018 | 04282018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 04132018 | 2018-04-13T17:09:10+00:00 |  | 000009345-01 | ROLAND | GILBERT | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04122018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416008 | J90 | Pleural effusion, not elsewhere classified | ICD10 | 04302018 | 04122018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 04152018 | 2018-04-15T16:38:36+00:00 |  | 000034815-01 | JIM | SHULTZ | HOSPITALIST MEDICINE PHY | 948949 | KHAIRI | SHMINA | 1205275674 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416055 | R531 | Weakness | ICD10 | 04302018 | 04142018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 04162018 | 2018-04-16T07:48:46+00:00 |  | 000106309-01 | Jeff | Davis | OSU INTERNAL MED LLC | 911011 | GARRIE J | HAAS | 1104858018 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04132018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416056 | E6601, I5021 | Acute systolic (congestive) heart failure | ICD10 | 04302018 | 04132018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04162018 | 2018-04-16T09:28:05+00:00 |  | 000111681-01 | David | Neal | ADENA MEDICAL GROUP LLC | 923072 | EARL G | HALEY | 1205076544 | ADENA REGIONAL MED CTR | 936475 | 1902839673 | ADENA REGIONAL MEDICAL CENTER | 1902839673 | Inpatient | IP | Concurrent Review | CONC |  | ADENA REGIONAL MEDICAL CENTER | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04152018 | 04172018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  | 180420168200.0 |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180416064 | J690 | Pneumonitis due to inhalation of food and vomit | ICD10 | 04302018 | 04152018 | 04172018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04182018 | 2018-04-18T09:06:23+00:00 |  | 000003326-01 | GERALDINE | TIEFEL | COPC CENTRAL OHIO PRIMAR | 913915 | MALVINA | KHOZINA | 1063473288 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04142018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418011 | I998 | Other disorder of circulatory system | ICD10 | 04302018 | 04142018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 13.0 |
| 04182018 | 2018-04-18T15:14:45+00:00 |  | 000100451-01 | Eugene | Allen | OSU SURGERY LLC | 930196 | ROBERT E | MERRITT | 1508051319 | ARTHUR G JAMES CANCER HO | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418062 | R911 | Solitary pulmonary nodule | ICD10 | 04302018 | 04232018 | 04252018 | 32666, 32601, 31622 | BRONCHOSCOPY-DIAG-W-W/O CELL WS/BRS | CPT | 1, 1, 1 | 1, 1, 1 | Approved, Approved, Approved | 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 04182018 | 2018-04-18T15:44:34+00:00 |  | 000120638-01 | SHARON | SALLY | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Pre-Service | PRE |  | MOUNT CARMEL REHABILITATION HOSPITAL | 04302018 | Denied | MediGold Essential Care | Fax | Criteria Not Met | Inpatient | 04302018 | 05012018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Denied | A180418069 | R6889 | Other general symptoms and signs | ICD10 | 04302018 |  |  |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 04192018 | 2018-04-19T16:28:04+00:00 |  | 000043514-01 | GERALD | EISENMAN | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04232018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180420005 | I350 | Nonrheumatic aortic (valve) stenosis | ICD10 | 04302018 | 04232018 | 04272018 | 33361 | REPLACE AORTIC VALVE PERQ | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 04222018 | 2018-04-22T12:31:25+00:00 |  | 000009904-01 | JAMES | LAW | HOSPITALIST MEDICINE PHY | 947764 | NAMRATA | SINGHANIA | 1437590916 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04212018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423037 | K625, K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04302018 | 04212018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04222018 | 2018-04-22T13:13:13+00:00 |  | 000117065-01 | Norma | Williams | HOSPITALIST MEDICINE PHY | 932916 | SENAI | NEGASSI | 1255604609 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04212018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423041 | J189 | Pneumonia, unspecified organism | ICD10 | 04302018 | 04212018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04232018 | 2018-04-23T07:28:33+00:00 |  | 000071691-01 | Tina | Blair | APOGEE MED GRP OHIO INC | 952313 | VALERIE M | DRABINA DOMBRO | 1982982955 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423058 | D62, K922, N179, T814XXA | Infection following a procedure, initial encounter | ICD10 | 04302018 | 04222018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04232018 | 2018-04-23T09:26:53+00:00 |  | 000064596-01 | MARY | CAYTON | LICKING MEM HLTH PROF | 947795 | MARUF A | ALI | 1104258979 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04202018 | 04242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423090 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 04302018 | 04202018 | 04242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 04232018 | 2018-04-23T16:51:55+00:00 |  | 000118003-01 | Charles | Belcher | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424040 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 04302018 | 04202018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04242018 | 2018-04-24T13:10:49+00:00 |  | 000050910-01 | WILLIAM | ZIPF | MOUNT CARMEL HLTH SYS | 936068 | ADAM M | ZOCHOWSKI | 1427056399 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424088 | K8050, K8081 | Other cholelithiasis with obstruction | ICD10 | 04302018 | 04232018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04252018 | 2018-04-25T09:40:10+00:00 |  | 000120738-01 | Ada | Nethers | EAST OH ORAL & MAXILLOFA | 949251 | CLAIRE | TOWNING | 1447514260 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04242018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425047 | L0211 | Cutaneous abscess of neck | ICD10 | 04302018 | 04242018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03092018 | 2018-03-09T13:45:10+00:00 |  | 000075775-01 | Nila | Randall | ORTHO & NEURO CONSULTS I | 942983 | RYAN M | PALMER | 1912134487 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Southwest OH Classic Preferred | Fax | EIS | Inpatient | 04262018 | 04272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180309061 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 04302018 | 04262018 | 04272018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03102018 | 2018-03-10T08:58:18+00:00 |  | 000100516-01 | Thomas | Fletcher | ORTHO & NEURO CONSULTS I | 916556 | BRUCE R | COMISAR | 1063407765 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04262018 | 04272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312007 | M19111 | Post-traumatic osteoarthritis, right shoulder | ICD10 | 04302018 | 04262018 | 04272018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03152018 | 2018-03-15T15:32:51+00:00 |  | 000105668-01 | MARYHELEN | ANDERSON | SOUTHWEST OHIO UROGYNECO | 926081 | ARLAN M | GUSTILO-ASHBY | 1285829101 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04302018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04252018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316006 | N393, N8112, N813, N816 | Rectocele | ICD10 | 04302018 | 04252018 | 04272018 | 57288, 52000, 58260, 57267, 57283, 57260 | REPAIR CYSTO&RECTOCELE,A&P VAG.WALS | CPT | 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved | 3, 3, 3, 3, 3, 3 | CPT | C4 |  |  |  | 2.0 |
| 03232018 | 2018-03-23T09:42:53+00:00 |  | 000108522-01 | Richard | Gorsuch | MOUNT CARMEL HLTH PRVDRS | 952270 | ZOE | ZHANG | 1407080138 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180327041 | G912 | (Idiopathic) normal pressure hydrocephalus | ICD10 | 04302018 | 04232018 | 04282018 | 62272, 62223 | SHUNT;VENTRICILO-PERITONEAL,-PLEURAL, OTHER TERMINUS | CPT | 1, 1 | 1, 1 | Approved, Approved | 6, 6 | CPT | C4 |  |  |  | 5.0 |
| 04122018 | 2018-04-12T11:44:18+00:00 |  | 000092859-01 | Carolyn | Sheaks | MOUNT CARMEL EAST PHYS | 935055 | ANDREW B | BOKOR | 1477523454 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04272018 | 04282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180412049 | N814 | Uterovaginal prolapse, unspecified | ICD10 | 05012018 | 04272018 | 04282018 | 58571, 57425, 57288, 52000, 57270, 57260 | REPAIR CYSTO&RECTOCELE,A&P VAG.WALS | CPT | 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1 | , , , , ,  | 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04132018 | 2018-04-13T09:14:14+00:00 |  | 000050627-01 | SHARON | SHRIMPLIN | ORTHOPEDIC & NEUROLOGICA | 936690 | MARK E | GITTINS | 1598749699 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04262018 | 04272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180413011 | M1711, M25561 | Pain in right knee | ICD10 | 04302018 | 04262018 | 04272018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 04172018 | 2018-04-17T13:59:25+00:00 |  | 000103035-01 | AMY | ARNETT | DAVID ZAPF DO INC | 902300 |  | DAVID ZAPF DO INC | 1386824316 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 04302018 | Approved | Flexible Choice PPO | Fax | Inpatient | Inpatient | 04162018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180417125 | D649 | Anemia, unspecified | ICD10 | 04302018 | 04162018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04182018 | 2018-04-18T15:13:56+00:00 |  | 000062734-01 | JON | NOE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180418065 | M6281 | Muscle weakness (generalized) | ICD10 | 04302018 | 04172018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 04182018 | 2018-04-18T16:19:24+00:00 |  | 000117386-01 | Linda | Johnson | GENESIS MEDICAL GRP LLC | 915319 | AMMAR | SAFAR | 1558334581 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04172018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419010 | D649, I214, I509, N179 | Acute kidney failure, unspecified | ICD10 | 04302018 | 04172018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 04192018 | 2018-04-19T11:18:38+00:00 |  | 000040006-01 | ROBERT | WILSON | COLS INPATIENT CARE INC | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04172018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180419047 | K810, R109 | Unspecified abdominal pain | ICD10 | 04302018 | 04172018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 04232018 | 2018-04-23T08:40:03+00:00 |  | 000056545-01 | HELEN | BAUGHMAN | FCMH MED & SURG ASSOC | 943028 | RYAN K | HARRISON | 1528295169 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04222018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423008 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 04302018 | 04222018 | 04272018 | 27125 | PARTIAL HIP REPLACEMENT, PROSTHESIS | CPT | 1 | 1 | Approved | 6 | CPT | C4 |  |  |  | 5.0 |
| 04202018 | 2018-04-20T14:50:13+00:00 |  | 000121957-01 | David | Plunket | KHN IP MED | 906163 | ARSHAD A | SHAH | 1578583605 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04192018 | 04252018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423014 | N179, R531 | Weakness | ICD10 | 04302018 | 04192018 | 04252018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04202018 | 2018-04-20T14:31:08+00:00 |  | 000118129-01 | MARY | PARSONS | FAIRFIELD COMMUNITY HLTH | 915028 | THERESA A | DYAR | 1043404932 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423018 | A09, E860 | Dehydration | ICD10 | 04302018 | 04202018 | 04262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04212018 | 2018-04-21T14:55:58+00:00 |  | 000054327-01 | JOYCE | MAYNARD | MOUNT CARMEL HLTH SYS | 941655 | ROHIT | CHAND | 1285991976 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04202018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423031 | E1100, J189, J9620, R000 | Tachycardia, unspecified | ICD10 | 04302018 | 04202018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 04232018 | 2018-04-23T11:37:18+00:00 |  | 000108622-01 | Jerry | Salyers | DIZON, VICTOR V | 935866 | VICTOR V | DIZON | 1528110343 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04212018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423078 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 04302018 | 04212018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04232018 | 2018-04-23T11:48:27+00:00 |  | 000076636-01 | Mary | King | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04222018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180423080 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 04302018 | 04222018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 04242018 | 2018-04-24T07:47:47+00:00 |  | 000083895-01 | Emily | Glover | COLS INPATIENT CARE INC | 941835 | SHAVON | FRANKHOUSER | 1629395512 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424045 | N179 | Acute kidney failure, unspecified | ICD10 | 04302018 | 04232018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04242018 | 2018-04-24T12:59:19+00:00 |  | 000081384-01 | SHARON | HOEFELMEYER | ORTHOPEDIC & NEUROLOGICA | 935566 | ROBERT J | NOWINSKI | 1174544506 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04272018 | 04282018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424062 | M25511 | Pain in right shoulder | ICD10 | 04302018 | 04272018 | 04282018 | 23472, 23335, 23420, 23440, 23020, 23395, 23406 | TENOMYOTOMY, MULT., SAME INCISION | CPT | 1, 1, 1, 1, 1, 1, 1 | 1, 1, 1, 1, 1, 1, 1 | Approved, Approved, Approved, Approved, Approved, Approved, Approved | 2, 2, 2, 2, 2, 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 04242018 | 2018-04-24T11:59:34+00:00 |  | 000064194-01 | GENE | PRICE | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 04302018 | Approved | THE TIMKEN COMPANY | Fax | Inpatient | Inpatient | 04232018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424065 | N1330 | Unspecified hydronephrosis | ICD10 | 04302018 | 04232018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04242018 | 2018-04-24T13:39:47+00:00 |  | 000057095-01 | PETER | REYNOLDS | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04282018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180424092 | J9601 | Acute respiratory failure with hypoxia | ICD10 | 04302018 | 04232018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 04242018 | 2018-04-24T14:14:35+00:00 |  | 000102646-01 | Shirl | Curry | MOUNT CARMEL HLTH SYS | 925309 | FERNANDO N | AGUILA | 1942499280 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 04232018 | 04272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425002 | C259 | Malignant neoplasm of pancreas, unspecified | ICD10 | 04302018 | 04232018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04252018 | 2018-04-25T10:27:13+00:00 |  | 000114894-01 | Roger | Bullard | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Southeast OH Essential Care | Fax | ACO - Cardiology | Inpatient | 04242018 | 04282018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180425038 | I350, I351, Z952 | Presence of prosthetic heart valve | ICD10 | 04302018 | 04242018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04262018 | 2018-04-26T08:32:27+00:00 |  | 000093027-01 | Donald | Routt | MERCY HEALTH PHYSICIANS | 933563 | MAGUED N | KHOUZAM | 1912932260 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 04302018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 04262018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426016 | O99215 | Obesity complicating the puerperium | ICD10 | 04302018 | 04262018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T08:22:20+00:00 |  | 000078314-01 | Margaret | Hines | JOINT IMPLANT SURGEONS | 904909 | KEITH R | BEREND | 1003809484 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 04302018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 04252018 | 04272018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426006 | M179 | Osteoarthritis of knee, unspecified | ICD10 | 04302018 | 04252018 | 04272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04262018 | 2018-04-26T09:47:40+00:00 |  | 000095999-01 | Kenneth | Fuchs | AMERICAN HLTH NETWORK OF | 905559 | MEGAN E | FRANK | 1821290313 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426023 | I5033 | Acute on chronic diastolic (congestive) heart failure | ICD10 | 04302018 | 04252018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 04262018 | 2018-04-26T11:24:43+00:00 |  | 000109725-01 | William G | Dewey | HOSPITALIST MEDICINE PHY | 923027 | NAMRATHA R | MAPAKSHI | 1972738235 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 04302018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 04252018 | 04282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180426027 | J449, J9383 | Other pneumothorax | ICD10 | 04302018 | 04252018 | 04282018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 04272018 | 2018-04-27T09:41:31+00:00 |  | 000117383-01 | JOANN | BURTON | MERCY HOSPITAL ANDERSON | 939409 |  | MERCY HOSPITAL ANDERSON | 1235239211 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 04302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04272018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180427023 | I249 | Acute ischemic heart disease, unspecified | ICD10 | 04302018 | 04272018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 04292018 | 2018-04-29T11:18:36+00:00 |  | 000115734-01 | William | Campton Jr | MEADOWVIEW REGIONAL MEDICAL CENTER | 931045 |  | MEADOWVIEW REGIONAL MEDICAL CENTER | 1881785863 | MEADOWVIEW REGIONAL MEDICAL CENTER | 931045 | 1881785863 | MEADOWVIEW REGIONAL MEDICAL CENTER | 1881785863 | Inpatient | IP | Concurrent Review | CONC |  | MEADOWVIEW REGIONAL MEDICAL CENTER | 04302018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 04282018 | 04292018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180430013 | J441, R079 | Chest pain, unspecified | ICD10 | 04302018 | 04282018 | 04292018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
