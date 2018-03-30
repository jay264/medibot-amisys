Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-27_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-03-27_URGEMERG
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
| 03202018 | 2018-03-20T15:46:36+00:00 |  | 000078610-01 | Thomas | Ellinger | SOUND INPATIENT PHYS OF | 942987 | SHASHI YELLAPP | KUMAR | 1831452887 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272018 | Approved | MediGold Classic Preferred | Fax | ACO - CHF | Inpatient | 03192018 | 03262018 | Standard | CHF - $8,294 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321016 | I509 | Heart failure, unspecified | ICD10 | 03272018 | 03192018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03182018 | 2018-03-18T16:22:55+00:00 |  | 000038464-01 | JEAN | COMBS | COLS INPATIENT CARE INC | 935779 | JEFFREY B | THURSTON | 1891773248 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03172018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319042 | I480, I5020 | Unspecified systolic (congestive) heart failure | ICD10 | 03272018 | 03172018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03242018 | 2018-03-24T16:23:28+00:00 |  | 000084378-01 | John | Adams | MOUNT CARMEL EAST HOSPITAL | 936416 |  | MOUNT CARMEL EAST HOSPITAL | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03232018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326024 | I200 | Unstable angina | ICD10 | 03272018 | 03232018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03082018 | 2018-03-08T15:01:12+00:00 |  | 000032161-01 | RICHARD | VANORDER | MOUNT CARMEL HLTH SYS | 909493 | MARA E | SHEEHAN | 1376796581 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03272018 | Approved | TRINITY HEALTH | Reports | Inpatient | Inpatient | 03062018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308051 | R188 | Other ascites | ICD10 | 03272018 | 03062018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 20.0 |
| 03152018 | 2018-03-15T13:53:11+00:00 |  | 000115880-01 | Ross | Martin | MERCY ANDERSON REHABILIT | 950119 |  | MERCY ANDERSON REHABILITATION UNIT | 1245789981 | MERCY ANDERSON REHABILIT | 950119 | 1245789981 | MERCY ANDERSON REHABILITATION UNIT | 1245789981 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MERCY ANDERSON REHABILITATION UNIT | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03192018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180315058 | D4989 | Neoplasm of unspecified behavior of other specified sites | ICD10 | 03272018 | 03192018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03192018 | 2018-03-19T09:53:24+00:00 |  | 000045320-01 | Heather | Watkins | VIKRAM VAKA | 953415 | VIKRAM | VAKA | 1134415458 | TWIN VALLEY BEHAVIORAL HEALTHCARE-CO | 901721 | 1710951835 | TWIN VALLEY BEHAVIORAL HEALTHCARE-CO | 1710951835 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | TWIN VALLEY BEHAVIORAL HEALTHCARE-CO | 03272018 | Denied | MediGold Essential Care | Fax | Member Not Eligible | Inpatient | 03272018 | 03282018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Denied | A180319010 | F209 | Schizophrenia, unspecified | ICD10 | 03272018 | 03162018 |  | 99223, 90791, 99231, 99232, 99233, 99238 | HOSPITAL VISIT - SUBSEQUENT - DISCHARGE SERVICES | CPT | 0, 0, 0, 0, 0, 0 | 1, 1, 1, 1, 1, 1 | , , , , ,  | 0, 0, 0, 0, 0, 0 | CPT | C4 |  |  | No child records to display. |  |
| 03032018 | 2018-03-03T00:23:58+00:00 |  | 000069899-01 | Russell | Karlen III | DUBLIN SPRINGS PHYSICIAN | 915941 | STEPHEN M | PICKSTONE | 1578512513 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03022018 | 03202018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180305038 | F315 | Bipolar disord, crnt epsd depress, severe, w psych features | ICD10 | 03272018 | 03022018 | 03202018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03062018 | 2018-03-06T07:29:01+00:00 |  | 000100063-01 | Louise | Sandlin | HOSPITALIST MEDICINE PHY | 947866 | KALYN M | JOLIVETTE | 1447693239 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Secondary Only | Inpatient | 03052018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306053 | E876, R531, R5381 | Other malaise | ICD10 | 03272018 | 03052018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03062018 | 2018-03-06T12:46:47+00:00 |  | 000086477-01 | Becky | Cannaday | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03082018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180306078 | M7981 | Nontraumatic hematoma of soft tissue | ICD10 | 03272018 | 03082018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 21.0 |
| 03072018 | 2018-03-07T16:07:25+00:00 |  | 000105289-01 | Harry | Doughman | MERCY HEALTH PHYSICIANS | 920787 | TODD M | BAYER | 1356343008 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03152018 | 03172018 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308001 | I739 | Peripheral vascular disease, unspecified | ICD10 | 03272018 | 03152018 | 03172018 | 35556 | BYPASS GR, VN, FEMORAL-POPLITEAL | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 03082018 | 2018-03-08T15:42:52+00:00 |  | 000087754-01 | Roy | Gulasa | ALLIANCE PHYSICIANS INC | 931507 | RICHARD J | GORMAN JR | 1235475476 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03072018 | 03082018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180308070 | M4802 | Spinal stenosis, cervical region | ICD10 | 03272018 | 03072018 | 03082018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03122018 | 2018-03-12T12:21:45+00:00 |  | 000049346-01 | SANDRA | JONES | ORTHOPEDIC ONE INC | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03272018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03232018 | 03242018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312046 | M19011 | Primary osteoarthritis, right shoulder | ICD10 | 03272018 | 03232018 | 03242018 | 23472 | ARTRPLASTY C GLENOID& HUM PROS REP | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 03122018 | 2018-03-12T09:50:09+00:00 |  | 000054262-01 | BOYD | ARLEDGE | OSU UROLOGY LLC | 943281 | FARA M | BELLOWS | 1083935118 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03112018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312068 | I2510, R4182 | Altered mental status, unspecified | ICD10 | 03272018 | 03112018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03132018 | 2018-03-13T15:29:20+00:00 |  | 000100959-01 | Carol | Moorehead | RIVERSIDE RAD ASSOC | 926929 | NIRAV A | VORA | 1033254636 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03122018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180313092 | I639 | Cerebral infarction, unspecified | ICD10 | 03272018 | 03122018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03142018 | 2018-03-14T08:27:58+00:00 |  | 000097263-01 | Jerl | Wagner | ACCESS HLTH CARE PHYS LC | 940141 | JOSEPH C | WILLIAMS | 1134148497 | MERCY HOSPITAL ANDERSON | 939409 | 1235239211 | MERCY HOSPITAL ANDERSON | 1235239211 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL ANDERSON | 03272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03132018 | 03162018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314017 | E860, N3000 | Acute cystitis without hematuria | ICD10 | 03272018 | 03132018 | 03162018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03142018 | 2018-03-14T09:58:12+00:00 |  | 000096342-01 | Jannie | Byndon | SOUND KENWOOD HSPISTS OF | 911083 | PARAS S | PATEL | 1295973766 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03142018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314031 | K5669 | Other intestinal obstruction | ICD10 | 03272018 | 03142018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03162018 | 2018-03-16T13:30:56+00:00 |  | 000116753-01 | Betty | Rogers | SELBY GENERAL HOSPTIAL INPAT REHAB | 942971 |  | SELBY GENERAL HOSPTIAL INPAT REHAB | 1497135412 | SELBY GENERAL HOSPTIAL INPAT REHAB | 942971 | 1497135412 | SELBY GENERAL HOSPTIAL INPAT REHAB | 1497135412 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | SELBY GENERAL HOSPTIAL INPAT REHAB | 03272018 | Approved | MediGold Southeast OH Essential Care | Phone | Inpatient | Inpatient | 03172018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180316045 | I639 | Cerebral infarction, unspecified | ICD10 | 03272018 | 03172018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 03182018 | 2018-03-18T11:00:49+00:00 |  | 000086761-01 | Dale | Leonard | KALPANA VISHNUPAD LLC | 907044 | KALPANA K | VISHNUPAD | 1598755662 | HAVEN BEHAVIORAL SRVS OF | 927026 | 1831460229 | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 1831460229 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | HAVEN BEHAVIORAL SRVS OF DAYTON LLC | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03172018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319018 | F29 | Unsp psychosis not due to a substance or known physiol cond | ICD10 | 03272018 | 03172018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 03182018 | 2018-03-18T18:56:47+00:00 |  | 000020392-01 | BECKY | HADEN | FAIRFIELD HLTHCARE PROFS | 928616 | JEFFREY | PEARCH | 1831381110 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03162018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319044 | F251 | Schizoaffective disorder, depressive type | ICD10 | 03272018 | 03162018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 03192018 | 2018-03-19T13:26:00+00:00 |  | 000108361-01 | Mary | Salamay | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03172018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180319075 | I214 | Non-ST elevation (NSTEMI) myocardial infarction | ICD10 | 03272018 | 03172018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03212018 | 2018-03-21T07:26:56+00:00 |  | 000086903-01 | Leonard | Wakeman | MERCY WEST HOSPITAL | 927002 |  | MERCY WEST HOSPITAL | 1912007931 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321026 | S72102A | Unsp trochanteric fracture of left femur, init for clos fx | ICD10 | 03272018 | 03202018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03212018 | 2018-03-21T08:33:45+00:00 |  | 000004461-01 | DONNA | LAMA | FAIRFIELD HLTHCARE PROFS | 937329 | DOUGLAS A | POPE | 1093786857 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321038 | R262 | Difficulty in walking, not elsewhere classified | ICD10 | 03272018 | 03202018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03222018 | 2018-03-22T13:47:54+00:00 |  | 000118009-01 | Samuel | Styer | FLORIDA HOSPITAL MEM | 915629 |  | FLORIDA HOSPITAL MEMORIAL | 1063426823 | FLORIDA HOSPITAL MEM | 915629 | 1063426823 | FLORIDA HOSPITAL MEMORIAL | 1063426823 | Inpatient | IP | Concurrent Review | CONC |  | FLORIDA HOSPITAL MEMORIAL | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03212018 | 03242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322039 | J189 | Pneumonia, unspecified organism | ICD10 | 03272018 | 03212018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03122018 | 2018-03-12T10:01:30+00:00 |  | 000093679-01 | James | Sheridan | OSU INTERNAL MED LLC | 948823 | JONATHAN E | BRAMMER | 1578897195 | JAMES CANCER HOSPITAL | 936501 | 1124127683 | JAMES CANCER HOSPITAL | 1124127683 | Inpatient | IP | Concurrent Review | CONC |  | JAMES CANCER HOSPITAL | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03122018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180312073 | C8330 | Diffuse large B-cell lymphoma, unspecified site | ICD10 | 03272018 | 03122018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03142018 | 2018-03-14T09:51:11+00:00 |  | 000098019-01 | Harold | Lanter | MERCY HEALTH PHYSICIANS | 943049 | CHRISTOPHER S | RIFFEL | 1104170273 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 03272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03132018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180314026 | E0810, K769, K869, K920 | Hematemesis | ICD10 | 03272018 | 03132018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03202018 | 2018-03-20T07:57:01+00:00 |  | 000116711-01 | DAVID | BRADFORD | HOSPITALIST MEDICINE PHY | 932916 | SENAI | NEGASSI | 1255604609 | MERCY HOSPITAL FAIRFIELD | 936431 | 1467552471 | MERCY HOSPITAL FAIRFIELD | 1467552471 | Inpatient | IP | Concurrent Review | CONC |  | MERCY HOSPITAL FAIRFIELD | 03272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03192018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180320030 | I509, R079 | Chest pain, unspecified | ICD10 | 03272018 | 03192018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03202018 | 2018-03-20T15:34:13+00:00 |  | 000102522-01 | Larry | Fouty | GRANDVIEW HOSPITAL & SOU | 903114 | KEVIN M | REID | 1073514709 | GRANDVIEW & SOUTHVIEW HO | 936462 | 1053339507 | GRANDVIEW MEDICAL CENTER | 1053339507 | Inpatient | IP | Concurrent Review | CONC |  | GRANDVIEW MEDICAL CENTER | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03192018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321014 | R079 | Chest pain, unspecified | ICD10 | 03272018 | 03192018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03212018 | 2018-03-21T09:25:45+00:00 |  | 000082463-01 | Janice | Spires | LICKING MEM HLTH PROF | 903614 | BASSAM | KRET | 1104824960 | LICKING MEMORIAL HOSPITAL | 936497 | 1568446755 | LICKING MEMORIAL HOSPITAL | 1568446755 | Inpatient | IP | Concurrent Review | CONC |  | LICKING MEMORIAL HOSPITAL | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03232018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321041 | S72143A | Displaced intertrochanteric fracture of unsp femur, init | ICD10 | 03272018 | 03202018 | 03232018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 03212018 | 2018-03-21T12:02:23+00:00 |  | 000051987-01 | PATRICIA | STREBER | MOUNT CARMEL WEST PSYCHI | 917964 | AMBER R | BUSSER | 1861690018 | MOUNT CARMEL WEST PSYCHI | 902251 | 1508941014 | MOUNT CARMEL MEDICAL CENTER PSYCH | 1508941014 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER PSYCH | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03272018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321059 | F319 | Bipolar disorder, unspecified | ICD10 | 03272018 | 03202018 | 03272018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 03212018 | 2018-03-21T13:18:11+00:00 |  | 000047606-01 | MERLE | KNOLL | MOUNT CARMEL MEDICAL CTR | 920184 |  | MOUNT CARMEL MEDICAL CENTER | 1710067376 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03202018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321079 | M4850XA | Collapsed vertebra, NEC, site unsp, init | ICD10 | 03272018 | 03202018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 03212018 | 2018-03-21T14:16:44+00:00 |  | 000112775-01 | John | Adkins | KHN IP MED | 932251 | SUBBARAJU | BUDHARAJU | 1184915050 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03202018 | 03212018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180321081 | E871, R040 | Epistaxis | ICD10 | 03272018 | 03202018 | 03212018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03222018 | 2018-03-22T12:28:20+00:00 |  | 000112121-01 | Vicky | Bowers | MEMORIAL HSP UNION CNTY | 937223 | PRASANNA K | MUNIYAPPA | 1689667594 | MEMORIAL HOSPITAL OF UNION COUNTY | 936449 | 1720159338 | MEMORIAL HOSPITAL OF UNION COUNTY | 1720159338 | Inpatient | IP | Concurrent Review | CONC |  | MEMORIAL HOSPITAL OF UNION COUNTY | 03272018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 03212018 | 03222018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180322038 | I509, R740, I160 | HYPERTENSIVE URGENCY | ICD10 | 03272018 | 03212018 | 03222018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 03232018 | 2018-03-23T14:38:10+00:00 |  | 000084646-01 | William | Spady | PULMONARY MED OF DAYTON | 947283 | RAVI Y | DESAI | 1629399035 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 03272018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180323048 | K922 | Gastrointestinal hemorrhage, unspecified | ICD10 | 03272018 | 03222018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03232018 | 2018-03-23T16:09:24+00:00 |  | 000093034-01 | Katherine | Smith | HOSPITALIST MEDICINE PHY | 925145 | NGOZI | NWANKWO | 1477680783 | WEST CHESTER MEDICAL CENTER | 911775 | 1851549273 | WEST CHESTER MEDICAL CENTER | 1851549273 | Inpatient | IP | Concurrent Review | CONC |  | WEST CHESTER MEDICAL CENTER | 03272018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 03222018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326007 | J111, J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 03272018 | 03222018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 03232018 | 2018-03-23T19:56:14+00:00 |  | 000097504-01 | ROGER | MAYLE | HOSPITALIST MEDICINE PHY | 922163 | ADEDOYIN O | ADETORO | 1215260930 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 03272018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 03222018 | 03242018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326010 | K611 | Rectal abscess | ICD10 | 03272018 | 03222018 | 03242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 03252018 | 2018-03-25T08:25:44+00:00 |  | 000083717-01 | Stuart | Douglass | NORTH FLORIDA REG MED CTR | 934691 |  | NORTH FLORIDA REG MED CTR | 1174579155 | NORTH FLORIDA REG MED CTR | 934691 | 1174579155 | NORTH FLORIDA REG MED CTR | 1174579155 | Inpatient | IP | Concurrent Review | CONC |  | NORTH FLORIDA REG MED CTR | 03272018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 03252018 | 03262018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180326012 | I10 | Essential (primary) hypertension | ICD10 | 03272018 | 03252018 | 03262018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
