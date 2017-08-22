Feature: Process Essette Extract EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-18_thru_2017-08-20_URGEMERG
	As an auth entering person
	I want the ability to add all types of authorizations
	so that I know that information is entered correctly

Scenario Outline: EssetteDailyExtractReport-Inpatient(NEWADD)-2017-08-18_thru_2017-08-20_URGEMERG
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
	And I press "Control + N"
	And the test pauses for "3" seconds
	And in the "remarks_maintenance" page I enter "UM" into the "sub_type" image
	And in the "remarks_maintenance" page I enter "Authorization Numbers" into the "remark_summary" image
	And in the "remarks_maintenance" page I enter "<auth_number>" into the "remark_text_1" image
	And I press "Tab"
	And I enter the "<other_reference_#>" text
	And in the "remarks_maintenance" page I click on the "save" image
	And the test pauses for "4" seconds
	And I press "F8"
	And the test pauses for "4" seconds

	And in the "Certification" page I should see the "Auth Number" authorization number and print it to the error report

	And I press "Control + Q"
	And the test pauses for "5" seconds
	And I press ENTER graphically
	And the test pauses for "5" seconds
	And I close "Internet Explorer"

	Examples:
| requested_date  | military_date             | other_reference_# |	member_id    | member_first_name |	member_last_name | practice_name            | requesting_provider_id  |	requesting_provider_first_name  | requesting_provider_last_name  | requesting_provider_npi_# |	facility_name        | servicing_provider_id |	provider_facility_npi |	servicing_provider_name	  | servicing_provider_npi_# |	sub_class               | sub_class_code | type              |	type_code |	servicing_provider_first_name |	servicing_provider_last_name  | status_date |	status   |	health_plan                | source     |	status_reason        |  auth_class | authorized_date | expiration_date | priority | aco_type_and_payment | eis_aa | adm        | auth_for_payment                              | days_used_prior | dc         | denc_date  | mds_date   | nomnc_date | total_days | total_skilled_days | final_reimb_amt | amisys_auth_number | add_drug_doses | add_drug_reimb | dischrg_date | final_reimb_amt_2 | per_diem_lvl_1 | per_diem_lvl_2 | total_days | total_per_diem    | auth_type         | auth_status    |	auth_number |	diagnosis_code                |	diagnosis                    	|	diagnosis_type |	auth_modified_date | auth_admission_date   | auth_discharge_date | service_code          | service_description                                                | service_type |	qty_appr |	qty_reqd  |	determination |	auth_approval_days | service_type   |	service_type_code  | notes                | blank_01 | blank_02  | qty |
| 08152017 | 2017-08-15T08:34:40+00:00 |  | 000103044-01 | Floyd | Morrison | COMMUNITY HSPIST LLC | 943106 | AMANDA L | SLATER | 1770844367 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08122017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815095 | N179, R000, R600 | Localized edema | ICD10 | 08182017 | 08122017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08022017 | 2017-08-02T08:59:31+00:00 |  | 000072825-01 | Margaret | Lemaster | COMMUNITY HSPIST LLC | 947378 | MATTHEW D | CAMPOS | 1366785503 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08012017 | 08082017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170802073 | I110, J9600, R109 | Unspecified abdominal pain | ICD10 | 08182017 | 08012017 | 08082017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08182017 | 2017-08-18T09:47:33+00:00 |  | 000003390-01 | CECILIA | GUZZO | ORTHOPEDIC ONE INC | 905358 | BRYAN T | CHAMBERS | 1497798375 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Pre-Service | PRE |  | MOUNT CARMEL ST ANNS HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Fax | Pending Admission | Inpatient | 10022017 | 11022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Pre-Service | Approved | A170818056 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08182017 |  |  | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 32 | CPT | C4 |  |  | No child records to display. |  |
| 08142017 | 2017-08-14T12:31:14+00:00 | 256450347225 | 000058151-01 | MARCELLA | MAY | COPC CENTRAL OHIO PRIMAR | 911536 | ROBERT J | ZSOLDOS | 1841416179 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08132017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814067 | N179 | Acute kidney failure, unspecified | ICD10 | 08182017 | 08132017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08142017 | 2017-08-14T09:29:35+00:00 | 253814677225 | 000114032-01 | Roy | Bradley | V GEORGE ZOCHOWSKI DO IN | 935100 | V GEORGE | ZOCHOWSKI | 1912909268 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | Flexible Choice PPO | Reports | Inpatient | Inpatient | 08132017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814012 | K7200 | Acute and subacute hepatic failure without coma | ICD10 | 08182017 | 08132017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07202017 | 2017-07-20T10:54:32+00:00 |  | 000108688-01 | JANEAN | BROWN | CHRIST HSP ORTHO ASSOC I | 946282 | MARK S | true | 1902881261 | THE CHRIST HOSPITAL | 936476 | 1780633289 | THE CHRIST HOSPITAL | 1780633289 | Inpatient | IP | Concurrent Review | CONC |  | THE CHRIST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 07312017 | 08022017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170720066 | T84032A | Mech loosening of internal right knee prosthetic joint, init | ICD10 | 08182017 | 07312017 | 08022017 | 27487 | SECONDARY RECONSTRUCT/REV TOT KNEE | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08182017 | 2017-08-18T08:35:11+00:00 |  | 000099440-01 | Leonard | Sutton | CEN OH UROLOGY GRP INC | 936997 | PAUL N | KAUFMAN | 1215908074 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818004 | C678 | Malignant neoplasm of overlapping sites of bladder | ICD10 | 08182017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 01302017 | 2017-01-30T09:36:31+00:00 |  | 000081845-01 | Rodney | Goff | OSU INTERNAL MED LLC | 911011 | GARRIE J | HAAS | 1104858018 | OSU HOSPITAL | 936446 | 1447359997 | THE OH STATE UNIVERSITY HOSPITAL | 1447359997 | Inpatient | IP | Concurrent Review | CONC |  | THE OH STATE UNIVERSITY HOSPITAL | 08192017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 01262017 | 06112017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170201014 | I429 | Cardiomyopathy, unspecified | ICD10 | 08192017 | 01262017 | 06112017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07272017 | 2017-07-27T11:44:20+00:00 |  | 000108108-01 | Judith | Trout | OH GASTRO GRP INC | 937359 | THOMAS C | RANSBOTTOM | 1043204381 | RIVERSIDE METHODIST HSP | 936400 | 1467484972 | RIVERSIDE METHODIST HOSPITAL | 1467484972 | Inpatient | IP | Concurrent Review | CONC |  | RIVERSIDE METHODIST HOSPITAL | 08182017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 07252017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170727043 | C569 | Malignant neoplasm of unspecified ovary | ICD10 | 08182017 | 07252017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 22.0 |
| 08092017 | 2017-08-09T16:47:49+00:00 |  | 000092553-01 | Danny | Dunlavy | APOGEE MED GRP OHIO INC | 947863 | SARAH | KHAN | 1336481670 | COMMUNITY MERCY HEALTH P | 906699 | 1144286402 | SPRINGFIELD REGIONAL MEDICAL CENTER | 1144286402 | Inpatient | IP | Concurrent Review | CONC |  | SPRINGFIELD REGIONAL MEDICAL CENTER | 08182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08082017 | 08122017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810026 | I313 | Pericardial effusion (noninflammatory) | ICD10 | 08182017 | 08082017 | 08122017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08162017 | 2017-08-16T15:43:35+00:00 |  | 000048516-01 | JANET | OGDEN | UNKNOWN PROVIDER | 999999 |  | UNKNOWN PROVIDER | 0 | UNKNOWN PROVIDER | 999999 | 0 | UNKNOWN PROVIDER | 0 | Inpatient | IP | Concurrent Review | CONC |  | UNKNOWN PROVIDER | 08182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817010 | N390 | Urinary tract infection, site not specified | ICD10 | 08182017 | 08152017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08152017 | 2017-08-15T09:22:39+00:00 | 251755367226 | 000011228-01 | BARBARA | HOFFMAN | MOUNT CARMEL HLTH PRVDRS | 937379 | MARK | RICAURTE | 1669442091 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Reports | ACO - Pulmonary | Inpatient | 08142017 | 08182017 | Standard | Pulmonary - $4,007 |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815009 | R0902 | Hypoxemia | ICD10 | 08182017 | 08142017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08092017 | 2017-08-09T14:27:48+00:00 |  | 000083667-01 | Vernon | Schoeppner | SOUND PHYSICIANS OF OHI | 909480 | JINHONG | XING | 1841464369 | SOUTHEASTERN OHIO REGION | 920580 | 1346247350 | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 1346247350 | Inpatient | IP | Concurrent Review | CONC |  | SOUTHEASTERN OH REGIONAL MEDICAL CTR | 08182017 | Approved | MediGold Southeast OH Essential Care | Fax | Inpatient | Inpatient | 08092017 | 08142017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809067 | M84359S, R296 | Repeated falls | ICD10 | 08182017 | 08092017 | 08142017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 07252017 | 2017-07-25T14:29:53+00:00 |  | 000057422-01 | ELIZABETH | JONES | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08162017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725090 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08182017 | 08142017 | 08162017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 08102017 | 2017-08-10T09:28:36+00:00 | 174715877221 | 000112350-01 | Eleanor | Sanford | SOUND PHYSICIANS OF OHI | 923291 | BASHAR | ALAWAD | 1396024121 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08092017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810020 | R531 | Weakness | ICD10 | 08182017 | 08092017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 8.0 |
| 08162017 | 2017-08-16T08:09:29+00:00 |  | 000023413-01 | RICHARD | THEADO | MADISON FAMILY HEALTH | 935986 | ADAM C | WEISER | 1023059680 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816001 | R339 | Retention of urine, unspecified | ICD10 | 08182017 | 08152017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
| 08092017 | 2017-08-09T15:02:23+00:00 |  | 000055707-01 | RONALD | MCKNIGHT | MOUNT CARMEL HLTH PRVDRS | 942780 | MICHAEL P | GIBSON | 1821055732 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08012017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809068 | I4891 | Unspecified atrial fibrillation | ICD10 | 08182017 | 08012017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 17.0 |
| 08112017 | 2017-08-11T10:00:23+00:00 |  | 000065594-01 | LARRY | MCCONKEY | MOUNT CARMEL HLTH PRVDRS | 949685 | JAMES A | OBNEY | 1780694505 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811029 | I2510 | Athscl heart disease of native coronary artery w/o ang pctrs | ICD10 | 08182017 | 08152017 | 08182017 | 33533 | CORONARY ARTERY BYPASS, SINGLE GRAFT | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08162017 | 2017-08-16T08:36:18+00:00 | 263902247227 | 000043948-01 | BARRY | BRANDT | SOUND PHYSICIANS OF OHI | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08152017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170816009 | N179 | Acute kidney failure, unspecified | ICD10 | 08182017 | 08152017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08102017 | 2017-08-10T12:37:54+00:00 |  | 000091904-01 | Norma Jeann | Dluzen | ARBOR VIEW FAM MED INC | 934801 | RICHARD B | SIELSKI | 1023080298 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08092017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810060 | S72002A | Fracture of unsp part of neck of left femur, init | ICD10 | 08182017 | 08092017 | 08152017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 6.0 |
| 08142017 | 2017-08-14T10:18:45+00:00 |  | 000114039-01 | James | Sturgeon | OHIOHEALTH PHYS GRP | 932197 | MICHELLE Y | KINCAID | 1396943601 | GRANT MEDICAL CENTER | 936409 | 1255377149 | GRANT MEDICAL CENTER | 1255377149 | Inpatient | IP | Concurrent Review | CONC |  | GRANT MEDICAL CENTER | 08182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08132017 | 08152017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814112 | S02411A | LeFort I fracture, initial encounter for closed fracture | ICD10 | 08182017 | 08132017 | 08162017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08142017 | 2017-08-14T10:18:08+00:00 |  | 000089326-01 | Benjamin | Smith | GENESIS MEDICAL GRP LLC | 945643 | GRETCHEN L | WEBER | 1083848097 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814110 | K810 | Acute cholecystitis | ICD10 | 08182017 | 08142017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 3.0 |
| 08152017 | 2017-08-15T07:15:36+00:00 |  | 000007061-01 | DELORES | CLARK | MOUNT CARMEL HLTH SYS | 934732 | PHILIP H | SANTA EMMA | 1104867464 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Essential Care | Reports | Secondary Only | Inpatient | 08142017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815001 | K623 | Rectal prolapse | ICD10 | 08182017 | 08142017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 07252017 | 2017-07-25T14:40:23+00:00 |  | 000083357-01 | Patricia | Hall | RIVER VALLEY ORTHOS & SP | 901115 | MARK M | D ONOFRIO | 1316925811 | FAIRFIELD MEDICAL CENTER | 936439 | 1467433763 | FAIRFIELD MEDICAL CENTER | 1467433763 | Inpatient | IP | Concurrent Review | CONC |  | FAIRFIELD MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | Inpatient | Inpatient | 08142017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170725091 | M1712 | Unilateral primary osteoarthritis, left knee | ICD10 | 08182017 | 08142017 | 08172017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08152017 | 2017-08-15T14:39:11+00:00 |  | 000059583-01 | CHARLES | OTIS | HOLLAND, GREGORY C | 936925 | GREGORY C | HOLLAND | 1316991268 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Fax | EIS | Inpatient | 08172017 | 08182017 | Expedited |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170815084 | C61, L0591 | Pilonidal cyst without abscess | ICD10 | 08182017 | 08172017 | 08182017 | 11772, 15738 | MUSCLE, MYOCUTANEOUS, OR FASCIOCUTANEOUS FLAP; LOWER EXTREMITY | CPT | 1, 1 | 1, 1 | Approved, Approved | 2, 2 | CPT | C4 |  |  |  | 1.0 |
| 08182017 | 2017-08-18T08:09:07+00:00 |  | 000083025-01 | Susan | Colann | COLS OB GYN INC | 927216 | JUSTIN R | WEPRIN | 1871776831 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08162017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170818001 | N950 | Postmenopausal bleeding | ICD10 | 08182017 | 08162017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 1.0 |
| 08142017 | 2017-08-14T08:27:56+00:00 |  | 000077275-01 | Donald | Chamberlain | AIJAZ AHMED MD | 920617 |  | AIJAZ AHMED MD | 1174698740 | MERCY MEMORIAL HOSPITAL - CAH | 902498 | 1144286352 | MERCY MEMORIAL HOSPITAL - CAH | 1144286352 | Inpatient | IP | Concurrent Review | CONC |  | MERCY MEMORIAL HOSPITAL - CAH | 08182017 | Approved | MediGold Southwest OH Classic Preferred | Fax | Inpatient | Inpatient | 08132017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814090 | A419, C329, R509 | Fever, unspecified | ICD10 | 08182017 | 08132017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 4.0 |
| 08102017 | 2017-08-10T09:32:24+00:00 |  | 000075284-01 | Jack | Wise | GENESIS MEDICAL GRP LLC | 921922 | STEVEN H | KIMBERLY | 1851383137 | GENESIS HLTHCARE SYSTEM | 936421 | 1598868655 | GENESIS HEALTHCARE SYSTEM | 1598868655 | Inpatient | IP | Concurrent Review | CONC |  | GENESIS HEALTHCARE SYSTEM | 08182017 | Approved | MediGold Southeast OH Classic Preferred | Fax | Inpatient | Inpatient | 08152017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170810035 | M1611 | Unilateral primary osteoarthritis, right hip | ICD10 | 08182017 | 08152017 | 08172017 | 27130 | CHARN MILLER TTL HIP ARTHROPLASTY | CPT | 1 | 1 | Approved | 3 | CPT | C4 |  |  |  | 2.0 |
| 07062017 | 2017-07-06T09:16:48+00:00 |  | 000114843-01 | Brenda | Cooper | ORTHO & SPORTS MED CTR I | 927551 | STEPHEN T | OLSON | 1124247887 | MADISON COUNTY HOSPITAL | 936491 | 1982710703 | MADISON COUNTY HOSPITAL | 1982710703 | Inpatient | IP | Concurrent Review | CONC |  | MADISON COUNTY HOSPITAL | 08182017 | Approved | MediGold Essential Care | Fax | Inpatient | Inpatient | 08072017 | 08102017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170706013 | M1711 | Unilateral primary osteoarthritis, right knee | ICD10 | 08182017 | 08072017 | 08102017 | 27447 | ARTHROPLASTY KNEE(TOTAL KNEE) | CPT | 1 | 1 | Approved | 4 | CPT | C4 |  |  |  | 3.0 |
| 08112017 | 2017-08-11T10:21:22+00:00 | 252549887222 | 000034189-01 | CHERYL | WHIRRETT | COLS INPATIENT CARE INC | 937585 |  | COLS INPATIENT CARE INC | 1467430801 | MOUNT CARMEL MEDICAL CTR | 920184 | 1710067376 | MOUNT CARMEL MEDICAL CENTER | 1710067376 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL MEDICAL CENTER | 08182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08102017 | 08172017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170811021 | E860 | Dehydration | ICD10 | 08182017 | 08102017 | 08172017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 7.0 |
| 08142017 | 2017-08-14T10:24:05+00:00 | 251836407225 | 000094411-01 | Lovell | Harper | SOUND PHYSICIANS OF OHI | 943800 | GEORGE | SHU | 1306104591 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Essential Care | Reports | Inpatient | Inpatient | 08132017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170814034 | J9620 | Acute and chr resp failure, unsp w hypoxia or hypercapnia | ICD10 | 08182017 | 08132017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 5.0 |
| 08092017 | 2017-08-09T09:15:10+00:00 | 250792577220 | 000012281-01 | Mary | Maynard | SOUND INPATIENT PHYS OF | 911533 |  | SOUND INPATIENT PHYSICIANS OF OH LLC | 1376876755 | MOUNT CARMEL EAST HOSPITAL | 936416 | 1982784534 | MOUNT CARMEL EAST HOSPITAL | 1982784534 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL EAST HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | Inpatient | Inpatient | 08082017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170809010 | K523 | INDETERMINATE COLITIS | ICD10 | 08182017 | 08082017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 10.0 |
| 08172017 | 2017-08-17T10:43:08+00:00 | 256588387228 | 000042549-01 | CHARLENE | MYERS | SOUND KENWOOD HSPISTS OF | 932738 | SRIKANTH | KESARI | 1932487337 | MOUNT CARMEL ST ANNS HOSPITAL | 920157 | 1417037045 | MOUNT CARMEL ST ANNS HOSPITAL | 1417037045 | Inpatient | IP | Concurrent Review | CONC |  | MOUNT CARMEL ST ANNS HOSPITAL | 08182017 | Approved | MediGold Classic Preferred | Reports | EIS | Inpatient | 08162017 | 08182017 | Standard |  |  |  |  | 0 |  |  |  |  | 0 | 0 |  |  |  |  |  |  |  |  |  |  | Concurrent Review | Approved | A170817024 | R296 | Repeated falls | ICD10 | 08182017 | 08162017 | 08182017 |  |  |  | 0 | 0 |  | 0 |  |  |  |  |  | 2.0 |
