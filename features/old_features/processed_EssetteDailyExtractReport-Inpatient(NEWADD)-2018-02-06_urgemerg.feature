Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-06_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2018-02-06_URGEMERG
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
| 01172018 | 2018-01-17T14:57:04+00:00 |  | 000055867-01 | ROY | ROSS JR | MOUNT CARMEL REHABILITAT | 951409 |  | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | MOUNT CARMEL REHABILITAT | 951409 | 1497202485 | MOUNT CARMEL REHABILITATION HOSPITAL | 1497202485 | Inpatient Rehabilitation | IP REHAB | Concurrent Review | CONC |  | MOUNT CARMEL REHABILITATION HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01212018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180117063 | I639 | Cerebral infarction, unspecified | ICD10 | 02062018 | 01212018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01252018 | 2018-01-25T09:30:51+00:00 |  | 000057444-01 | MARIAN | ALLEN | ORTHOPEDIC ONE INC | 914385 | JOHN A | JOHANSEN | 1205087277 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02022018 | 02032018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180125033 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 02062018 | 02022018 | 02032018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 2 | CPT | C4 |  |  |  | 1.0 |
| 02042018 | 2018-02-04T14:15:18+00:00 |  | 000073064-01 | Charles | Bush | COLS INPATIENT CARE INC | 927490 | LUSINE A | ABRAHAMYAN | 1659683779 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 02032018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180205042 | R040 | Epistaxis | ICD10 | 02062018 | 02032018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01112018 | 2018-01-11T12:08:43+00:00 |  | 000111390-01 | SHERRY | MILLS | RESILIENCY & WELLNESS CO | 946613 | DELANEY | SMITH | 1942324728 | DUBLIN SPRINGS LLC | 923693 | 1164798708 | COLUMBUS SPRINGS DUBLIN | 1164798708 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS SPRINGS DUBLIN | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01112018 | 01242018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111055 | F312 | Bipolar disord, crnt episode manic severe w psych features | ICD10 | 02062018 | 01112018 | 01242018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01112018 | 2018-01-11T12:45:22+00:00 |  | 000115220-01 | Thomas | Collins | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01102018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180111058 | I609 | Nontraumatic subarachnoid hemorrhage, unspecified | ICD10 | 02062018 | 01102018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 26.0 |
| 01152018 | 2018-01-15T09:37:06+00:00 |  | 000102381-01 | AMANDA | BOWERS | ADENA MEDICAL GROUP LLC | 907335 | ROWNAK | AHMED | 1952518334 | COLUMBUS BEHAVIORAL HEAL | 951769 | 1477914943 | COLUMBUS BEHAVIORAL HEALTH LLC | 1477914943 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | COLUMBUS BEHAVIORAL HEALTH LLC | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01142018 | 01192018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180115055 | F1220, F314, F603 | Borderline personality disorder | ICD10 | 02062018 | 01142018 | 01192018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01292018 | 2018-01-29T08:26:01+00:00 |  | 000092546-01 | Kathleen | Worthing | HOSPITALIST MEDICINE PHY | 949490 | AMY R | HURST | 1326487885 | MERCY WEST HOSPITAL | 927002 | 1912007931 | MERCY WEST HOSPITAL | 1912007931 | Inpatient | IP | Concurrent Review | CONC |  | MERCY WEST HOSPITAL | 02062018 | Approved | MediGold Southwest OH Essential Care | Fax | Inpatient | Inpatient | 01282018 | 02042018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129031 | J181 | Lobar pneumonia, unspecified organism | ICD10 | 02062018 | 01282018 | 02042018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 02012018 | 2018-02-01T07:16:45+00:00 |  | 000107568-01 | JAMES | BOLAND | MERCY HEALTH PHYSICIANS | 923326 | ERICH | WALDER | 1023032927 | THE JEWISH HOSPITAL | 916862 | 1336478163 | THE JEWISH HOSPITAL | 1336478163 | Inpatient | IP | Concurrent Review | CONC |  | THE JEWISH HOSPITAL | 02062018 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 01312018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201002 | C7931 | Secondary malignant neoplasm of brain | ICD10 | 02062018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01312018 | 2018-01-31T17:37:51+00:00 |  | 000070470-01 | Patty | Darby | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201012 | D469, R55 | Syncope and collapse | ICD10 | 02062018 | 01302018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 12292017 | 2017-12-29T14:16:25+00:00 |  | 000096323-01 | Hanna | Brown | ORTHOPEDIC ONE INC | 936932 | CHRISTOPHER | HOLZAEPFEL | 1770695199 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01312018 | 02022018 | Standard |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A171229074 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 02062018 | 01312018 | 02022018 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 01092018 | 2018-01-09T09:53:56+00:00 |  | 000059480-01 | DAVID | PENWELL | JOINT IMPLANT SURGEONS | 910873 | MICHAEL J | MORRIS | 1497899223 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 920176 | 1770668568 | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 1770668568 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL NEW ALBANY SURGICAL HSP | 02062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01112018 | 01122018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180109097 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 02062018 | 01112018 | 01122018 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 0 | 1 |  | 2 | CPT | C4 |  |  |  | 1.0 |
| 01192018 | 2018-01-19T14:58:31+00:00 |  | 000006889-01 | MARTHA | ADAMS | SOUND INPATIENT PHYS OF | 939956 | AMY | WANG | 1992949150 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01182018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180119069 | I729 | Aneurysm of unspecified site | ICD10 | 02062018 | 01182018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 15.0 |
| 01242018 | 2018-01-24T09:42:13+00:00 |  | 000052912-01 | James | Spires | FAIRFIELD HLTHCARE PROFS | 947374 | ANOKH | KONDRU | 1003158031 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01242018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124024 | N390, R0602, R109 | Unspecified abdominal pain | ICD10 | 02062018 | 01242018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 12.0 |
| 01242018 | 2018-01-24T11:03:38+00:00 |  | 000076443-01 | Barbara | Trigg | HOSPITALIST MEDICINE PHY | 929690 | KIRAN VIJAY | JAYANTI | 1003112657 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01232018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180124034 | I639 | Cerebral infarction, unspecified | ICD10 | 02062018 | 01232018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 01292018 | 2018-01-29T09:48:14+00:00 |  | 000054527-01 | ROY | MEADE | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01282018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129104 | R296, R4182 | Altered mental status, unspecified | ICD10 | 02062018 | 01282018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 01292018 | 2018-01-29T15:00:44+00:00 |  | 000114467-01 | ANGELINE | BOGGS | MOUNT CARMEL HLTH SYS | 925995 | JEFFREY R | BACKES | 1457689101 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 01302018 | 02032018 | Expedited |  | No |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180129123 | Z96612 | Presence of left artificial shoulder joint | ICD10 | 02062018 | 01302018 | 02032018 | 23473 | REVIS RECONST SHOULDER JOINT | CPT | 1 | 1 | Approved | 5 | CPT | C4 |  |  |  | 4.0 |
| 01302018 | 2018-01-30T08:52:59+00:00 |  | 000026316-01 | Wilbur | Erlenbach | OSU HOSPITAL | 936446 |  | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130024 | N179 | Acute kidney failure, unspecified | ICD10 | 02062018 | 01292018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01292018 | 2018-01-29T12:47:38+00:00 |  | 000087845-01 | Larry | Taylor | S DAYTON ACUTE CARE CNSL | 920484 | SARAH M | HEDRICK | 1043371156 | KETTERING MEDICAL CENTER | 936443 | 1043233984 | KETTERING MEDICAL CENTER | 1043233984 | Inpatient | IP | Concurrent Review | CONC |  | KETTERING MEDICAL CENTER | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01272018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130040 | R040, R570 | Cardiogenic shock | ICD10 | 02062018 | 01272018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 9.0 |
| 01302018 | 2018-01-30T11:46:55+00:00 |  | 000082602-01 | Robert | Frazier III | OHIOHEALTH PHYS GRP | 934915 | VIKRAM | TAMASKAR | 1891735817 | DOCTORS HOSPITAL | 903408 | 1972535052 | DOCTORS HOSPITAL | 1972535052 | Inpatient | IP | Concurrent Review | CONC |  | DOCTORS HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130094 | A419 | Sepsis, unspecified organism | ICD10 | 02062018 | 01292018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01302018 | 2018-01-30T11:50:02+00:00 |  | 000061755-01 | LINDA | WAUGH | OHIOHEALTH PHYS GRP | 914379 | MARK A | RENZ | 1275773061 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180130095 | N179, N189 | Chronic kidney disease, unspecified | ICD10 | 02062018 | 01302018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 01302018 | 2018-01-30T15:19:12+00:00 |  | 000032511-01 | ROBERT | MOUK | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01292018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131014 | K760, K8020 | Calculus of gallbladder w/o cholecystitis w/o obstruction | ICD10 | 02062018 | 01292018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 01302018 | 2018-01-30T14:54:16+00:00 |  | 000091577-01 | Dawn | King | PREMIER HEALTH SPEC INC | 931255 | BABAR | HASAN | 1649266016 | WAYNE HOSPITAL | 936425 | 1184621161 | WAYNE HOSPITAL | 1184621161 | IP Behavioral Health | IP BH | Concurrent Review | CONC |  | WAYNE HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01292018 | 02022018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131016 | F319, F339 | Major depressive disorder, recurrent, unspecified | ICD10 | 02062018 | 01292018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02022018 | 2018-02-02T12:24:25+00:00 |  | 000118366-01 | Robert | Thompson | HMP OF FRANKLIN CTY LTD | 935266 | STEVEN C | BURKS | 1467414060 | BERGER HOSPITAL | 936479 | 1326020447 | BERGER HOSPITAL | 1326020447 | Inpatient | IP | Concurrent Review | CONC |  | BERGER HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02012018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202038 | E872 | Acidosis | ICD10 | 02062018 | 02012018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 02022018 | 2018-02-02T14:12:47+00:00 |  | 000082602-01 | Robert | Frazier III | OSU INTERNAL MED LLC | 922865 | AHMAK M | MOSTAFAVIFAR | 1861669095 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02022018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202044 | L0390, L511 | Stevens-Johnson syndrome | ICD10 | 02062018 | 02022018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 01312018 | 2018-01-31T09:55:52+00:00 |  | 000100253-01 | James | Indiciani | MOUNT CARMEL ST ANNS HOSPITAL | 920157 |  | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01302018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131050 | I959 | Hypotension, unspecified | ICD10 | 02062018 | 01302018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01312018 | 2018-01-31T11:56:08+00:00 |  | 000004066-01 | ROBERT | BOYD | HOSPITALIST MEDICINE PHY | 947310 | KARIM T | ATTIA | 1801139217 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131051 | E870 | Hyperosmolality and hypernatremia | ICD10 | 02062018 | 01302018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 01312018 | 2018-01-31T14:25:50+00:00 |  | 000002434-01 | ROBERT | KAIN | MOUNT CARMEL HLTH SYS | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01312018 | 02022018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131081 | M6281 | Muscle weakness (generalized) | ICD10 | 02062018 | 01312018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 01312018 | 2018-01-31T11:46:09+00:00 |  | 000038168-01 | MONA | BOGGS | OSU HLTH SYSTEM NEUROSUR | 917661 | JAMES B | ELDER | 1427221803 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 01302018 | 02062018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180131104 | I6200 | Nontraumatic subdural hemorrhage, unspecified | ICD10 | 02062018 | 01302018 | 02062018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 02012018 | 2018-02-01T10:21:42+00:00 |  | 000064750-01 | CAROLYN | ELMORE | COLS INPATIENT CARE INC | 917840 | JIGNA N | JANANI | 1023278413 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | ACO - Pulmonary | Inpatient | 01312018 | 02032018 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180201032 | J441 | Chronic obstructive pulmonary disease w (acute) exacerbation | ICD10 | 02062018 | 01312018 | 02032018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  | No child records to display. |  |
| 02022018 | 2018-02-02T10:06:21+00:00 |  | 000063818-01 | DANNY | HARRISON | ORTHOPEDIC ONE INC | 937006 | MERLE L | KENNEDY JR | 1558324160 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 02062018 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 02012018 | 02022018 | Standard |  | Yes |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202027 | S76111A | Strain of right quadriceps muscle, fascia and tendon, init | ICD10 | 02062018 | 02012018 | 02022018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 02022018 | 2018-02-02T13:06:44+00:00 |  | 000064097-01 | RONALD | CUNION | COLS INPATIENT CARE INC | 952223 | SCOTT A | STILES | 1770995672 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 02062018 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 02012018 | 02052018 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A180202046 | R6521 | Severe sepsis with septic shock | ICD10 | 02062018 | 02012018 | 02052018 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
