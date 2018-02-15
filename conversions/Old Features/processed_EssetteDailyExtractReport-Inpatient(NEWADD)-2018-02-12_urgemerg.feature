Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-12_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-12_URGEMERG
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
| 01042018 | 2018-01-04T10:27:56+00:00 |  | 000042865-01 | Sharon | Bowman | MOUNT CARMEL HLTH SYS | 937101 | MARK A | LINDSEY | 1770583874 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180104041 | C20 | Malignant neoplasm of rectum | ICD10 | 02122018 | 02052018 | 02112018 | 44207 | L COLECTOMY/COLOPROCTOSTOMY | CPT | 1 | 1 | Approved | 7 | CPT | C4 |  |  |  | 6.0 |
| 02082018 | 2018-02-08T09:18:35+00:00 |  | 000011023-01 | RITA | GREGOREK | COPC CENTRAL OHIO PRIMAR | 938757 |  | CENTRAL OH PRIMARY CARE PHYS INC | 1194705194 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02072018 | 02112018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208036 | M84359S | Stress fracture, hip, unspecified, sequela | ICD10 | 02122018 | 02072018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01182018 | 2018-01-18T09:30:14+00:00 |  | 000085997-01 | Juanita | Steen | GILLESPIE II, HAROLD A | 900097 | HAROLD A | GILLESPIE II | 1689663130 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 01172018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180118017 | I4891 | Unspecified atrial fibrillation | ICD10 | 02122018 | 01172018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 01252018 | 2018-01-25T10:43:29+00:00 |  | 000065504-01 | BURHL | CALTRIDER | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02062018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125040 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02122018 | 02062018 | 02102018 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 01252018 | 2018-01-25T14:57:05+00:00 |  | 000055320-01 | GWENDOLYN | CAPPS | FAIRFIELD INTERNAL MED | 947653 | GREGORY K | RIFFLE | 1427398429 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125080 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 02122018 | 01252018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 01272018 | 2018-01-27T15:30:33+00:00 |  | 000088279-01 | Donald | Gardner | HOSPITALIST MEDICINE PHY | 952668 | HO AN | KANG | 1275945545 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01262018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129007 | E11621, M869 | Osteomyelitis, unspecified | ICD10 | 02122018 | 01262018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01312018 | 2018-01-31T11:05:33+00:00 |  | 000043827-01 | ROBERT | GHILONI | MOUNT CARMEL HLTH PRVDRS | 936395 | THOMAS S | FANNING | 1013970581 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131036 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 02122018 | 01302018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01312018 | 2018-01-31T15:08:54+00:00 |  | 000091103-01 | Marilyn | Strouse | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01252018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131093 | I4891 | Unspecified atrial fibrillation | ICD10 | 02122018 | 01252018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T09:25:02+00:00 |  | 000082051-01 | Richard | Young | S DAYTON ACUTE CARE CNSL | 947829 | KIRTI | SANDERS | 1700227113 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201022 | R42, Z7901 | Long term (current) use of anticoagulants | ICD10 | 02122018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T18:10:19+00:00 |  | 000024040-01 | Ariel | Etgen | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202014 | I509 | Heart failure, unspecified | ICD10 | 02122018 | 02012018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02062018 | 2018-02-06T11:26:03+00:00 |  | 000086079-01 | Jane | Oakleaf | NEUROSCIENCE CENTER | 947785 | SHRADDHA | MAINALI | 1972733657 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02032018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206028 | I619, I161 | HYPERTENSIVE EMERGENCY | ICD10 | 02122018 | 02032018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02062018 | 2018-02-06T11:01:01+00:00 |  | 000034055-01 | PAUL | KRAUSS | SOUND INPATIENT PHYS OF | 941188 | ABDAL R | ALHYARI | 1205051570 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | ACO - Cardiology | Inpatient | 02052018 | 02092018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206036 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 02122018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02072018 | 2018-02-07T08:43:26+00:00 |  | 000101519-01 | James | Wilson | OSU INTERNAL MED LLC | 909117 | MATTHEW C | EXLINE | 1518918283 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207073 | I469 | Cardiac arrest, cause unspecified | ICD10 | 02122018 | 02062018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01152018 | 2018-01-15T16:12:11+00:00 |  | 000064501-01 | JANET | HUFFER | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115158 | I639 | Cerebral infarction, unspecified | ICD10 | 02122018 | 01182018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 01242018 | 2018-01-24T14:09:57+00:00 |  | 000013367-01 | BONNIE | OOTEN | AKHTAR, YASMIN | 919545 | YASMIN | AKHTAR | 1336389592 | RAULERSON HOSPITAL | 934709 | 1215974134 | RAULERSON HOSPITAL | 1215974134 | Inpatient | IP | Concurrent Review | CONC |  | RAULERSON HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 01312018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124060 | D649, R0602, R531 | Weakness | ICD10 | 02122018 | 01242018 | 01312018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01252018 | 2018-01-25T09:11:28+00:00 |  | 000033384-01 | BARBARA | STOVER | COLON & RECTAL SURG INC | 934919 | CHARLES W | TAYLOR III | 1861492969 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125028 | Z432 | Encounter for attention to ileostomy | ICD10 | 02122018 | 02062018 | 02092018 | 44625 | CLSR ENTEROSTOMY C RSCTN & ANAST. | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 01292018 | 2018-01-29T16:29:05+00:00 |  | 000106587-01 | Christopher | Jarrells | S DAYTON ACUTE CARE CNSL | 932325 | SIVAPRASAD | NALLURI | 1558619668 | INDU & RAJ SOIN MEDICAL CENTER | 919117 | 1760764849 | INDU & RAJ SOIN MEDICAL CENTER | 1760764849 | Inpatient | IP | Concurrent Review | CONC |  | INDU & RAJ SOIN MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01282018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130009 | A419, R0902, R748 | Abnormal levels of other serum enzymes | ICD10 | 02122018 | 01282018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 11.0 |
| 01302018 | 2018-01-30T09:52:33+00:00 |  | 000083003-01 | Naomi | Salyer | MOUNT CARMEL HLTH SYS | 936924 | CHARLES R | HOLDEN | 1093713133 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02092018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130083 | I6522 | Occlusion and stenosis of left carotid artery | ICD10 | 02122018 | 02092018 | 02102018 | 35301 | THROMBOENDARTERECTOMY,W/WO PATCH;CAROT,VERTEB,SUBCL(BY NECK INCISION) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02012018 | 2018-02-01T11:48:50+00:00 |  | 000072840-01 | Ruth | Dunn | SPRINGFIELD HEART SURGEO | 948857 | SOUMYA | NERAVETLA | 1558511865 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02072018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201051 | C3490 | Malignant neoplasm of unsp part of unsp bronchus or lung | ICD10 | 02122018 | 02072018 | 02092018 | 32669 | THORACOSCOPY REMOVE SEGMENT | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 02012018 | 2018-02-01T14:51:33+00:00 |  | 000102197-01 | Shirley | Nair | V GEORGE ZOCHOWSKI DO IN | 938553 |  | V GEORGE ZOCHOWSKI DO INC | 1003912403 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201058 | A419, J159 | Unspecified bacterial pneumonia | ICD10 | 02122018 | 01312018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02022018 | 2018-02-02T08:36:38+00:00 |  | 000087866-01 | John | Cramblett | HMP OF FRANKLIN CTY LTD | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02012018 | 02032018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202016 | J80, R4182 | Altered mental status, unspecified | ICD10 | 02122018 | 02012018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02022018 | 2018-02-02T15:34:05+00:00 |  | 000052286-01 | KATHLEEN | SCOTT | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202061 | I509 | Heart failure, unspecified | ICD10 | 02122018 | 01312018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 02032018 | 2018-02-03T15:21:13+00:00 |  | 000001411-01 | RUSSELL | INTERRANTE | CEN OH PRIMARY CARE SPEC | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205019 | N179 | Acute kidney failure, unspecified | ICD10 | 02122018 | 02022018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 02052018 | 2018-02-05T14:22:59+00:00 |  | 000011156-01 | HAROLD | FISHER | JOINT IMPLANT SURGEONS | 904903 | ADOLPH V | LOMBARDI JR | 1700879186 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02082018 | 02092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205121 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 02122018 | 02082018 | 02092018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02062018 | 2018-02-06T07:42:51+00:00 |  | 000116889-01 | ROBERT | MORELAND | ORTHOPEDIC ONE INC | 907140 | ROBERT T | GORSLINE | 1003983743 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206006 | E11621, I739 | Peripheral vascular disease, unspecified | ICD10 | 02122018 | 02082018 | 02092018 | 27880 | AMPUTATION LEG THRU TIBIA & FIBULA | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02062018 | 2018-02-06T13:43:10+00:00 |  | 000026513-01 | SPYROS | SEVIS | GENESIS MEDICAL GRP LLC | 927692 | SHAHED | HASNAT | 1770915951 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02052018 | 02102018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206057 | J189 | Pneumonia, unspecified organism | ICD10 | 02122018 | 02052018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02062018 | 2018-02-06T15:02:21+00:00 |  | 000038665-01 | PATSY | MCKENZIE | MOUNT CARMEL HLTH PRVDRS | 947622 | WILLIAM R | WALKER | 1427390905 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 02052018 | 02092018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206071 | J9600 | Acute respiratory failure, unsp w hypoxia or hypercapnia | ICD10 | 02122018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02072018 | 2018-02-07T15:28:07+00:00 |  | 000006880-01 | DARWIN | PORT | DOCTORS HOSPITAL | 903408 |  | DOCTORS HOSPITAL | 1972535052 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02072018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180207066 | E875, R296 | Repeated falls | ICD10 | 02122018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02082018 | 2018-02-08T13:15:01+00:00 |  | 000049109-01 | RITA | JONES | HOSPITALIST MEDICINE PHY | 911569 | PHILIP S | GHALLY | 1235399031 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 02072018 | 02102018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208068 | I509, R0902 | Hypoxemia | ICD10 | 02122018 | 02072018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02092018 | 2018-02-09T09:28:57+00:00 |  | 000105523-01 | Paul | Hansen | NORTH CEN OHIO FAM CARE | 908207 | ROY R | BROWN JR | 1417990565 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02092018 | 02102018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212010 | Z9079 | Acquired absence of other genital organ(s) | ICD10 | 02122018 | 02092018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01192018 | 2018-01-19T10:46:16+00:00 |  | 000098112-01 | Marie | Mann | THE CHRIST HOSPITAL EDUC | 924204 | DOUGLAS H | BAUMAN | 1285759449 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119030 | A419, R6521 | Severe sepsis with septic shock | ICD10 | 02122018 | 01182018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 01232018 | 2018-01-23T09:49:28+00:00 |  | 000021510-01 | GENEVA | WALKER | ORTHOPEDIC ONE INC | 903221 | BRIAN L | DAVISON | 1891778304 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02072018 | 02082018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180123071 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02122018 | 02072018 | 02082018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 01242018 | 2018-01-24T14:44:11+00:00 |  | 000065336-01 | Shirley | Moreno | PROFESSIONAL DIAGNOSTIC | 932927 | CHRISTOPHER M | WRIGHT | 1427041276 | SOUTHERN OH MEDICAL CTR | 923712 | 1053342816 | SOUTHERN OH MEDICAL CENTER REHAB | 1982635744 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | SOUTHERN OH MEDICAL CENTER REHAB | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01242018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124066 | F0281 | Dementia in oth diseases classd elswhr w behavioral disturb | ICD10 | 02122018 | 01242018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 14.0 |
| 01262018 | 2018-01-26T08:08:54+00:00 |  | 000095655-01 | Scott | Stuart | DUBLIN SPRINGS LLC | 923693 |  | COLUMBUS SPRINGS DUBLIN | 1164798708 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01242018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180126006 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 02122018 | 01242018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01312018 | 2018-01-31T12:55:18+00:00 |  | 000051579-01 | DON | DAY | OH HSP FOR PSYCHIATRY | 933409 | KUNAL B | TANK | 1437479235 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131019 | F332 | Major depressv disorder, recurrent severe w/o psych features | ICD10 | 02122018 | 01302018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01312018 | 2018-01-31T10:04:19+00:00 |  | 000048781-01 | MAGGIE | KELLY | MOUNT CARMEL HLTH PRVDRS | 907164 | PATRICK R | WELLS | 1013945641 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02122018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131037 | R911 | Solitary pulmonary nodule | ICD10 | 02122018 | 02082018 | 02122018 | 32097, 32480 | TOTAL-SUBTOTAL LOBECTOMY | CPT | 1, 1 | 1, 1 | Approved, Approved | 5, 5 | CPT | C4 |  |  |  | 4.0 |
| 01312018 | 2018-01-31T11:24:05+00:00 |  | 000098682-01 | LOUISE | ZUREK | LICKING MEM INPATIENT ME | 909498 | ABUL | AHSAN | 1376711044 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01302018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131052 | A419 | Sepsis, unspecified organism | ICD10 | 02122018 | 01302018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02022018 | 2018-02-02T11:15:17+00:00 |  | 000111194-01 | James | Kindelberger | GENESIS MEDICAL GRP LLC | 924382 | DAWIT | WUBISHET | 1083971311 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02022018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202029 | K8510 | BILIARY ACUTE PANCREATITIS WITHOUT NECROSIS OR INFECTION | ICD10 | 02122018 | 02022018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 02022018 | 2018-02-02T15:35:27+00:00 |  | 000018487-01 | RUBY | BUTT | RIVERSIDE SURG ASSOC INC | 915688 | KWANG | SUH | 1679631170 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02022018 | 02082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202057 | S81012A | Laceration without foreign body, left knee, init encntr | ICD10 | 02122018 | 02022018 | 02082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02052018 | 2018-02-05T12:08:05+00:00 |  | 000082051-01 | Richard | Young | S DAYTON ACUTE CARE CNSL | 901325 | SHAILENDRA | SAWH | 1518952605 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02022018 | 02072018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205066 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 02122018 | 02022018 | 02072018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02052018 | 2018-02-05T14:14:35+00:00 |  | 000106118-01 | Mary | Haney | MIAMI VALLEY HSPISTS GRP | 932836 | JOCELYN B | WATSON | 1881866887 | MIAMI VALLEY HOSPITAL | 936428 | 1073688354 | MIAMI VALLEY HOSPITAL | 1073688354 | Inpatient | IP | Concurrent Review | CONC |  | MIAMI VALLEY HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02032018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205092 | S42409A | Unsp fracture of lower end of unsp humerus, init for clos fx | ICD10 | 02122018 | 02032018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02052018 | 2018-02-05T13:06:32+00:00 |  | 000113636-01 | Larry | Tedrick | SOUND INPATIENT PHYS OF | 909497 | REAGAN | NORGAN | 1487877999 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02032018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205093 | R4182, R569 | Unspecified convulsions | ICD10 | 02122018 | 02032018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 02062018 | 2018-02-06T09:21:48+00:00 |  | 000108054-01 | Janey | Mohler | COLS INPATIENT CARE INC | 907178 | MARY JENNY | VARUGHESE | 1326207911 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02052018 | 02092018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206027 | J45909 | Unspecified asthma, uncomplicated | ICD10 | 02122018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02062018 | 2018-02-06T11:15:53+00:00 |  | 000076148-01 | Mary Lou | Pinkerton | HHCSI INPATIENT | 939811 | DAVID | WILSON | 1992722581 | MARIETTA MEMORIAL HSP | 936469 | 1215936927 | MARIETTA MEMORIAL HOSPITAL | 1215936927 | Inpatient | IP | Concurrent Review | CONC |  | MARIETTA MEMORIAL HOSPITAL | 02122018 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 02052018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180206034 | K631, K651 | Peritoneal abscess | ICD10 | 02122018 | 02052018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02072018 | 2018-02-07T16:26:24+00:00 |  | 000044319-01 | CHARLOTTE | WALKER | LICKING MEM INPATIENT ME | 916171 | ABDUL K | ELHABYAN | 1104847144 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02062018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208013 | M549, S22059A | Unsp fracture of T5-T6 vertebra, init for clos fx | ICD10 | 02122018 | 02062018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02082018 | 2018-02-08T11:01:02+00:00 |  | 000091501-01 | David | Rieder | ORTHO & NEURO CONSULTS I | 942983 | RYAN M | PALMER | 1912134487 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02122018 | Approved | MediGold Essential Care | Fax | EIS | Inpatient | 02082018 | 02092018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208041 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02122018 | 02082018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T09:43:44+00:00 |  | 000027134-01 | MARTIN | BARLAGE | RIVERSIDE METHODIST HSP | 936400 |  | RIVERSIDE METHODIST HOSPITAL | 1467484972 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02092018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208047 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 02122018 | 02082018 | 02092018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02082018 | 2018-02-08T10:14:39+00:00 |  | 000116771-01 | FLORENCE | BETTINAZZI | INTERNAL MED CARE INC | 932963 | KEVIN | VOLT | 1124319629 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02072018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180208052 | S72115N | Nondisp fx of greater trochanter of l femr, 7thN | ICD10 | 02122018 | 02072018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02092018 | 2018-02-09T09:26:53+00:00 |  | 000102504-01 | Connie | McDaniel | FAYETTE COUNTY MEM HSP 1 | 935806 | DENNIS A | MESKER | 1467446146 | FAYETTE COUNTY MEM HSP 1 | 903662 | 1508978677 | FAYETTE COUNTY MEMORIAL HOSPITAL | 1508978677 | Inpatient | IP | Concurrent Review | CONC |  | FAYETTE COUNTY MEMORIAL HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209017 | N179, R4182 | Altered mental status, unspecified | ICD10 | 02122018 | 02082018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 02092018 | 2018-02-09T10:52:27+00:00 |  | 000068417-01 | PAUL | BUCHHOLTZ | SOUND INPATIENT PHYS OF | 914484 | KANAN AKHIL | PATEL | 1205096195 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02122018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02082018 | 02102018 | Standard | Cardiology - $11,288 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209041 | I213 | ST elevation (STEMI) myocardial infarction of unsp site | ICD10 | 02122018 | 02082018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02092018 | 2018-02-09T16:09:18+00:00 |  | 000107748-01 | Randal | Rodichok | SOUND INPATIENT PHYS OF | 924270 | SILESHI A | BELAY | 1962616631 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02082018 | 02102018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180209083 | I639 | Cerebral infarction, unspecified | ICD10 | 02122018 | 02082018 | 02102018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02102018 | 2018-02-10T11:02:25+00:00 |  | 000039753-01 | DONALD | AYERS | CEN OH PRIMARY CARE SPEC | 936211 | BOYD D | CURTIS | 1255316964 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02122018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02092018 | 02112018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180212012 | J159 | Unspecified bacterial pneumonia | ICD10 | 02122018 | 02092018 | 02112018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
